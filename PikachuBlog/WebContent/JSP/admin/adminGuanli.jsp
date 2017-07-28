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
		<link rel="stylesheet" href="../../css/style.css" />
		<title>用户管理</title>
	</head>
	<style>
		body{
			background-color: rgba(0,0,0,0.7);
		}
		.main{
			margin: 50px 100px;
			color: gainsboro;
		}
		th{
			text-align: center;
			color: #EEDD82;
			background-color:rgba(87,96,105,0.7);
		}
		tr{
			text-align: center;
			background-color:rgba(87,96,105,0.7);
		}
	</style>
	<script>
//		$(function(){
//			$("tbody tr:even").addClass("even");
//			$("tbody tr:odd").addClass("odd");
//		});
	</script>
	<body>
		<div class="main">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>账户名</th>
						<th>身份</th>
						<th>状态</th>
						<th>禁止登陆</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var='i' begin='1' end='${fn:length(list)}'>
					<tr>
						<td>${list[i].user_name}</td>
						<td>${list[i].user_role}</td>
						<td>${list[i].user_enable}</td>
						<td><input type="checkbox" name="enable" /></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>
