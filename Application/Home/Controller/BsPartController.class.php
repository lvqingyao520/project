<?php
namespace Home\Controller;
use Think\Controller;
class BsPartController extends Controller {
    //甲方
    public function partya(){
    	//C('URL_HTML_SUFFIX','');
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



    //乙方
    public function partyb(){
    	//C('URL_HTML_SUFFIX','');
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
    //供应商
    public function provider(){
    	//C('URL_HTML_SUFFIX','');
    	$provider=M('baseset_provider');
        if(!empty($_GET['keyword'])){
            $where["pname"]=array('like','%'.$_GET['keyword'].'%');
        }
    	if(!empty($_GET['status'])){
            $where["status"]=$_GET['status'];
        }
    	$count=$provider->where($where)->count();
        $Page=new\Think\Page($count,8);
        $show=$Page->show();
        $provider=$provider->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
        $arr = array('1' => '普通','2'=>'禁用' );
        $this->assign('arr',$arr);
        $this->assign('page',$show);
        $this->assign('provider',$provider);
        $this->display();
    }
    public function addprovider(){
       	I("post.");
        if($_POST){
        	$provider=M('baseset_provider');
        	$provider->create();
        	if($provider->add()){
        		$this->success('添加成功',U('Home/BsPart/provider'));
        	}else{
        		$this->error('添加失败');
        	}
			die();

        }
        $this->display();

    }
    public function updateprovider(){
       $provider=M('baseset_provider');
       I("post.");
        if($_POST){
        	$data=$_POST;
        	
        	
        	$provider->create();
        	if($provider->save($data)){
        		$this->success('修改成功',U('Home/BsPart/provider'));
        		die();
        	}else{
        		$this->error('修改失败');
        		die();
        	}


        }

        $data=$provider->where("id=".$_GET['id'])->find();
        $this->assign('provider',$data);
        $this->display();

    }
    public function delprovider(){
    	$id = I('get.id');
        $provider=M('baseset_provider');
       	if($provider -> delete($id)){
           $this -> success('删除成功',U('Home/BsPart/provider'));
        }else{
           $this -> error('删除失败');
        }
    }
    public function statusp(){
    	
        $provider=M('baseset_provider');
       	$data=$_POST;
       	if($provider->save($data)){
       		echo 1;
       	}else{
       		echo 0;
       	}


    }
    //施工队
    public function constract(){
       // C('URL_HTML_SUFFIX','');
        $constract=M('baseset_constract');
        if(!empty($_GET['keyword'])){
            $where["cname"]=array('like','%'.$_GET['keyword'].'%');
        }
        if(!empty($_GET['status'])){
            $where["status"]=$_GET['status'];
        }
        $count=$constract->where($where)->count();
        $Page=new\Think\Page($count,8);
        $show=$Page->show();
        $constract=$constract->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
        $arr = array('1' => '普通','2'=>'禁用' );
        $this->assign('arr',$arr);
        $this->assign('page',$show);
        $this->assign('constract',$constract);
        $this->display();
    }
    public function addconstract(){
        I("post.");
        if($_POST){
            $constract=M('baseset_constract');
            $constract->create();
            if($constract->add()){
                $this->success('添加成功',U('Home/BsPart/constract'));
            }else{
                $this->error('添加失败');
            }
            die();

        }
        $this->display();

    }
    public function updateconstract(){
       $constract=M('baseset_constract');
       I("post.");
        if($_POST){
            $data=$_POST;
            
            
            $constract->create();
            if($constract->save($data)){
                $this->success('修改成功',U('Home/BsPart/constract'));
                die();
            }else{
                $this->error('修改失败');
                die();
            }


        }

        $data=$constract->where("id=".$_GET['id'])->find();
        $this->assign('constract',$data);
        $this->display();

    }
    public function delconstract(){
        $id = I('get.id');
        $constract=M('baseset_constract');
        if($constract -> delete($id)){
           $this -> success('删除成功',U('Home/BsPart/constract'));
        }else{
           $this -> error('删除失败');
        }
    }
    public function statusc(){
        
        $constract=M('baseset_constract');
        $data=$_POST;
        if($constract->save($data)){
            echo 1;
        }else{
            echo 0;
        }


    }
    //账户
    public function account(){
    	//C('URL_HTML_SUFFIX','');
    	$account=M('baseset_account');
        if(!empty($_GET['keyword'])){
            $where["aname"]=array('like','%'.$_GET['keyword'].'%');
        }
    	if(!empty($_GET['status'])){
            $where["status"]=$_GET['status'];
        }
    	$count=$account->where($where)->count();
        $Page=new\Think\Page($count,8);

        $show=$Page->show($_GET['p']);
        $account=$account->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
       
        $arr = array('1' => '普通','2'=>'禁用' );
        $this->assign('arr',$arr);
        $this->assign('page',$show);
        $this->assign('account',$account);
        $this->display();
    }
    public function addaccount(){
       	I("post.");
        if($_POST){
        	$account=M('baseset_account');
        	$account->create();
        	if($account->add()){
        		$this->success('添加成功',U('Home/BsPart/account'));
        	}else{
        		$this->error('添加失败');
        	}
			die();

        }
        $this->display();

    }
    public function updateaccount(){
       $account=M('baseset_account');
       I("post.");
        if($_POST){
        	$data=$_POST;
        	
        	
        	$account->create();
        	if($account->save($data)){
        		$this->success('修改成功',U('Home/BsPart/account'));
        		die();
        	}else{
        		$this->error('修改失败');
        		die();
        	}


        }

        $data=$account->where("id=".$_GET['id'])->find();
        $this->assign('account',$data);
        $this->display();

    }
    public function delaccount(){
    	$id = I('get.id');
        $account=M('baseset_account');
       	if($account -> delete($id)){
           $this -> success('删除成功',U('Home/BsPart/account'));
        }else{
           $this -> error('删除失败');
        }
    }
    public function statusa(){
    	
        $account=M('baseset_account');
       	$data=$_POST;
       	if($account->save($data)){
       		echo 1;
       	}else{
       		echo 0;
       	}


    }
    public function aaaaaaa(){

        $this->display();
    }
  
   
}