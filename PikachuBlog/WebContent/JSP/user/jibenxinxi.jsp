<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../../css/bootstrap.css" />
		<script type="text/javascript" src="../../js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../../css/普通用户登录成功/基本信息.css" />
		<title>基本信息</title>
	</head>
	<body>
		<div id="total">
			<div id="main">
				<div id="top">
					<div id="t1">
						<span>基本信息</span>
					</div>
					<div id="t2">
						<img src="../../img/u=1708949714,1776242730&fm=26&gp=0.jpg" width="50px" height="50px" class="img-circle">
					</div>
				</div>
				<div id="center">
					
					<div class="c1">
						<span>用户名：</span>
						<input type="text" name="username" value=${NOWUSER.user_name} />
					</div>
					<div class="c1">
						<span>昵称：&nbsp;&nbsp;&nbsp;</span>
						<input type="text" name="nickname" />
					</div>
					<div class="c1">
						<span>QQ号：&nbsp;</span>
						<input type="text" name="qq" />
					</div>
					<div class="c1">
						<span>备注：&nbsp;&nbsp;</span>
						<input type="text" name="remark" /> 
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
