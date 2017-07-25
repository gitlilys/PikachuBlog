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
	<form id="input" action="${pageContext.request.contextPath}/blog/savePaper" method="post" >	
		标题:&nbsp;<textarea rows="1" cols="50" id="title" name="title" ></textarea>
		<textarea id="myeditor" name="myeditor" rows="5" cols="60"></textarea>
		<input type="submit" value="保存">	
	</form>
		
	<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
	</script>
	
	</body>
</html>