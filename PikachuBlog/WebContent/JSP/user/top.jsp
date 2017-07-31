<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="../../js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../../css/bootstrap.css" />
	</head>
	<style>
		body{
			background-color: rgba(255,255,255,0.7);
		}
		.main{
			width: 1070px;
			margin-top: 20px;
		}
		span{
			color: gainsboro;
		}
	</style>
	<body>
	<div class="row main">
			<!--logo部分-->
			<div class="col-md-9">
				<div class="main_container_left">
					<span><h3>皮&nbsp;卡&nbsp;丘&nbsp;博&nbsp;客&nbsp;系&nbsp;统
					<a target="_top" href="../sulog.jsp"><span class="glyphicon glyphicon-user"></span> 首页	
					 </a></h3></span>
				</div>
			</div>
			<!--头像-->
			<div class="col-md-3">
				<div class="main_container_right">
					<img src="../../img/u=1708949714,1776242730&fm=26&gp=0.jpg" class="img-circle" width="50px" height="50px">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<span>用户：${NOWUSER.user_name}</span>
				</div>
			</div>
		</div>
											
	</body>
</html>
