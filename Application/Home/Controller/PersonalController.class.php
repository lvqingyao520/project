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

		$this -> display();

	}

	//个人设置密码重置页
	public function pswReset(){

		if(IS_POST){
			//提取数据
			$data['psw'] = I("post.oripsw");
			$data['newpsw'] = I("post.newpsw");
			$data['confirmpsw'] = I("post.confirmpsw");

			//验证原密码
			$pdu = M("personal_users");
			$userarr = $pdu -> where(array('id'=>$_SESSION['home']['uid'],'username'=>$_SESSION['home']['username'],'pwd'=>$data['psw']))
							-> find();
			if(!$userarr){
				$this -> error('您输入的原密码不对！',U('Home/Personal/pswReset'),5);
			}else if(!$gen = preg_match("/^\w{6,18}$/", $data['newpsw'])){
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

}