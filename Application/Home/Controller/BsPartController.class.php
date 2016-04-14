<?php
namespace Home\Controller;
use Think\Controller;
class BsPartController extends Controller {
    public function partya(){
        C('URL_HTML_SUFFIX','');
    	$partya=M('baseset_partya');
        if(!empty($_GET['keyword'])){
            $where["aname"]=array('like','%'.$_GET['keyword'].'%');
        }
    	if($_GET['status']>0){
            $where["status"]=$_GET['status'];
        }
    	$count=$partya->where($where)->count();
        $Page=new\Think\Page($count,8);
        $show=$Page->show();
        $partya=$partya->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
        $arr = array('1' => '普通','2'=>'禁用' );
        $this->assign('arr',$arr);
        $this->assign('page',$show);
        $this->assign('partya',$partya);
        $this->display();
    }
    public function addpartya(){
       	I("post.");
        if($_POST){
        	$partya=M('baseset_partya');
        	$partya->create();
        	if($partya->add()){
        		$this->success('添加成功',U('Home/BsPart/partya'));
        	}else{
        		$this->error('添加失败');
        	}
			die();

        }
        $this->display();

    }
    public function updatepartya(){
       $partya=M('baseset_partya');
       I("post.");
        if($_POST){
        	$data=$_POST;
        	
        	
        	$partya->create();
        	if($partya->save($data)){
        		$this->success('修改成功',U('Home/BsPart/partya'));
        		die();
        	}else{
        		$this->error('修改失败');
        		die();
        	}


        }

        $data=$partya->where("id=".$_GET['id'])->find();
        $this->assign('partya',$data);
        $this->display();

    }
    public function delpartya(){
    	$id = I('get.id');
        $partya=M('baseset_partya');
       	if($partya -> delete($id)){
           $this -> success('删除成功',U('Home/BsPart/partya'));
        }else{
           $this -> error('删除失败');
        }
    }
    public function status(){
    	
        $partya=M('baseset_partya');
       	$data=$_POST;
       	if($partya->save($data)){
       		echo 1;
       	}else{
       		echo 0;
       	}


    }




    public function partyb(){
    	$partyb=M('baseset_partyb');
        if(!empty($_GET['keyword'])){
            $where["bname"]=array('like','%'.$_GET['keyword'].'%');
        }
    	if(!empty($_GET['status'])){
            $where["status"]=$_GET['status'];
        }
    	$count=$partyb->where($where)->count();
        $Page=new\Think\Page($count,8);
        $show=$Page->show();
        $partyb=$partyb->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
        $arr = array('1' => '普通','2'=>'禁用' );
        $this->assign('arr',$arr);
        $this->assign('page',$show);
        $this->assign('partyb',$partyb);
        $this->display();
    }
    public function addpartyb(){
       	I("post.");
        if($_POST){
        	$partyb=M('baseset_partyb');
        	$partyb->create();
        	if($partyb->add()){
        		$this->success('添加成功',U('Home/BsPart/partyb'));
        	}else{
        		$this->error('添加失败');
        	}
			die();

        }
        $this->display();

    }
    public function updatepartyb(){
       $partyb=M('baseset_partyb');
       I("post.");
        if($_POST){
        	$data=$_POST;
        	
        	
        	$partyb->create();
        	if($partyb->save($data)){
        		$this->success('修改成功',U('Home/BsPart/partyb'));
        		die();
        	}else{
        		$this->error('修改失败');
        		die();
        	}


        }

        $data=$partyb->where("id=".$_GET['id'])->find();
        $this->assign('partyb',$data);
        $this->display();

    }
    public function delpartyb(){
    	$id = I('get.id');
        $partyb=M('baseset_partyb');
       	if($partyb -> delete($id)){
           $this -> success('删除成功',U('Home/BsPart/partyb'));
        }else{
           $this -> error('删除失败');
        }
    }
    public function statusb(){
    	
        $partyb=M('baseset_partyb');
       	$data=$_POST;
       	if($partyb->save($data)){
       		echo 1;
       	}else{
       		echo 0;
       	}


    }
   
}