<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>修改信息</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">  
	<script src="../../css/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
</head>
<body>

<div style="padding: 100px 100px 10px;">
		<div class="input-group input-group-lg">
			<span class="input-group-addon">用户名</span>
			<input type="text" class="form-control" placeholder="${NOWUSER.user_name}">
		</div><br>
		<div class="input-group input-group-lg">
			<span class="input-group-addon">昵&nbsp;&nbsp;&nbsp;称</span>
			<input type="text" class="form-control" placeholder="***">
		</div><br>
		<div class="input-group input-group-lg">
			<span class="input-group-addon">QQ&nbsp;号</span>
			<input type="text" class="form-control" placeholder="***">
		</div><br>
		<div class="input-group input-group-lg">
			<span class="input-group-addon">备&nbsp;&nbsp;&nbsp;注</span>
			<input type="text" class="form-control" placeholder="***">
		</div><br>
		<input style="float: right;" type="button" value="修改" class="btn btn-success">
</div>


</body>
</html>