<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>管理员登录成功</title>
	</head>
	<frameset cols="20%,*"  border="0" >
			<frame src="left.jsp"/>
			<frameset rows="15%,*">
				<frame src="top.jsp" />
				<frame  src="${pageContext.request.contextPath}/blog/adminGetUser" name="right" />
			</frameset>
	</frameset>
</html>
