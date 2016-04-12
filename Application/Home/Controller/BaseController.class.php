<?php
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function index(){
        
        $_SESSION['home']['uid']=2;
        $rule=CONTROLLER_NAME.'/'.ACTION_NAME;
        //var_dump($rule);
        $rules=M('authset_rule_access');
        $r=$rules->where("uid=".$_SESSION['home']['uid'])->find();
        
        $arr = explode(',',$r['rules']);
        //var_dump($arr);
        foreach ($arr as $key => $value) {
            $name=M('authset_rule');
            $name=$name->where("id=".$value)->find();
            $arr["$key"]=$name['name'];
        }
        

        if (!in_array("$rule", $arr)) {
            $this->error('您没有此权限，返回上一页',$_SERVER['HTTP_REFERER'],1000);
        }
        var_dump($arr);
        return $arr;    
            
    }
   
}