<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>s
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="../../js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../../css/bootstrap.css" />
		<link rel="stylesheet" href="../../css/普通用户登录成功/文章管理.css" />
		<script type="text/javascript" src="../../js/普通用户登录成功/文章管理.js" ></script>
		<title>文章管理</title>
	</head>
	<body>
		<div id="total">
			<form action="#" method="post">
				<div id="main">
					<!--//全选和删除-->
					<div id="top" class="row">
						<div class="col-md-8"></div>
						<div class="col-md-4 selectAll">
							<input type="checkbox" name="selectAll" />
							<button type="submit" class="btn btn-default navbar-btn submi">全选</button>
							<button type="submit" class="btn btn-default navbar-btn submi">删除</button>
						</div>
					</div>
					<!--文章-->
					<div id="articles">
						<div class="row row1">
							<div class="col-md-6 left select">
								<input type="checkbox" name="first" />
								<div class="content">
									文章内容
								</div>
							</div>
							<div class="col-md-6 right select">
								<input type="checkbox" name="second" />
								<div class="content">
									文章内容
								</div>
							</div>
						</div>
						<div class="row row1 row2">
							<div class="col-md-6 left select">
								<input type="checkbox" name="third" />
								<div class="content">
									文章内容
								</div>
							</div>
							<div class="col-md-6 right select">
								<input type="checkbox" name="four" />
								<div class="content">
									文章内容
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>
