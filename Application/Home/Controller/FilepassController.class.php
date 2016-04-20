<?php
namespace Home\Controller;
use Think\Controller;

class FilepassController extends BaseController{

	//默认
	public function index(){
		$this -> display('receiveFile');
	}

	//新建传阅
	public function newFile(){
		// echo uniqid(); depend_id专用唯一性标识函数
		//实例化users表
		$tb_users = M('personal_users');
		$uid = $_SESSION['home']['uid'];
		if(IS_POST){
			if(!isset($_POST['users'])){
				$this -> error('你还没有添加收件人！');
			}
			//写数据入主表
			$tb_fpas = M('filepass_circulate');
			$data['sender_id'] = $uid;
			$data['sender'] = $tb_users	-> where(array('id'=>$data['sender_id']))
										-> find()['truename'];
			$data['title'] = I('post.title');
			$data['status'] = I('post.share');
			$data['content'] = $_POST['content'];
			$data['state'] = 2;
			$data['sendtime'] = date('Y-m-d H:i:s');
			$pid = $tb_fpas -> add($data);

			//附属表及收件表
			if($pid){
				// 写入附件表
				if($_FILES['files']['error'][0] == 0){
					$tb_fca = M("filepass_circulate_attachment");
					$attachs = null;

					foreach ($_FILES['files'] as $key => $value) {
						foreach ($value as $k => $v) {
							$attachs[$k][$key] = $value[$k];
						}
					}
					$config = array(   
							'maxSize'    =>   	3145728,    
							'savePath'   =>    	'/Files/', 
							'rootPath'   => 	'./Public',
							'saveName'   =>    	array('uniqid'),    
							'exts'       =>    	[],  
							'mimes'      => 	[],
							'autoSub'    =>    	true,   
							'subName'    =>    	array('date','Ymd'),
							);
					$upload = new \Think\Upload($config);
					$files = null ;
					//上传文件的id数组
					$atta_num = null;
					foreach ($attachs as $k=>$_FILES['file']){
						$files[] = $upload -> upload();
						if($files){
							$data = null;
							$data['file_type'] = $files[$k]['file']['type'];
							$data['file_size'] = $files[$k]['file']['size'];
							$data['file_name'] = $files[$k]['file']['name'];
							$data['file_storge_name'] = $files[$k]['file']['savename'];
							$data['file_url'] = trim($files[$k]['file']['savepath'].$data['file_storge_name'],'/');
							$data['file_ctime'] = date("Y-m-d H:i:s");
							$data['attachment_pid'] = $pid;
							$tb_fca -> create($data);
							$atta_num[] = $tb_fca -> add();
						}else{
							$this->error($upload->getError());
						}					
					}
				}
				//写入收件表
				$rece_num = null;
				$tb_fci = M('filepass_circulate_idea');
				foreach ($_POST['users'] as $v) {
					$data= null;
					$data['pid'] = $pid;
					$data['receiver_id'] = $v;
					$data['receiver'] = $tb_users -> where(array('id'=>$v))
												-> find() ['truename'];
					$data['read_ok'] = 2;
					$data['reply_ok'] = 2;
					$tb_fci -> create($data);
					$rece_num[] = $tb_fci -> add();
				}
				
				//将字表字段补入主表
				$attachment_ids = trim(implode(',',$atta_num),',');
				$idea_ids = trim(implode(',',$rece_num),',');
				$gen = $tb_fpas	-> where(array('id'=>$pid))
								-> save(array('idea_ids'=>$idea_ids,'attachment_ids'=>$attachment_ids));
				
				if($gen){
					$this -> success('发送传阅成功！',U('Home/Filepass/sendFile'),2);					
				}
			}else{
				$this -> error('发送传阅失败！');				
			}
			die;
		}
		$where['id'] = array('neq',$uid);
		$users = $tb_users 	-> field('id,truename')
							-> where($where)
							-> select();
		// var_dump($users);
		$this -> assign('users',$users);
		$this -> display();
	}

	//收件箱
	public function receiveFile(){
		//提取数据
		$tb_fpas = M("filepass_circulate_idea");
		$uid = $uid = $_SESSION['home']['uid'];
		$sort = ($_GET['status'] == 1) || !isset($_GET['status'])?'desc':"asc";

		if(!empty($_GET['keyword'])){
            $where["efc.title|efc.content|efc.sender"]=array('like','%'.$_GET['keyword'].'%');
        }
        $where['efci.receiver_id'] = $uid;
        $where['efci.read_ok'] = array('lt',3);
		$count  =$tb_fpas->table('epm_filepass_circulate_idea as efci')
						-> join('left join epm_filepass_circulate as efc on efc.id = efci.pid')
						-> where($where)
						-> count();// 查询满足要求的总记录数
		
		$Page = new \Think\Page($count,8);
        $show = $Page -> show();
		$list = $tb_fpas-> table('epm_filepass_circulate_idea as efci')
						-> field('efc.id as id,efci.id as sid,efc.title,efc.content,efc.sendtime,efc.sender,efc.attachment_ids,efci.read_ok,efci.reply_ok')
						-> join('left join epm_filepass_circulate as efc on efc.id = efci.pid')
						-> where($where)
						-> order('efc.sendtime '.$sort)
						-> limit($Page->firstRow.','.$Page->listRows)
						-> select();
		
		$this -> assign('list',$list);
		$this -> assign('page',$show);
		$this -> display();
	}

	//发件箱
	public function sendFile(){
		//提取数据
		$tb_fpas = M("filepass_circulate");
		$uid = $uid = $_SESSION['home']['uid'];
		$sort = ($_GET['status'] == 1) || !isset($_GET['status'])?'desc':"asc";

		if(!empty($_GET['keyword'])){
            $where["title|content|sender"]=array('like','%'.$_GET['keyword'].'%');
        }

        $where['sender_id'] = $uid;
        $where['state'] = array('lt',3);
		$count  =$tb_fpas-> where($where)
						-> count();// 查询满足要求的总记录数
		
		$Page = new \Think\Page($count,8);
        $show = $Page -> show();
		$list = $tb_fpas-> where($where)
						-> order('sendtime '.$sort)
						-> limit($Page->firstRow.','.$Page->listRows)
						-> select();
		//重组list数组
		$tb_fci = M("filepass_circulate_idea");				
		foreach($list as $k=>$v){
			//初始化计数器
			$read_ok_num = 0;
			$reply_ok_num = 0;
			if(!(is_null($v['idea_ids']) || $v['idea_ids'] === "")){
				$ids = explode(',',$v['idea_ids']);
				
				foreach ($ids as $id) {
					$data = $tb_fci -> field("read_ok,reply_ok")
									-> where(array('id'=>$id))
									-> find();
					if($data['read_ok'] != '2'){
						$read_ok_num++;
					}
					if($data["reply_ok"] == '1'){
						$reply_ok_num++;
					}
				}
			}
			$list[$k]["read_ok_num"] = $read_ok_num;
			$list[$k]["reply_ok_num"] = $reply_ok_num;
		}
		$this -> assign('list',$list);
		$this -> assign('page',$show);
		$this -> display();
	}

	//垃圾箱
	public function trash(){
		//提取发件人等于当前用户的数据
		$tb_fpas = M("filepass_circulate");
		$uid = $uid = $_SESSION['home']['uid'];
		// $sort = ($_GET['status'] == 1) || !isset($_GET['status'])?'desc':"asc";

		// if(!empty($_GET['keyword'])){
  //           $where["title|content|sender"]=array('like','%'.$_GET['keyword'].'%');
  //       }
        $where['sender_id'] = array('eq',$uid);
        $where['state'] = array('eq',3);
        $list1 = $tb_fpas->field('title,sendtime,sender,id')
        				-> where($where)
        				-> select();
        //提取收件人等于当前用户的数据
        $where = null;
        $where['efci.receiver_id'] = array('eq',$uid);
        $where['efci.read_ok'] = array('eq',3);
		$list2 = $tb_fpas
					-> table('epm_filepass_circulate as efc')
					-> field('efc.title,efc.sendtime,efc.sender,efci.id as sid')
					-> join("right join epm_filepass_circulate_idea as efci on efci.pid = efc.id")
					-> where($where)
					// -> order('efc.sendtime '.$sort)
					// -> limit($Page->firstRow.','.$Page->listRows)
					-> select();
		if($list1){
			if($list2){
				$list = array_merge($list1,$list2);
			}else{
				$list = $list1;
			}
		}else{
			if($list2){
				$list = $list2;
			}else{
				$list = null;
			}
		}
		// var_dump($list);
		$count  = count($list);
		// $count  = 30;

		$Page = new \Think\Page($count,8);
		$show = $Page -> show();
		//重组list数组
		// $tb_fci = M("filepass_circulate_idea");				
		// foreach($list as $k=>$v){
		// 	//初始化计数器
		// 	$read_ok_num = 0;
		// 	$reply_ok_num = 0;
		// 	if(!(is_null($v['idea_ids']) || $v['idea_ids'] === "")){
		// 		$ids = explode(',',$v['idea_ids']);
				
		// 		foreach ($ids as $id) {
		// 			$data = $tb_fci -> field("read_ok,reply_ok")
		// 							-> where(array('id'=>$id))
		// 							-> find();
		// 			if($data['read_ok'] == '1'){
		// 				$read_ok_num++;
		// 			}
		// 			if($data["reply_ok"] == '1'){
		// 				$reply_ok_num++;
		// 			}
		// 		}
		// 	}
		// 	$list[$k]["read_ok_num"] = $read_ok_num;
		// 	$list[$k]["reply_ok_num"] = $reply_ok_num;
		// }
		// $this -> assign('list1',$list1);
		// $this -> assign('list2',$list2);
		$this -> assign('list',$list);
		$this -> assign('page',$show);
		$this -> display();
	}


/*收件箱附属功能   开始*/

	//删除收件箱信件到垃圾箱操作
	public function deltrash(){
		
		if(IS_GET){
			//提取并检验id合法性
			$id = I('get.sid','-1','int');
			$tb_fpas = M("filepass_circulate_idea");
			$uid = $_SESSION['home']['uid'];
			$gen = $tb_fpas -> where(array('id'=>$id,'receiver_id'=>$uid))
							-> save(array('read_ok'=>"3"));

			if($gen){
				$this -> success('删除操作成功！');
			}else{
				$this -> error('删除操作失败！');
			}
		}
	}

	//批量将收件箱信件扔入垃圾箱
	public function deal(){
		if(IS_AJAX){
			$uid = $_SESSION['home']['uid'];
			$tb_fpas = M("filepass_circulate_idea");
			$ids = $_POST['ids'];
			$gens = null;
			foreach ($ids as $id) {
				if(is_numeric($id)){
					$gens = $tb_fpas-> where(array('id'=>$id,'receiver_id'=>$uid))
									-> save(array('read_ok'=>"3"));
				}	
			}
			if($gens){
				$this -> ajaxReturn(1);
			}else{
				$this -> ajaxReturn(0);
			}			
		}
	}

	public function receiveView(){
		if(IS_GET){
			//输出发件信息
			$tb_fci = M("filepass_circulate_idea");
			//修改查看状态
			$uid = $_SESSION['home']['uid'];
	        $where['efci.receiver_id'] = $uid;
	        $where['efci.id'] = I('get.sid');
	        $data['read_ok'] = '1';
	        //修改接收时间
	        $gen = $tb_fci	-> table("epm_filepass_circulate_idea as efci")
	        				-> where($where)
	        				-> find();
	        if(is_null($gen["receivetime"]) || $gen["receivetime"] === ''){
	        	$data['receivetime']=date('Y-m-d H:i:s');
	        }
	        $tb_fci	-> table("epm_filepass_circulate_idea as efci")
	        		-> where($where)
	        		-> save($data);
	        //读取主表数据返显内容
			$list = $tb_fci -> table('epm_filepass_circulate_idea as efci')
							-> field('efc.id as id,efci.id as sid,efc.title,efc.content,efc.sendtime,efc.sender,efc.attachment_ids,efc.idea_ids,efc.status,efci.read_ok,efci.reply_ok,efci.idea')
							-> join('left join epm_filepass_circulate as efc on efc.id = efci.pid')
							-> where($where)
							-> select()[0];
			//输出附件信息
			if(!(is_null($list['attachment_ids']) || $list['attachment_ids'] === "")){
				$tb_sub_file = M("filepass_circulate_attachment");
				$atta_ids = explode(',',$list['attachment_ids']);
				$downloads = null;
				foreach ($atta_ids as $fid) {
					$downloads[] = $tb_sub_file -> field('file_name,id,file_url')
												-> where(array('id'=>$fid))
												-> find();
				}	
			}else{
				$downloads = null;
			}
			//输出共享/非共享回复信息
			if(!(is_null($list['idea_ids']) || $list['idea_ids'] === "")){
				
				$replylist = null;
				$reply_ids = explode(',',$list['idea_ids']);

				foreach ($reply_ids as $fid) {
					if($list['status']=='2'){
						$replylist[] = $tb_fci-> where(array('id'=>$fid))
													-> find();
					}else{
						$gen = $tb_fci	-> where(array('id'=>$fid,'receiver_id'=>$uid))
															-> find();
						if($gen !== false){
							$replylist[] = $gen;
							break;
						}	
					}
				}	
			}			
			$this -> assign('list',$list);
			$this -> assign('downloads',$downloads);
			$this -> assign('replylist',$replylist);
		}
		
		$this -> display();
	}

	//回复邮件
	public function reply(){
		if(IS_POST){
			$tb_fci = M("filepass_circulate_idea");
			$id = I("post.sid");
			$data['idea'] = $_POST['content2'];
			$data['reply_ok'] = '1';
			$gen = $tb_fci 	-> where(array("id"=>$id))
							-> save($data);
			if($gen){
				$this -> success("提交成功！",U('Home/Filepass/receiveFile'),2);
			}else{
				$this -> error("提交失败！",U('Home/Filepass/receiveView?sid='.$id),3);
			}
		}
	}

	//下载文件
	public function downLoad(){
		$id = I("get.fid",'-1','int');
		$tb_fca = M("filepass_circulate_attachment");
		$data = $tb_fca	-> where(array("id"=>$id))
						-> find();
		
		if($data === false){
			$this -> error("下载失败！");
			exit;
		}else{
			// $filename = __ROOT__.'/Public/'.$data['file_url'];
			// $filename = '../../../Public/'.$data['file_url'];
			$filename =  'HTTP://'.$_SERVER['HTTP_HOST'].__ROOT__.'/Public/'.$data['file_url'];
			header('Content-type:'.$data['file_type']);
			// It will be called downloaded.pdf
			header('Content-Disposition: attachment; filename='.$data['file_name']);
			header("Content-Length: ".$data["file_size"]);
			// The PDF source is in original.pdf
			readfile($filename);
		}
		// $this -> redirect('Home/Filepass/receiveView',array('sid'=>$_GET['id']),5,'页面跳转中...');

	}
/*收件箱附属功能   结束*/


/*发件箱附属功能   开始*/
	//删除发件箱信件到垃圾箱操作
	public function del_trash(){
		
		if(IS_GET){
			//提取并检验id合法性
			$id = I('get.sid','-1','int');
			$tb_fpas = M("filepass_circulate");
			$uid = $_SESSION['home']['uid'];
			$gen = $tb_fpas -> where(array('id'=>$id,'sender_id'=>$uid))
							-> save(array('state'=>"3"));

			if($gen){
				$this -> success('删除操作成功！');
			}else{
				$this -> error('删除操作失败！');
			}
		}
	}

	//批量将发件箱信件扔入垃圾箱
	public function deal_rece(){
		if(IS_AJAX){
			$uid = $_SESSION['home']['uid'];
			$tb_fpas = M("filepass_circulate");
			$ids = $_POST['ids'];
			$gens = null;
			foreach ($ids as $id) {
				if(is_numeric($id)){
					$gens = $tb_fpas-> where(array('id'=>$id,'sender_id'=>$uid))
									-> save(array('state'=>"3"));
				}	
			}
			if($gens){
				$this -> ajaxReturn(1);
			}else{
				$this -> ajaxReturn(0);
			}		
		}
	}

	//发件箱查看功能
	public function sendView(){
		if(IS_GET){
			//输出发件信息
			$tb_fci = M("filepass_circulate");
			//修改查看状态
			$uid = $_SESSION['home']['uid'];
	        $where['sender_id'] = $uid;
	        $where['id'] = I('get.id');

	        //修改接收时间
	        $list = $tb_fci	-> where($where)
	        				-> find();
			//输出附件信息
			if(!(is_null($list['attachment_ids']) || $list['attachment_ids'] === "")){
				$tb_sub_file = M("filepass_circulate_attachment");
				$atta_ids = explode(',',$list['attachment_ids']);
				$downloads = null;
				foreach ($atta_ids as $fid) {
					$downloads[] = $tb_sub_file -> field('file_name,id')
												-> where(array('id'=>$fid))
												-> find();
				}	
			}else{
				$downloads = null;
			}
			//输出共享/非共享回复信息
			if(!(is_null($list['idea_ids']) || $list['idea_ids'] === "")){
				$tb_sub_reply = M("filepass_circulate_idea");
				$replylist = null;
				$reply_ids = explode(',',$list['idea_ids']);

				foreach ($reply_ids as $fid) {
					$replylist[] = $tb_sub_reply-> where(array('id'=>$fid))
												-> find();	
				}	
			}
			$this -> assign('list',$list);
			$this -> assign('downloads',$downloads);
			$this -> assign('replylist',$replylist);
		}
		$this -> display();
	}
/*发件箱附属功能   结束*/

/*垃圾箱附属功能   开始*/
	//删除操作
	public function forDel(){
		
		if(IS_GET){
			if($id = I('get.id','0','int')){
				$tb_fpas = M("filepass_circulate");
				$tb_fca = M("filepass_circulate_attachment");
				$tb_fci = M("filepass_circulate_idea");
				$sub_ids = $tb_fpas -> field('idea_ids,attachment_ids')
									-> where(array('id'=>$id))
									-> find();

				if($sub_ids['idea_ids'] != ''){
					$idea_ids = explode(',',trim($sub_ids['idea_ids'],','));
					foreach ($idea_ids as $v) {
						$tb_fci -> where(array('id'=>$v))
								-> delete();
						
					}
				}

				if($sub_ids['attachment_ids'] != ''){
					$attch_ids =  explode(',',trim($sub_ids['attachment_ids'],','));
					foreach ($attch_ids as $v) {
						$tb_fca -> where(array('id'=>$v))
								-> delete();
						
					}
				}
								
				$gen = $tb_fpas -> where(array('id'=>$id))		
								-> delete();
			}

			if($id = I('get.sid','0','int')){

				$tb_fci = M("filepass_circulate_idea");
				$par_id = $tb_fci -> field('pid')
								-> where(array('id'=>$id))		
								-> find()['pid'];
				
				$tb_fpas = M("filepass_circulate");
				$sub_ids = $tb_fpas -> field('idea_ids,attachment_ids')
									-> where(array('id'=>$par_id))
									-> find();
				if($sub_ids['idea_ids'] != ''){
					$idea_ids = explode(',',trim($sub_ids['idea_ids'],','));
					if(count($idea_ids) > 1){
						//去掉要删除的收件人信息
						foreach($idea_ids as $k=>$v){
							if($v == $id){
								unset($idea_ids[$k]);
							}
						}
						$idea_ids = trim(implode(',', $idea_ids),',');
						$tb_fpas->  where(array('id'=>$par_id))
								->  save(array('idea_ids'=>$idea_ids));
					}else{
						//删除主表及附件信息
						$tb_fpas = $tb_fpas -> where(array('id'=>$par_id))
											-> delete();
						$tb_fca = M("filepass_circulate_attachment");
						//查询附件表附件资源路径
						/*。。。。*/

						if($sub_ids['attachment_ids'] != ''){
							$attch_ids =  explode(',',trim($sub_ids['attachment_ids'],','));
							foreach ($attch_ids as $v) {
								$tb_fca -> where(array('id'=>$v))
										-> delete();
							}							
						}
						//删除附件资源文件
						/*。。。。*/
					}
					
				}
				$gen = $tb_fci 	-> where(array('id'=>$id))
								-> delete();
			}

			if($gen){
				$this -> success('删除成功！');
			}else{
				$this -> error('删除失败！');
			}
		}

	}

	public function cycle(){
		if(IS_GET){
			if($id = I('get.id','0','int')){
				$tb_fpas = M("filepass_circulate");
				$data['state'] = 2;
				$gen = $tb_fpas -> where(array('id'=>$id))		
								-> save($data);
			}

			if($id = I('get.sid','0','int')){
				$tb_fpas = M("filepass_circulate_idea");
				$data['read_ok'] = 1;
				$gen = $tb_fpas -> where(array('id'=>$id))		
								-> save($data);
			}

			if($gen){
				$this -> success('还原成功！');
			}else{
				$this -> error('还原失败！');
			}
		}
	}

	
/*垃圾箱附属功能   结束*/
}