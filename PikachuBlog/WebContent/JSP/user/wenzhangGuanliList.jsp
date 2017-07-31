<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="../../js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.js" ></script>
		<link rel="stylesheet" href="../../css/bootstrap.css" />
		<title>文章管理</title>
	</head>
	<body>
		<br><br>
		<div class="container"> 
 		<table style="width: 1000px;" class="table table-striped table-hover table-bordered"> 
 		<thead>
 			<tr>
 				<th>序号</th>	
 				<th>文章</th>
 				<th>创作时间</th>
 				<th>操作</th>
 			</tr>	
 		</thead>
 		
		<c:forEach var='i' begin='1' end='${fn:length(listUser)}'>
		<tbody>
			<tr>
				<td>${i}</td>
				<td><a href="${pageContext.request.contextPath}/blog/findPaperById?id=${listUser[i-1].blog_id}&type=0">${listUser[i-1].blog_title}</a> </td>
				<td><fmt:formatDate value="${listUser[i-1].blog_createtime}" pattern="yyyy-MM-dd hh:mm"/> </td>
				<td>
				<form action="${pageContext.request.contextPath}/blog/deletePaperById?id=${listUser[i-1].blog_id}&type=1" method="post">
					<button type="submit"  class="btn btn-success">删除</button>
				</form>
				</td>
			</tr>
		</tbody>
		</c:forEach>
		</table>
		</div>

	</body>
</html>
