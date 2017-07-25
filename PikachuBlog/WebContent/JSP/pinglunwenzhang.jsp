<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
		<title>查看文章</title>
	</head>
	<body>
	标题:&nbsp;<textarea rows="1" cols="50">${content.blog_title}</textarea>
	<textarea id="myeditor" name="myeditor" rows="5" cols="60">${content.blog_content}</textarea>
	<button id="comment" onclick="comment()">评论</button>

	<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
	</script>
	
	<script type="text/javascript">
		function comment() {
			alert("请评论");
		}
	</script>
	
	</body>
</html>