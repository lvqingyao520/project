<?php
namespace Home\Controller;
use Think\Controller;
class AuthController extends Controller {
    public function role(){
    	$role=M('authset_role');
    	if(!empty($_GET['keyword'])){
    	   $where['rolename']=array('like','%'.$_GET['keyword'].'%');
    	}
    	$count=$role->where($where)->count();
    	$Page=new\Think\Page($count,8);
    	$show=$Page->show();
    	$role=$role->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
    	$this->assign('page',$show);
    	$this->assign('role',$role);
        
        $this->display();

    }
    public function addrole(){
    	I("post.");
    	if($_POST){
    		$role=M('authset_role');
            //var_dump($_POST);

            $_POST['rules']=implode(",", $_POST['rule']);
            var_dump($_POST);
    		$role->create();
    		if($role->add()){
    			$this->success('添加成功',U('Home/Auth/role'));
    		}else{
    			$this->error('添加失败');
    		}
    		die();
    	}
    	$this->display();
    }
    public function delrole(){
        $id=I('get.id');
        $role=M('authset_role');
        if($role->delete($id)){
          $this->success('删除成功',U('Home/Auth/role'));
        }else{
          $this->error('添加失败');
        }
    }
    public function updaterole(){
        $role=M('authset_role');
        I("post.");
        if($_POST){
            $data['id']=$_POST['id'];
            $data['rolename']=$_POST['rolename'];
            $data['rules']=implode(",", $_POST['rule']);
            $role->create();
            if($role->save($data)){
                $this->success('修改成功',U('Home/Auth/role'));
            }else{
                $this->error('修改失败');
            }
            die();
        }
        $data=$role->where("id=".$_GET['id'])->find();
        $arr = explode(',',$data['rules']);
        $this->assign('arr',$arr);
        $this->assign('role',$data);
        $this->display();
    }
    public function dels(){
        $id = I('post.id');
        $role = M('authset_role');
        if(is_array($id)){
            $where = 'id in('.implode(',',$id).')';
        }else{
            $where = 'id='.$id;
        }
        $num=$role->where($where)->delete();
        if($num!==false) {
            $this->success("成功删除{$num}条！",U('home/Auth/role'));
            // header("Location:$_SERVER[HTTP_REFERER]");
        }else{
            $this->error('删除失败！');
        }

    }

    public function rule(){
        $rule=M('personal_users');
        if(!empty($_GET['keyword'])){
            $where['job.name|depart.name|users.truename|users.username|acc.roleid|acc.rolename']=array('like','%'.$_GET['keyword'].'%');
        }
        if($_GET['status']>0){
            $where["status"]=$_GET['status'];
        }
        $count=$rule->where($where)->count();
        $Page=new\Think\Page($count,8);
        $show=$Page->show();
        $rules=$rule->table("epm_personal_users as users")
                    ->field('users.id,users.username,users.truename,depart.name as departname,job.name as jobname,users.status,acc.roleid,acc.rolename')
                    ->join('epm_baseset_department as depart on users.departnum=depart.id','left')
                    ->join('epm_baseset_job  as job on users.jobnum=job.id','left')
                    ->join('epm_authset_rule_access as acc on users.id=acc.uid','left')
                    ->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
        $arr = array("1"=>"封存","2"=>"普通");
        $this -> assign('arr',$arr);
        $this->assign('page',$show);
        $this->assign('rule',$rules);
        $this->display();
    }
    public function addroles(){
        $_GET['id']=1;
        $id = I('post.id');
        $rule=M('personal_users');

        $role=M('authset_role');
        $acc=M('authset_rule_access');
        //var_dump($_POST);
        if($_POST){
            foreach ($_POST['rule'] as $k => $v) {
                $name=$role->where("id=".$v)->find();
                $aa[$v]=$name['rolename'];
                $a1[$k]=$name['rules'];
            }

            
            $a2=implode(",", $a1);
            $oldrules=$acc->where("uid=".$id)->find();
            $a3=explode(",",$a2);
            $a4=array_unique($a3);
            $data['rolename']=implode(",", $aa);
            $data['roleid']=implode(",",$_POST['rule']);
            if($_POST['ss']==1){
                $data['rules']=implode(",",$a4);
            }
            if($acc->where("uid=".$id)->save($data)){
                $this->success('修改成功',U('Home/Auth/rule'));
            }else{
                $this->error('修改失败');
            }
            die();
            
        }

        $roles=$role->select();
        
        
        $acc=$acc->where("uid=".$_GET['id'])->find();
        // var_dump($acc);
        $arr=explode(',',$acc['rolename']);
        foreach ($roles as $key => $value) {
            $roles[$key]['arr']=$arr;
        }
       
        // var_dump($roles);
        $data=$rule->field('username,truename,id')->where("id=".$_GET['id'])->find(); 
        $this->assign('arr',$arr);
        $this->assign('roles',$roles);
        $this->assign('rule',$data);
        $this->display();
    }
    public function addrules(){
         
        $_GET['id']=1;
       
        //var_dump($_POST);
        $rules=M('authset_rule_access');
        I("post.");
        if($_POST){
            $data['rules']=implode(",", $_POST['rule']);
            var_dump($data);
            $rules->create();
            if($rules->where("uid=".$_POST['id'])->save($data)){
                $this->success('添加成功',U('Home/Auth/rule'));
            }else{
                $this->error('添加失败');
            }
            die();
        }
        $data1=$rules->where("uid=".$_GET['id'])->find();
        $arr = explode(',',$data1['rules']);

        $this->assign('arr',$arr);
        $this->assign('id',$data1['uid']);
        $user=M('personal_users');
        $data2=$user->field('username,truename,id')->where("id=".$_GET['id'])->find(); 
        
        $this->assign('rule',$data2);
        $this->display();
    }
   

   
}