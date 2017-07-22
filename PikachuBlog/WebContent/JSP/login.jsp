<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!--head部分-->
<head>
<title>Blog Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Awesome Login Form Responsive Widget,皮卡丘,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />

<!--导入js文件-->
<script type="text/javascript" src="../../js/jquery-2.1.4.min.js"></script>
<script src="../../js/jquery.vide.min.js"></script>

<!--页面加载函数，加载时执行函数（将页面滚动到0,1坐标）-->
<script type="application/x-javascript"> 
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 
</script>


<!--导入css样式文件-->
<link rel="stylesheet" href="../../css/style.css" type="text/css" media="all" /> 
<link rel="stylesheet" href="../../css/font-awesome.css">
<link href="//fonts.googleapis.com/css?family=Philosopher:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,vietnamese" rel="stylesheet">
</head>
<!--end head-->
<!--body部分-->
<body>
	<!--以视频作为页面背景-->
<div data-vide-bg="../../video/social2">
	<div class="center-container">
		<!--大标题header-->
		<div class="header-w3l">
			<h1>PIKACHU'S&nbsp;&nbsp;&nbsp;BLOG</h1>
		</div>
		
		<div class="main-content-agile">
			<div class="wthree-pro">
				<h2>Login Now</h2>
			</div>
			
			<div class="sub-main-w3">
				<!--登录成功进入到成功页面-->
				<form action="#" method="get">
					<input placeholder="邮箱" name="email" type="email" required="">
					<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span>
					<input  placeholder="密码" name="Password" type="password" required="">
					<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
					<div class="rem-w3">
						<span class="check-w3"><input type="checkbox" />记住密码</span>
						<a href="#">忘记密码</a>
						<div class="clear"></div>
					</div>
					<input type="submit" value="登录" id="submi">
				</form>
			</div>
		</div>
		<!--footer-->
		<div class="footer">
			<p>&copy; 2017 Pikachu. All rights reserved | Design by <a href="#">Pikachu</a></p>
		</div>
		<!--//footer-->
	</div>
</div>

</body>
</html>