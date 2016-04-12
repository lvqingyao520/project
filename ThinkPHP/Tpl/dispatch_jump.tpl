<?php
    if(C('LAYOUT_ON')) {
        echo '{__NOLAYOUT__}';
    }
    

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跳转提示</title>
<style type="text/css">
body {

	padding-top: 120px;
    color: #9ea7b3 !important;
    font-family: '微软雅黑';
    font-size: 13px !important;
    overflow-x: hidden !important;
    min-height: 100%;
    z-index: -2;
    margin: 0px !important;
    background: url('__PUBLIC__/img/bgs/bg.jpg') no-repeat top center fixed;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.page-error {
    min-width: 200px;
}
.page-error {
    padding: 15px;
    margin: 30px 0 0;
    width: 50%;
    margin: 0 auto;
    position: relative;
    z-index: 5000;
}
div.error-content {
	font-size: 20px;
    color: #fff;
}
.headline.text-info {
    color: #fff;
    font-size: 45px;
    font-weight: bold;
    letter-spacing: 1px;
}


</style>
</head>
<body>
<section class="page-error">
<div class="error-page">

<?php if(isset($message)) {?>

<h2 class="headline text-info"><?php echo($message); ?></h2>
<?php }else{?>

<h2 class="headline text-info"><?php echo($error); ?></h2>
<?php }?>
<!-- <p class="detail"></p>
<p class="jump"> -->
<div class="error-content">
<h3>页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a></h3><p> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b>
</p>
</div>
</div>

 </section>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time <= 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>

</body>
</html>
