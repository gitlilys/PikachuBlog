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
		<script type="text/javascript">
			window.location="${pageContext.request.contextPath}/blog/findPaperByUser?userId=${NOWUSER.user_name}&enable=1"	
		</script>
	</body>
</html>
