<?php

namespace Home\Controller;
use Think\Controller;

class PublicController extends Controller{
	public function _initialize(){
		$this->assign('name',1456);
		
	}
}