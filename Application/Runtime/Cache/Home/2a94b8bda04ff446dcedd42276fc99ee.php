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
            
	<div id="main-stats">
	    <div class="row-fluid stats-row">
	        <div class="span3 stat">
	            <div class="data">
	                <span class="number"><?php echo ($name); ?></span>
	                visits
	            </div>
	            <span class="date">Today</span>
	        </div>
	        <div class="span3 stat">
	            <div class="data">
	                <span class="number">3240</span>
	                users
	            </div>
	            <span class="date">February 2014</span>
	        </div>
	        <div class="span3 stat">
	            <div class="data">
	                <span class="number">322</span>
	                orders
	            </div>
	            <span class="date">This week</span>
	        </div>
	        <div class="span3 stat last">
	            <div class="data">
	                <span class="number">$2,340</span>
	                sales
	            </div>
	            <span class="date">last 30 days</span>
	        </div>
	    </div>
	</div>

	
	Home/Index/index

	<!-- scripts -->
    <script src="/Git/epm/project/Public/js/jquery-latest.js"></script>
    <script src="/Git/epm/project/Public/js/bootstrap.min.js"></script>
    <script src="/Git/epm/project/Public/js/theme.js"></script>
    

            
        </div>
    </div>	
    
    
</body>
</html>