<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">  
    var start = 5;  
    var step = -1;  
    function count() {  
        document.getElementById("div1").innerHTML = "激活成功！页面将在" + start+ "秒后跳转到首页";  
        start += step;  
        if (start <= 0) {  
            start = 5;  
            window.location = "../../preindex.jsp";//重定位  
        }  
        setTimeout("count()", 1000);  
    }  
    window.onload = count;  
	</script>
</head>
<body>
	
	<!-- 
		<font size="10" style="margin-left: 20">激活成功！5秒后跳转至首页！</font> <br><br>
		<a href="http://127.0.0.1:8080/PikachuBlog/" style="font-size: 10">http://127.0.0.1:8080/PikachuBlog/</a>
		response.setHeader("refresh","5;url=XXX");
		<meta http-equiv="refresh" content="5;url=../../preindex.jsp"> 
	 -->
	 <div id="div1"></div>
	
</body>
</html>