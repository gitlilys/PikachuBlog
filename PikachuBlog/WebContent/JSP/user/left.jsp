<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>左边导航栏</title>
		<script type="text/javascript" src="../../js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../../css/bootstrap.css" />
		<script type="text/javascript" src="../../js/普通用户登录成功/left.js"></script>

	</head>
	<style>
		.total {
			margin-top: 40px;
			width: 180px;
		}
		
		body {
			background-color: rgba(255, 255, 255, 0.9);
			height: 495px;
		}
		
		html {
			border-right: 1px solid darkgray;
		}
		
		.t1>.tb {
			margin-left: 20px;
			margin-top: 20px;
		}
		
		.t1>.th {
			margin-left: 30px;
		}
		
		.th>img {
			margin-right: 10px;
		}
		
		.th>span {
			font-size: larger;
			color: #8B5A00;
		}
		
		ul>li>a>span {
			color: antiquewhite;
		}
		
		ul>li>a {
			text-decoration: none;
			color: #8B5A00;
		}
		
		ul>li {
			list-style: none;
			height: 30px;
			line-height: -moz-block-height;
		}
		
		ul {
			border-style: none;
		}
	</style>
	<body>
		<!--显示左边导航的列表-->
		<div class="total">
			
			<div class="t1">
				<div class="th" id="th1">
					<img src="../../img/u4_selected.png"/>
					<span>个人信息</span>
				</div>
				<div class="tb" id="tb1">
					<ul>
						<li id="tb11"><a href="jibenxinxi.jsp" target="right"><span>基本信息</span></a></li>
						<li id="tb12"><a href="update.jsp" target="right"><span>修改信息</span></a></li>
					</ul>
				</div>
			</div>
			<div class="t1">
				<div class="th" id="th2">
					<img src="../../img/u4_selected.png"/>
					<span>文章</span>
				</div>
				<div class="tb" id="tb2">
					<ul>
						<li><a href="creatFile.jsp" target="right"><span>新建文章</span></a></li>
						<li><a href="wenzhangGuanli.jsp" target="right"><span>文章管理</span></a></li>
						<li><a href="caogao.jsp" target="right"><span>草稿箱</span></a></li>
					</ul>
				</div>
			</div>
			<div class="t1">
				<div class="th" id="th3">
					<img src="../../img/u4_selected.png"/>
					<span>文件上传</span>
				</div>
				<div class="tb" id="tb3">
					<ul>
						<li><a href="../../ckfinder/ckfinder.html" target="right"><span>文件管理</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		
	</body>
</html>
