<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
		<title>查看文章</title>
	</head>
	<body>
	标题:&nbsp;<textarea rows="1" cols="50" readonly="readonly" style="resize: none">${content.blog_title}</textarea>
	<textarea id="myeditor" name="myeditor" rows="5" cols="60" readonly="readonly" >${content.blog_content}</textarea> <br><br>
	<c:forEach var='i' begin='0' end='${fn:length(commentList)-1}'>
		[用户${commentList[i].comment_user}]: ${commentList[i].comment_content} <br>
	</c:forEach>
	<form action="${pageContext.request.contextPath}/blog/addComment?id=${paperId}" method="post">
		<textarea id="cmt" name="cmt" rows="7" cols="120" style="resize: none"></textarea> <br>
		<input type="submit" id="comment" style="margin-left: 780px;" value="评论">
	</form>

	<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
	</script>
	
	</body>
</html>