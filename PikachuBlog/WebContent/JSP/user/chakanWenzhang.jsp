<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
		<title>查看文章</title>
	</head>
	<body>
	标题:&nbsp;<textarea rows="1" cols="50">${content.blog_title}</textarea>
	<textarea id="myeditor" name="myeditor" rows="5" cols="60">${content.blog_content}</textarea>
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