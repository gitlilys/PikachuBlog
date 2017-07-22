<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>测试</title>
</head>
<body>
	<h1>测试框架集成</h1>
	<form action="${pageContext.request.contextPath}/blog/regester" method="post">
		<div>
			<input id="name" name="name" type="text">
		</div>
		<div>
			<input id="password" name="password" type="password">
		</div>
		<div>
			<input type="submit" value="注册"> 
		</div>
	</form>
</body>
</html>