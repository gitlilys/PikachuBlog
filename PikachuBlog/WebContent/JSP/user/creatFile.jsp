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
		<link rel="stylesheet" href="../../css/普通用户登录成功/新建文章.css" />
		<title>新建文章</title>
	</head>
	<body>
		<div id="total">
			<form action="#" method="post">
			<div id="main">
				<div id="header">
					<input type="text" name="header" value="标题部分" />
				</div>
				<div id="article">
					<textarea >
						内容部分
					</textarea>
				</div>
				<div id="bottom">
					
					<button type="submit" class="btn btn-default navbar-btn submi">保存</button>
					&nbsp;&nbsp;&nbsp;
					<button type="submit" class="btn btn-default navbar-btn submi">提交</button>
					
				</div>
			</div>
			</form>
		</div>
	</body>
</html>
