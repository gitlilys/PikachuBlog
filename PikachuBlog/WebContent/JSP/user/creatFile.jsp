<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
		<title>新建文章</title>
	</head>
	<body>
		<textarea name="myeditor" rows="5" cols="60"></textarea>
		<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
		</script>
	</body>
</html>