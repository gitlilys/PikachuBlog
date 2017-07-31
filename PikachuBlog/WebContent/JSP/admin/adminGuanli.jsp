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
	
	<script>
//		$(function(){
//			$("tbody tr:even").addClass("even");
//			$("tbody tr:odd").addClass("odd");
//		});
	</script>
	<body>
		 <div class="container"> 
 <table style="width: 700px;" class="table table-striped table-hover table-bordered"> 
				<thead>
					<tr>
						<th>账户名</th>
						<th>身份</th>
						<th>状态</th>
						<th>用户状态</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var='i' begin='0' end='${fn:length(list)-1}'>
					<tr>
						<td>${list[i].user_name}</td>
						<td>${list[i].user_role}</td>
						<td>${list[i].user_enable}</td>
						<td><button id="button" onclick="btn()" type="button" class="btn btn-success">禁止</button></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<script type="text/javascript">
			function btn() {
				var html1='允许';
				var html2='禁止';
				var buttonValue= document.getElementById('button').innerHTML;
				if(buttonValue == "禁止") {
					document.getElementById('button').innerText = html1;
				} else {
					document.getElementById('button').innerText = html2;
				}
			}	
		</script>	
	</body>
</html>
