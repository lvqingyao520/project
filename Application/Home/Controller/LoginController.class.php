<?php

namespace Home\Controller;
use Think\Controller;

class LoginController extends Controller{

	//登录界面
	public function index(){
		$_SESSION = null;
		$this->display();

	}

	//验证码输出
	public function chkCode(){

		$config =   array(    
								'fontSize'    =>    40,    // 验证码字体大小    
								'length'      =>    4,     // 验证码位数    
								'useNoise'    =>    true, // 关闭验证码杂点
								'fontttf' 	  => 	'5.ttf', //验证码字体类型
								'useImgBg' 	  => 	true,	//验证码背景图片
					);

		$Verify =  new \Think\Verify($config);
		$Verify->entry();
	}

	//注销登陆状态
	public function logout(){
		$_SESSION['home'] = null;
		$this -> redirect('Home/Login/index');
	}

	//验证验证码
	public function check_verify($code, $id = ''){    
		$verify =  new  \Think\Verify();   
		return $verify -> check($code, $id);
	}

	//登录验证
	public function login(){

		if(IS_POST){
			
			if($this->check_verify($_POST['chkcode'])){
				$pdu = M("personal_users");
				$username = I('post.uname');
				$pwd = I('post.password');

				$userdata = $pdu
							->field('id,username')
							->where('username="%s" and pwd="%s"',$username,$pwd)
							->find();

				if($userdata){
					$_SESSION['home']['uid'] = $userdata['id'];
					$_SESSION['home']['username'] = $userdata['username'];

					//更新用户表最后一次登录时间
					$lastlogintime = date('Y-m-d H:i:s');
					$pdu-> where(array('id' => $userdata['id']))
						-> save(array('lastlogintime' => $lastlogintime));
					
					$this -> success("欢迎登陆智能项目管理系统",U('Home/index/index'));
				}else{
					$this -> error('请输入正确的账号及密码',U('Home/Login/index'));
				}

			}else{
				$this -> error('验证码错误');	
			}
		
		}else{
			$this -> error('拒绝非法访问',U('Home/Login/index'));
		}	
	}


}