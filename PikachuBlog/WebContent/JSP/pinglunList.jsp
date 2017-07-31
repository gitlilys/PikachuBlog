<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="../css/bootstrap.min.css">  
		<script src="../css/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
		<title>查看文章</title>
	</head>
	<body>
	<div class="input-group input-group-lg">
			<span class="input-group-addon">标题</span>
				<textarea rows="1" cols="50" readonly="readonly" style="resize: none" class="form-control">${content.blog_title}</textarea>
		</div><br>
	<textarea id="myeditor" name="myeditor" rows="5" cols="60" readonly="readonly" >${content.blog_content}</textarea> <br><br>
	<c:forEach var='i' begin='1' end='${fn:length(commentList)}'>
		[用户:${commentList[i-1].comment_user}]: ${commentList[i-1].comment_content} <br>
	</c:forEach>
	<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
	</script>
	
	</body>
</html>