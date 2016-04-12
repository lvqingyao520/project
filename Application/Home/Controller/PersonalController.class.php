<?php

namespace Home\Controller;
use Think\Controller;

class PersonalController extends PublicController{

	//个人设置模块主页
	public function index(){

		$this -> display();

	}

	//个人设置个人信息页
	public function information(){

		//提取用户信息，并显示在表单上
		$id = $_SESSION['home']['uid'];		
		$username = $_SESSION['home']['username'];

		//调用用户信息表
		$pdu = M('personal_users');

		if(IS_POST){
			//提取表单数据
			//$data = I("post.");

			//姓名验证
			if($_POST['tname'] === ''){
				$this -> error('真实姓名不可以为空！',U('Home/Personal/information'),5);
			}else if(preg_match("/^[a-zA-Z ]{5,30}$/",$_POST['tname']) || preg_match("/^[\x80-\xff]{6,30}$/",$_POST['tname'])){
				$data['truename'] = $_POST['tname'];
			}else {
				$this -> error('真实姓名为5~30位字母或者2~10个汉字！',U('Home/Personal/information'),5);
			}

			//身份证号码验证
			if($_POST['identcard'] === ''){
				$this -> error('身份证号码不可以为空！',U('Home/Personal/information'),5);
			}else if(preg_match("/^([1-9]\d{16}[0-9Xx]{1})$|^([1-9]\d{13}[0-9Xx]{1})$/",$_POST['identcard'] )){
				$data['identcard'] = $_POST['identcard'];
			}else{
				$this -> error('身份证号码格式错误！',U('Home/Personal/information'),5);
			}

			//手机号验证
			if($_POST['phone'] === ''){
				$this -> error('手机号不可以为空！',U('Home/Personal/information'),5);
			}else if(preg_match("/^1[3458]\d{9}$/",$_POST['phone'])){
				$data['phone'] = $_POST['phone'];
			}else{
				$this -> error('手机号格式错误！',U('Home/Personal/information'),5);
			}

			//email验证
			if($_POST['email'] === ''){
				$this -> error('邮箱不可以为空！',U('Home/Personal/information'),5);
			}else if(preg_match("/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/",$_POST['email'])){
				$data['email'] = $_POST['email'];
			}else{
				$this -> error('邮箱格式错误！',U('Home/Personal/information'),5);
			}
			
			//生日日期验证
			if($_POST['birthday'] === ''){
				$this -> error('生日不可以为空！',U('Home/Personal/information'),5);
			}else if(preg_match("/^\d{4}-(?:(?:0[13-9]|1[12])-(?:0[1-9]|[12]\d|30)|(?:0[13578]|1[02])-31|02-(?:0[1-9]|1\d|2[0-8]))|(?:(?:\d{2}(?:[13579][26]|[2468][048])|(?:[13579][26]|[2468][048])00)-02-29)$/",$_POST['birthday'])){
				$year = explode('-',$_POST['birthday'])[0];
				$todayyear = date('Y');
				if($year<($todayyear-65) || $year>($todayyear-18)  ){					
					$this -> error('非法工作年龄，年龄超过65岁或小于18岁！',U('Home/Personal/information'),5);
				}else{
					$data['birthday'] = $_POST['birthday'];
					$data['age'] = $todayyear - $year;
				}				
			}else{
				$this -> error('生日格式错误！',U('Home/Personal/information'),5);
			}
			$data['sex'] = I('post.sex');
			

			//提取文件上传信息
			$file = $_FILES['img'];
			if($file['error'] == 4){
				$pdu -> create($data);
				$gen = $pdu -> where(array('id'=>$id,'username'=>$username))
							-> save();
				
			}else if($file['error'] == 0){
				//实例化上传类
				$upload = new \Think\Upload();// 实例化上传类
	            $upload -> maxSize   =     3145728 ;// 设置附件上传大小    
	            $upload -> exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	            $upload->  saveRule  =     uniqid; 
	            $upload -> rootPath  =     './Public' ;
	            $upload -> savePath  =     '/Uploads/'; // 设置附件上传目录

	           	$info = $upload -> upload(); // 上传文件

	           	if(!$info) {// 上传错误提示错误信息        
	            	$this->error($upload->getError());
	            }else{// 上传成功
	            	$data['imgurl'] = trim($info['img']['savepath'].$info['img']['savename'],'/');
	            	$pdu -> create($data);
					$gen = $pdu -> where(array('id'=>$id,'username'=>$username))
								-> save();	
					if($gen){
						@unlink('./Public/'.$_POST['oldimg']);
					}
	            }
			}
			
			if($gen){
				$this-> success('个人信息修改成功！');
			}else{
				$this-> error('个人信息修改失败！',U('Home/Personal/information'),5);
			}
			die;
		}

		//显示用户信息
		$pde = M('baseset_employees');

		$user = $pdu-> where(array('id'=>$id,'username'=>$username))
					-> find();

		$userworkinfo = $pde-> table('epm_baseset_employees as be')
							-> field('be.uid,bd.name as depart,bj.name as job')
							-> join('left join epm_baseset_department as bd  on bd.id = be.departnum')
							-> join('left join epm_baseset_job as bj  on bj.id = be.jobnum')
							-> where(array('be.uid'=>$id))
							-> find();

		$user['depart'] = $userworkinfo['depart'];
		$user['job'] = $userworkinfo['job'];

		$this -> assign('user',$user);
		$this -> display();

	}

	//个人设置密码重置页
	public function pswReset(){

		if(IS_POST){
			//提取表单数据
			$data['psw'] = I("post.oripsw");
			$data['newpsw'] = I("post.newpsw");
			$data['confirmpsw'] = I("post.confirmpsw");

			//验证原密码
			$pdu = M("personal_users");
			$userarr = $pdu -> where(array('id'=>$_SESSION['home']['uid'],'username'=>$_SESSION['home']['username'],'pwd'=>$data['psw']))
							-> find();
			if(!$userarr){
				$this -> error('您输入的原密码不对！',U('Home/Personal/pswReset'),5);
			}else if(!preg_match("/^\w{6,18}$/", $data['newpsw'])){
				$this -> error('新密码格式应该为6~18数字或字母！',U('Home/Personal/pswReset'),5);
			}else if($data['newpsw'] !== $data['confirmpsw']){
				$this -> error("您输入的新密码不一致！",U('Home/Personal/pswReset'),5);

			}else{

				$gen = $pdu -> where(array('id'=>$_SESSION['home']['uid']))
							-> save(array('pwd'=>$data['newpsw']));
				if(!$gen){
					$this -> error('修改密码失败！');
					
				}else{
					$this -> success('修改密码成功');
					
				}
			}
			die;
		}
		
		$this -> display();

	}

	public function checkPsw(){
		//ajax验证原密码
		if(IS_AJAX){
			//获取变量
			$psw = I('post.psw');
			$id = $_SESSION['home']['uid'];
			$username = $_SESSION['home']['username'];

			//查询变量
			$pdu = M('personal_users');
			$gen = $pdu -> where(array('id'=>$id,'username'=>$username,'pwd'=>$psw))
						-> select()[0];

			//判断密码正确性
			if($gen){
				$this -> ajaxReturn(1);
			}else{
				$this -> ajaxReturn(0);
			}
		}else{
			$this -> ajaxReturn(0);
		}
	}

	public function checkPhone(){
		$this -> checkSingle();
	}

	public function checkEmail(){
		$this -> checkSingle();
	}

	public function checkIdentcard(){
		$this -> checkSingle();
	}

	private function checkSingle(){
		//ajax验证邮箱
		if(IS_AJAX){
			//获取变量
			
			$id = $_SESSION['home']['uid'];
			$username = $_SESSION['home']['username'];

			//查询变量
			$pdu = M('personal_users');
			$keys = array_keys($_POST)[0];
			$check = I("post.".$keys);
			// $check = $_POST[$keys];
			
			$gena = $pdu-> field("$keys")
						-> where(array('id'=>$id,'username'=>$username))
						-> find()[$keys];
			
			$genb = $pdu-> field("$keys")
						-> where(array($keys=>$check))
						-> select();
			
			//判断邮箱唯一性
			if(is_array($genb)){
				if(count($genb)>=2){
					$this -> ajaxReturn(0);
				}else if((count($genb)==1) && ($gena === $genb[0][$keys])){
					$this -> ajaxReturn(1);
				}else {
					$this -> ajaxReturn(0);
				}				
			}else{
				$this -> ajaxReturn(1);
			}		
		}else{
			$this -> ajaxReturn(0);
		}
	}
}