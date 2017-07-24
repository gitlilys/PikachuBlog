<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="../../js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../../css/bootstrap.css" />
		<link rel="stylesheet" href="../../css/普通用户登录成功/草稿箱.css" />
		<title>草稿箱</title>
	</head>
	<body>
		<c:forEach var='i' begin='1' end='${fn:length(list)}'>
			<a href="${pageContext.request.contextPath}/blog/findPaperById?${list[i-1].blog_id}">${list[i-1].blog_content}</a>
		</c:forEach>
	</body>
</html>
