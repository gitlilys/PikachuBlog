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
	<textarea id="myeditor" name="myeditor" rows="5" cols="60">${content}</textarea>

	<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
	</script>
	
	</body>
</html>