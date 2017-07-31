<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	<title>新建文章</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">  
	<script src="../../css/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
	</head>
	<body>
	<form id="input" action="${pageContext.request.contextPath}/blog/savePaper?name=${NOWUSER.user_name}" method="post" >	
		<div class="input-group input-group-lg">
			<span class="input-group-addon">标题</span>
				<textarea rows="1" cols="50" id="title" name="title" class="form-control"></textarea>
		</div><br>
		<textarea id="myeditor" name="myeditor" rows="5" cols="60"></textarea>
		<input style="float: right;" type="submit" name="submit" value="保存" class="btn btn-success">
		<input style="float: right;" type="submit" name="submit" value="提交" class="btn btn-success">	
	</form>
		
	<script type="text/javascript">
		window.onload=function() {
			CKEDITOR.replace('myeditor');	
		}
	</script>
	
	</body>
</html>