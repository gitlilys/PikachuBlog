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
		<title>左边导航栏</title>
	</head>
	<style>
		.total {
			margin-top: 40px;
			width: 229px;
		}
		
		body {
			background-color: rgba(0, 0, 0, 0.9);
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
			color: #EEDD82;
		}
		
		ul>li>a>span {
			color: antiquewhite;
		}
		
		ul>li>a {
			text-decoration: none;
			color: #000000;
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
	<script>
			
	$(function(){
		var arr = new Array(1,2,3);
		var arrj = new Array(1,2,3);
		
		$.each(arr,function(i,n){
			var j=1;
			var flag = 0;
			//收缩菜单
			$("#th" + i).click(function(){                                                                              
				if (j==1) {
					$("#th"+i + " > img").attr("src","../../img/u4.png");
					$(".t1 > #tb"+i+ " > ul > li").hide();
					j = 0;
				}else{
					$("#th"+i + " > img").attr("src","../../img/u4_selected.png");
					$(".t1 > #tb"+i+ " > ul > li").show();
					j = 1;
				}		
			});
		});
	});
	</script>
	<body>
		<div class="total">
			<div class="t1">
				<div class="th" id="th1">
					<img src="../../img/u4_selected.png"/>
					<span>用户管理</span>
				</div>
				<div class="tb" id="tb1">
					<ul>
						<li id="tb11"><a href="adminGuanli.jsp" target="right"><span>用户管理</span></a></li>
					</ul>
				</div>
			</div>
			<div class="t1">
				<div class="th" id="th2">
					<img src="../img/u4_selected.png"/>
					<span>审核</span>
				</div>
				<div class="tb" id="tb2">
					<ul>
						<li><a href="pinglunShenghe.jsp" target="right"><span>评论审核</span></a></li>
						<li><a href="paperShenghe.jsp" target="right"><span>文章审核</span></a></li>
						<li><a href="fileShenghe.jsp" target="right"><span>文件审核</span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
