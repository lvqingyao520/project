<?php

namespace Home\Controller;
use Think\Controller;

class MsgsystemController extends BaseController{

	//默认index
	public function index(){
		$this -> display(msgWait);
	}

	//代办消息
	public function msgWait(){
		
		//提取数据
		$tb_user = M("personal_users");
		$tb_msg = M("msgsystem_message");
		$uid = $uid = $_SESSION['home']['uid'];
		$sort = $_GET['status'] == 2?'asc':"desc";

		if(!empty($_GET['keyword'])){
            $where["title|process"]=array('like','%'.$_GET['keyword'].'%');
        }
        $where['status'] = 2;
        $where['receiver_id'] = $uid;
		$count  =$tb_msg->where($where)
						->count();// 查询满足要求的总记录数
		
		$Page = new \Think\Page($count,8);
        $show = $Page -> show();
		$list = $tb_msg -> where($where)
						-> order('ctime '.$sort)
						-> limit($Page->firstRow.','.$Page->listRows)
						-> select();

		$this -> assign('list',$list);
		$this -> assign('page',$show);
		$this -> display();
	}

	//已办消息
	public function msgDeal(){
		
		//提取数据
		$tb_user = M("personal_users");
		$tb_msg = M("msgsystem_message");
		$uid = $uid = $_SESSION['home']['uid'];
		$sort = $_GET['status'] == 2?'asc':"desc";
		
		if(!empty($_GET['keyword'])){
            $where["title|process"]=array('like','%'.$_GET['keyword'].'%');
        }
        $where['status'] = 1;
        $where['receiver_id'] = $uid;
		$count  =$tb_msg->where($where)
						->count();// 查询满足要求的总记录数
		
		$Page = new \Think\Page($count,8);
        $show = $Page -> show();
		$list = $tb_msg -> where($where)
						-> order('ctime '.$sort)
						-> limit($Page->firstRow.','.$Page->listRows)
						-> select();

		$this -> assign('list',$list);
		$this -> assign('page',$show);
		$this -> display();
	}

	//通知
	public function notice(){
		//提取数据
		$tb_user = M("personal_users");
		$tb_msg = M("msgsystem_message");
		$uid = $uid = $_SESSION['home']['uid'];
		$sort = $_GET['status'] == 2?'asc':"desc";
		
		if(!empty($_GET['keyword'])){
            $where["title|process"]=array('like','%'.$_GET['keyword'].'%');
        }
        $where['status'] = 3;
        $where['receiver_id'] = $uid;
		$count  =$tb_msg->where($where)
						->count();// 查询满足要求的总记录数
		
		$Page = new \Think\Page($count,8);
        $show = $Page -> show();
		$list = $tb_msg -> where($where)
						-> order('ctime '.$sort)
						-> limit($Page->firstRow.','.$Page->listRows)
						-> select();
		
		$this -> assign('list',$list);
		$this -> assign('page',$show);
		$this -> display();
	}

	//删除操作
	public function del(){
		
		if(IS_GET){
			//提取并检验id合法性
			$id = I('get.id','-1','int');

			$tb_user = M("personal_users");
			$tb_msg = M("msgsystem_message");
			$uid = $_SESSION['home']['uid'];
			$gen = $tb_msg 	-> where(array('id'=>$id,'receiver_id'=>$uid))
							-> delete();

			if($gen){
				$this -> success('删除操作成功！');
			}else{
				$this -> error('删除操作失败！');
			}

		}

	}

	//批量删除
	public function deal(){
		if(IS_AJAX){
			$tb_user = M("personal_users");
			$uid = $_SESSION['home']['uid'];
			$model = M('msgsystem_message');
			$ids = $_POST['ids'];
			$gens = null;
			foreach ($ids as $id) {
				if(is_numeric($id)){
					$gens = $model 	-> where(array('id'=>$id,'receiver_id'=>$uid))
									-> delete();
				}	
			}
			if($gens){
				$this -> ajaxReturn(1);
			}else{
				$this -> ajaxReturn(0);
			}				
		}
	}

	//查看
}