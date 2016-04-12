<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title>智工程</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="/Git/epm/project/Public/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="/Git/epm/project/Public/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="/Git/epm/project/Public/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="/Git/epm/project/Public/css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="/Git/epm/project/Public/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/icons.css" />

    

    <!-- this page specific styles -->
    <link rel="stylesheet" href="/Git/epm/project/Public/css/compiled/index.css" type="text/css" media="screen" />    

    <!-- open sans font -->
    <!-- <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' /> -->

    <!-- lato font -->
   <!--  <link href='http://fonts.useso.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' /> -->
    <style type="text/css">
    body{font-family: "微软雅黑";}
    </style>
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <!-- navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="index.html"><img src="/Git/epm/project/Public/img/logo.png" /></a>
            <!-- 网站图标 -->
            <!-- 头部分的右边边 Start-->
            <ul class="nav pull-right">

                <li class="hidden-phone">
                    <input class="search" type="text" />
                </li>
                <li class="notification-dropdown hidden-phone">
                    <a href="#" class="trigger">
                        <i class="icon-warning-sign"></i>
                        <span class="count">66</span> <!--  显示提示数 -->
                    </a>
                    <!-- 点击查看的提示信息 -->
                    <div class="pop-dialog">
                        <div class="pointer right">
                            <div class="arrow"></div>
                            <div class="arrow_border"></div>
                        </div>
                        <div class="body">
                            <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                            <div class="notifications">
                                <h3>You have 6 new notifications</h3>
                                <a href="#" class="item">
                                    <i class="icon-signin"></i> New user registration
                                    <span class="time"><i class="icon-time"></i> 13 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-signin"></i> New user registration
                                    <span class="time"><i class="icon-time"></i> 18 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-envelope-alt"></i> New message from Alejandra
                                    <span class="time"><i class="icon-time"></i> 28 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-signin"></i> New user registration
                                    <span class="time"><i class="icon-time"></i> 49 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-download-alt"></i> New order placed
                                    <span class="time"><i class="icon-time"></i> 1 day.</span>
                                </a>
                                <div class="footer">
                                    <a href="#" class="logout">View all notifications</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <div class="copyrights">挡板，不显示 下边是其他信息</div>
                <li class="notification-dropdown hidden-phone">
                    <a href="#" class="trigger">
                        <i class="icon-envelope-alt"></i> <!-- 消息图标 -->
                    </a>
                    <!-- 消息框 -->
                    <div class="pop-dialog">
                        <div class="pointer right">
                            <div class="arrow"></div>
                            <div class="arrow_border"></div>
                        </div>
                        <div class="body">
                            <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                            <div class="messages">
                                <a href="#" class="item">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 13 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <img src="img/contact-img2.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 26 min.</span>
                                </a>
                                <a href="#" class="item last">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 48 min.</span>
                                </a>
                                <div class="footer">
                                    <a href="#" class="logout">View all messages</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle hidden-phone" data-toggle="dropdown">
                        Your account
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="personal-info.html">Personal info</a></li>
                        <li><a href="#">Account settings</a></li>
                        <li><a href="#">Billing</a></li>
                        <li><a href="#">Export your data</a></li>
                        <li><a href="#">Send feedback</a></li>
                    </ul>
                </li>
                <li class="settings hidden-phone">
                    <a href="personal-info.html" role="button">
                        <i class="icon-cog"></i>
                    </a>
                </li>
                <li class="settings hidden-phone">   
                    <a href="<?php echo U('Home/Login/logout');?>" role="button">
                        <i class="icon-share-alt"></i>
                    </a>
                </li>
            </ul>
            <!-- 头部分的右边边 end-->            
        </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav" style="padding-top:0px;">

        <ul id="dashboard-menu" >
            <li <?php if((CONTROLLER_NAME== 'Index')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <!-- 开口 -->
                <a href="<?php echo U('Home/Index/index');?>">
                    <i class="icon-home"></i>
                    <span>首页</span>
                </a>
            </li>

            
            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>合同管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">合同订立</a></li>
                    <li><a href="#">合同修订</a></li>
                    <li><a href="#">变更洽商</a></li>
                    <li><a href="#">合同权限</a></li>
                </ul>
            </li> 


            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-legal"></i>
                    <span>项目管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">合同完成量</a></li>
                    <li><a href="#">预算拆解</a></li>
                    <li><a href="#">劳务分包</a></li>
                    <li><a href="#">材料采购</a></li>
                    <li><a href="#">合同收款</a></li>
                    <li><a href="#">工程结算单</a></li>
                    <li><a href="#">订购单</a></li>
                    <li><a href="#">材料付款</a></li>
                    <li><a href="#">日报表</a></li>
                    <li><a href="#">人工费</a></li>
                    <li><a href="#">人工费结算</a></li>
                    <li><a href="#">项目借款单</a></li>
                    <li><a href="#">项目报销/还款单</a></li>
                    <li><a href="#">项目其他费</a></li>
                    <li><a href="#">资金计划</a></li>
                </ul>
            </li> 


            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>

                <a class="dropdown-toggle" href="#">
                    <i class="icon-print"></i>
                    <span>管理费用</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">个人借款单</a></li>
                    <li><a href="#">个人报销/还款单</a></li>
                    <li><a href="#">其他收款</a></li>
                    <li><a href="#">其他付款</a></li>
                </ul>
            </li>  

            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-retweet"></i>
                    <span>财务管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">内部转账</a></li>
                    <li><a href="#">外部借款</a></li>
                    <li><a href="#">外部还款</a></li>
                    <li><a href="#">账户余额</a></li>
                    <li><a href="#">应收款</a></li>
                    <li><a href="#">项目应付款</a></li>
                    <li><a href="#">供应商应付款</a></li>
                    <li><a href="#">施工队应付款</a></li>
                    <li><a href="#">个人借款</a></li>
                    <li><a href="#">公司报销明细</a></li>
                    <li><a href="#">资金流量表</a></li>
                </ul>
            </li>  

            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-bar-chart"></i>
                    <span>报表分析</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">涂布率</a></li>
                    <li><a href="#">资金计划表</a></li>
                    <li><a href="#">工程收入利润表</a></li>
                    <li><a href="#">工程项目现金流量表</a></li>
                    <li><a href="#">应收账款表</a></li>
                    <li><a href="#">工程材料使用一览表</a></li>
                    <li><a href="#">工程明细</a></li>
                    <li><a href="#">项目</a></li>
                    <li><a href="#">个人借款</a></li>
                    <li><a href="#">公司报销明细</a></li>
                    <li><a href="#">资金流量表</a></li>
                </ul>
            </li>  


            <li <?php if((CONTROLLER_NAME== 'BsPart') OR (CONTROLLER_NAME== 'Bscomp')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-cog"></i>
                    <span>基本设置</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu" <?php if((CONTROLLER_NAME== 'BsPart') OR (CONTROLLER_NAME== 'Bscomp') ): ?>style="display:block;" <?php else: ?>style="display:none;"<?php endif; ?> >
                    <li><a href="#">部门管理</a></li>
                    <li><a href="#">职位管理</a></li>
                    <li><a href="#">职员管理</a></li>
                    <li><a href="#">流程设置</a></li>
                    <li><a href="<?php echo U('Home/BsPart/partya');?>">甲方设置</a></li>
                    <li><a href="<?php echo U('Home/BsPart/partya');?>">乙方设置</a></li>
                    <li><a href="#">账户设置</a></li>
                    <li><a href="#">供应商设置</a></li>
                    <li><a href="#">施工队设置</a></li>
                </ul>
            </li> 

            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>权限设置</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">材料特殊权限</a></li>
                    <li><a href="#">账户余额特殊权限</a></li>
                    <li><a href="#">涂布率警报权限</a></li>
                    <li><a href="#">角色管理</a></li>
                    <li><a href="#">权限管理</a></li>
                </ul>
            </li> 

            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-envelope"></i>
                    <span>文件传阅</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">新建传阅</a></li>
                    <li><a href="#">收件箱</a></li>
                    <li><a href="#">发件箱</a></li>
                    <li><a href="#">垃圾箱</a></li>
                </ul>
            </li> 


            <li <?php if((CONTROLLER_NAME== '')): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-comments-alt"></i>
                    <span>消息中心</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">代办文件</a></li>
                    <li><a href="#">已办文件</a></li>
                    <li><a href="#">通知</a></li>
                </ul>
            </li>  


            <li <?php if((CONTROLLER_NAME== 'Personal') OR (CONTROLLER_NAME== 'Login') ): ?>class="active">
                <!-- active 选中项 -->
                <!-- 开口 -->
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div><?php else: ?>><?php endif; ?>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-user"></i>
                    <span>个人设置</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu" <?php if((CONTROLLER_NAME== 'Personal') OR (CONTROLLER_NAME== 'Login') ): ?>style="display:block;" <?php else: ?>style="display:none;"<?php endif; ?> >
                    <li><a href="<?php echo U('Home/Personal/information');?>">个人信息中心</a></li>
                    <li><a href="<?php echo U('Home/Personal/pswReset');?>">修改密码</a></li>
                    <li><a href="<?php echo U('Home/Login/logout');?>">退出登录</a></li>
                </ul>
            </li>                 
                 
           
        </ul>
    </div>
    <!-- end sidebar -->


	<!-- main container -->
    <div class="content">

        <!-- settings changer -->
        <!-- 切换皮肤  右边悬浮 -->
        <div class="skins-nav">
            <a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default skin</span>
            </a>
            <a href="#" class="skin second_nav" data-file="css/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
        </div>

        <div class="container-fluid">

            <!-- upper main stats -->   
            <!-- 整站数据显示 upper -->
            
            <!-- 整站数据显示 upper -->
            <!-- end upper main stats -->
            
<!-- css -->
<link rel="stylesheet" href="/Git/epm/project/Public/css/compiled/form-showcase.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/validation/layer/skin/layer.css" />

	

<!-- js -->
<script type="text/javascript" src="/Git/epm/project/Public/validation/layer/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/Git/epm/project/Public/validation/layer/layer.js"></script>
<script type="text/javascript" src="/Git/epm/project/Public/laydate/laydate.js" ></script>

<div class="content wide-content">
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">
            <form action="<?php echo U('Home/Personal/information');?>"  method="post" enctype='multipart/form-data'>
            <input type="hidden" name='oldimg' value="<?php echo ($user["imgurl"]); ?>" />
                <!-- avatar column -->
                <div class="span3 avatar-box">
                    <div class="personal-image">
                        <img src="/Git/epm/project/Public/<?php echo ($user["imgurl"]); ?>" class="avatar img-circle" style='width:150px;height:150px;'>
                        <br />
                        &nbsp;&nbsp;<span style="font-size:16px;">用户名：</span><b><a href="information.html" style="cursor:pointer;"><?php echo ($user["username"]); ?></b></a>
                        <br />
                        &nbsp;&nbsp;<span style="font-size:16px;">姓名：</span><b><a href="information.html" style="cursor:pointer;"><?php echo ($user["truename"]); ?></b></a>
                        <br />
                        &nbsp;&nbsp;<span style="font-size:16px;">年龄：</span><b><a href="information.html" style="cursor:pointer;"><?php echo ($user["age"]); ?></b></a>
                        <br />
<<<<<<< HEAD
                        <br />
=======
>>>>>>> 86f138c2f68c50d76527190e7cc7d8961c48289d
                        <p>上传图片...</p>          
                       	
						<input  type="file" name="img" id="filesimg" value="" />
                    </div>
                   
                </div>

                <!-- edit form column -->
                <div class="span9 personal-info">
                    <div class="alert alert-info">
                        <i class="icon-lightbulb"></i>
                        请填写个人真实信息：)
                        <br><h3>个人信息资料：</h3>
                    </div>
                    <h6 class="personal-title"></h6>

                   
                        <div class="field-box">
                        	<table >
	                        	<tr>
		                        	<td>
			                            <label style='color:#4993C6;'>真实姓名：</label>
			                            <input class="span4 inline-input"  name="tname" value="<?php echo ($user["truename"]); ?>" id="tname" type="text"  />
		                            </td>
	                            	<td>
		                            	<label style='color:#4993C6;'>身份证：</label>
		                            	<input class="span5 inline-input"  name="identcard" value="<?php echo ($user["identcard"]); ?>" id='identcard' type="text"  />
		                           </td>
                            	</tr>
                            </table>
                        </div>
                       
                        <div class="field-box">
                        	<table >
	                        	<tr>
		                        	<td>
			                            <label style='color:#4993C6;'>手机号：</label>
			                            <input class="span4 inline-input"  name="phone" id="phone" value="<?php echo ($user["phone"]); ?>" type="text"  />
		                            </td>
	                            	<td>
	                            		<label style='color:#4993C6;'>邮箱：</label>
                            			<input class="span5 inline-input"  name="email" id="email" value="<?php echo ($user["email"]); ?>" type="text"  />
                            		</td>
                            	</tr>
                            </table>
                        </div>

                        <div class="field-box">
                        <label style='color:#4993C6;'>性别：</label>
                        	<table>
	                        	<tr>
		                        	<td>
	                                    <label class="radio">
	                                        <div id="uniform-optionsRadios1" class="radio"><span class="checked"><input name="sex" id="optionsRadios1" value="2" <?php if(($user["sex"] == '2') OR ($user["sex"] == '2') ): ?>checked<?php endif; ?> type="radio" />男</span></div>
	                                    </label>
		                            </td>
		                            <td >
	                                    <label class="radio">
	                                        <div id="uniform-optionsRadios2" class="radio"><span><input name="sex" id="optionsRadios2" value="1" <?php if($user["sex"] == '1' ): ?>checked<?php endif; ?> type="radio" />女</span></div>
	                                    </label>
			                        </td>			                      
                            	</tr>
                            </table>
                        </div>

                        <div class="field-box">
	                        <table style="height:1px;margin-top:-10px;">
		                        <tr>
			                        <td>
										<input disabled class="span4 inline-input" style="height:1px;" type="text"  />
									</td>
									<td>
										<input disabled class="span5 inline-input" style="height:1px;"  type="text"  />
									</td>
								</tr>
							</table>
						</div>
        
						<div class="field-box">
							<table >
	                        	<tr>
		                        	<td>
			                            <label style='color:#4993C6;'>生日：</label>
										<input placeholder="请输入日期,格式xxxx-xx-xx" name="birthday" id="birthday" value="<?php echo ($user["birthday"]); ?>" class="span4 inline-input laydate-icon" onclick="laydate()" type='text' />
		                            </td>
	                            	<td>
	                            		<label style='color:#4993C6;'>入职日期：</label>
										<input  value="<?php echo ($user["workday"]); ?>" disabled class="span5 inline-input " type='text' />
                            		</td>
                            	</tr>
                            </table>                            
                        </div>

						<div class="field-box">
                        	<table >
	                        	<tr>
		                        	<td>
			                            <label style='color:#4993C6;'>所属部门：</label>
			                            <input disabled class="span4 inline-input"  value="<?php echo ($user["depart"]); ?>" type="text"  />
		                            </td>
	                            	<td>
	                            		<label style='color:#4993C6;'>职位：</label>
                            			<input disabled class="span5 inline-input"  value="<?php echo ($user["job"]); ?>" type="text"  />
                            		</td>
                            	</tr>
                            </table>
                        </div>

                        <div class="field-box">
                        	<table >
	                        	<tr>
		                        	<td>
			                            <label style='color:#4993C6;'>最后一次登录时间：</label>			                            
			                            <input disabled class="span4 inline-input"  value="<?php echo ($user["lastlogintime"]); ?>"  type='text' />
		                            </td>
	                            	<td>
	                            		&nbsp;
                            		</td>
                            	</tr>
                            </table>
                        </div>

                        <div class="span6 field-box actions">
                            <input class="btn-glow primary" value="保      存" type="submit" id="sbmbtn" style="position:relative;left:12%;top:20px;" />                          	
                            <button  class="btn-flat gray" style="position:relative;left:35%;top:20px;"  type="reset">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                        </div>
                    
                </div>
            </form>
            </div>
        </div>
    </div>

	


    <script>
    var validate = Array(false,false,false,false,false);

	;!function(){
		
		//日期皮肤
		laydate.skin('default');

		//验证
		$("#tname").on("blur",function(){
			    var tname = $(this).val();
			   	
			    if(tname === '' ){
			    	layer.tips('姓名不可以为空！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	
			    	validate[0] = false;	
			    	
			    }else if(/^[a-zA-Z ]{5,30}$/.test(tname) ||  /^[\u4e00-\u9fa5]{2,10}$/.test(tname) ){
			    	layer.tips('√', this, {tips: [1, 'rgba(0,128,0,0.65)'],tipsMore: true});
			    	validate[0] = true;
		    	
			    }else{
			    	layer.tips('姓名为5~30位字母或者2~10个汉字！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});	
			    	
			    	validate[0] = false;	
			    }
			    
		});

		$("#identcard").on("blur",function(){
			    var identcard = $(this).val();
			   	
			    if(identcard === '' ){
			    	layer.tips('年龄不可以为空！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	validate[1] = false;	
			    }else if(/^([1-9]\d{16}[0-9Xx]{1})|([1-9]\d{13}[0-9Xx]{1})$/.test(identcard) ){
			    	layer.tips('√', this, {tips: [1, 'rgba(0,128,0,0.65)'],tipsMore: true});
			    	validate[1] = true;	
			    }else{
			    	layer.tips('身份证号码格式错误！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	validate[1] = false;		
			    }			   
			    
		});

		$("#phone").on("blur",function(){
			    var phone = $(this).val();
			   	
			    if(phone === '' ){
			    	layer.tips('手机号不可以为空！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	
			    	validate[2] = false;	
			    }else if(/^1[3458]\d{9}$/.test(phone)){
			    	layer.tips('√', this, {tips: [1, 'rgba(0,128,0,0.65)'],tipsMore: true});
			    	validate[2] = true;			    	
			    }else{
			    	layer.tips('手机号格式错误！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	
			    	validate[2] = false;		
			    }			    
			    
		});

		$("#email").on("blur",function(){
			    var email = $(this).val();
			   	
			    if(email === '' ){
			    	layer.tips('邮箱不可以为空！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	
			    	validate[3] = false;	
			    	
			    }else if(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(email)){
			    	layer.tips('√', this, {tips: [1, 'rgba(0,128,0,0.65)'],tipsMore: true});
			    	validate[3] = true;			    	
			    }else{
			    	layer.tips('邮箱格式错误！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});	
			    	
			    	validate[3] = false;	
			    }			    
			    
		});

		$("#birthday").on("blur",function(){
			    var birthday = $(this).val();
			   	
			    if(birthday === '' ){
			    	layer.tips('出生日期不可以为空！', this, {tips: [1, 'rgba(255,0,0,0.65)'],tipsMore: true});
			    	
			    	validate[4] = false;	
			    }else if(/^\d{4}-(?:(?:0[13-9]|1[12])-(?:0[1-9]|[12]\d|30)|(?:0[13578]|1[02])-31|02-(?:0[1-9]|1\d|2[0-8]))|(?:(?:\d{2}(?:[13579][26]|[2468][048])|(?:[13579][26]|[2468][048])00)-02-29)$/.test(birthday)){
			    	layer.tips('√', this, {tips: [1, 'rgba(0,128,0,0.65)'],tipsMore: true});
			    	validate[4] = true;			    	
			    }else{
			    	layer.tips('日期格式错误！', this, {tips: [1, 'rgba(255,0,0,0.65)'] , tipsMore: true});	
			    	
			    	validate[4] = false;	
			    }			    
			    
			    
		});

	}();

	


	$('form').submit(function(){
		$('input').focus();
		$('input').blur();
		if(validate[0] && validate[1] && validate[2] && validate[3] &&validate[4]){
			return true;
		}else{
			return false;
		}
	})



	</script>

	<!-- scripts -->
    <script src="/Git/epm/project/Public/js/jquery-latest.js"></script>
    <script src="/Git/epm/project/Public/js/bootstrap.min.js"></script>
    <script src="/Git/epm/project/Public/js/theme.js"></script>

            
        </div>
    </div>	
    
    
</body>
</html>