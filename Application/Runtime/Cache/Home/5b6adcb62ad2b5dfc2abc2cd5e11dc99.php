<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html class="login-bg">
<head>
	<title>Detail Admin - Sign in</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="/Git/epm/project/Public/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="/Git/epm/project/Public/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="/Git/epm/project/Public/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="/Git/epm/project/Public/css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="/Git/epm/project/Public/css/compiled/signin.css" type="text/css" media="screen" />

 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


    <!-- background switcher -->
    <div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="#" data-img="landscape.jpg" class="bg active">
                <img src="/Git/epm/project/Public/img/bgs/landscape.jpg" />
            </a>
            <a href="#" data-img="blueish.jpg" class="bg">
                <img src="/Git/epm/project/Public/img/bgs/blueish.jpg" />
            </a>            
            <a href="#" data-img="7.jpg" class="bg">
                <img src="/Git/epm/project/Public/img/bgs/7.jpg" />
            </a>
            <a href="#" data-img="8.jpg" class="bg">
                <img src="/Git/epm/project/Public/img/bgs/8.jpg" />
            </a>
            <a href="#" data-img="9.jpg" class="bg">
                <img src="/Git/epm/project/Public/img/bgs/9.jpg" />
            </a>
            <a href="#" data-img="10.jpg" class="bg">
                <img src="/Git/epm/project/Public/img/bgs/10.jpg" />
            </a>
            <a href="#" data-img="11.jpg" class="bg">
                <img src="/Git/epm/project/Public/img/bgs/11.jpg" />
            </a>
        </div>
    </div>


    <div class="row-fluid login-wrapper">
        <a href="index.html">
            <img class="logo" src="/Git/epm/project/Public/img/logo-white.png" />
        </a>

        <div class="span4 box">
            <form action="<?php echo U('Home/Login/login');?>" method="post" >
                <div class="content-wrap">
                    <h6>欢 迎 登 录</h6>
                    <div class="span12">
                        <input class="span12" type="text" name="uname" placeholder="请输入您的账号" />
                    </div>
                    <div class="span12">
                        <input class="span12" type="password" name="password" placeholder="请输入您的密码" />
                    </div>
                    <a href="#" class="forgot">忘记 <b>密 码</b>?</a>
                    <!-- <div class="remember">
                        <input id="remember-me" type="checkbox" />
                        <label for="remember-me">Remember me</label>
                    </div> -->
                    <div class='span12'>
                        <input class="span6" type="text" name="chkcode" placeholder="请输入验证码" style='float:left;' />
                        <img  class='span6' style="height:40px;cursor:pointer" src="<?php echo U('Home/Login/chkCode');?>" id="codeimage" />
                    </div>
                    <br />
                    <button class="btn-glow primary login" href="<?php echo U('Home/Login/login');?>" >进  入</button>

                </div>
            </form>
        </div>

        <!-- <div class="span4 no-account">
            <p>Don't have an account?</p>
            <a href="signup.html">Sign up</a>
        </div> -->
    </div>

	<!-- scripts -->
    <script src="/Git/epm/project/Public/js/jquery-latest.js"></script>
    <script src="/Git/epm/project/Public/js/bootstrap.min.js"></script>
    <script src="/Git/epm/project/Public/js/theme.js"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
            // bg switcher
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");

                $("html").css("background-image", "url('/Git/epm/project/Public/img/bgs/" + bg + "')");
            });


            //chkCode change
            $("#codeimage").click(function(){
                $(this).attr('src', '<?php echo U("Home/Login/chkCode");?>'+'?ssid=' + Math.random());
            });

        });
    </script>

</body>
</html>