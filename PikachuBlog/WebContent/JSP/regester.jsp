<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<!--head部分-->
<head>
<title>Blog Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Awesome Login Form Responsive Widget,皮卡丘,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />

<!--导入js文件-->
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script src="../js/jquery.vide.min.js"></script>

<!--页面加载函数，加载时执行函数（将页面滚动到0,1坐标）-->
<script type="application/x-javascript"> 
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 
</script>


<!--导入css样式文件-->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" /> 
<link rel="stylesheet" href="../css/font-awesome.css">
<link href="//fonts.googleapis.com/css?family=Philosopher:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,vietnamese" rel="stylesheet">
</head>
<!--end head-->
<!--body部分-->
<body>
	<!--以视频作为页面背景-->
<div data-vide-bg="../video/social2">
	<div class="center-container">
		<!--大标题header-->
		<div class="header-w3l">
			<h1>PIKACHU'S&nbsp;&nbsp;&nbsp;BLOG</h1>
		</div>
		
		<div class="main-content-agile">
			<div class="wthree-pro">
				<h2>Regester Now</h2>
			</div>
			
			<div class="sub-main-w3">
				<form action="${pageContext.request.contextPath}/blog/regester" method="post">
					<input placeholder="邮箱" id="name" name="name" type="email" required="">
					<input  placeholder="密码" id="password" name="password" type="password" required="">
					<input  placeholder="确认密码" id="rqpassword" name="AgainPassword" type="password" required="">
					<input type="submit" value="注册" id="submi">
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