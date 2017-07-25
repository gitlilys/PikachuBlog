<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>页面</title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/jquery-2.1.4.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<link rel="stylesheet" href="css/首页/首页.css" />
		<script type="text/javascript" src="js/首页/首页.js" ></script>
	</head>
	<body>
		<div class="container-fluid" id="body">
			<!--logo部分-->
			<div class="row" id="logo">
				<div class="col-lg-10 col-md-10 col-sm-6 col-xs-6" id="logo1" >
					<span>PIPACHU'S&nbsp;&nbsp;&nbsp;BLOG</span>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
					<div id="regist" class="col-md-6 col-sm-6 col-xs-6 head">
						<a href="JSP/regester.jsp"><span>注册</span></a> 	
					</div>
					<div id="login" class="col-md-6 col-sm-6 col-xs-6 head">
						<a href="JSP/login.jsp"><span>登录</span></a>
					</div>

				</div>
			</div><!--logo部分结束-->
                  
			<!--主体部分,包括轮播图和文章-->
			
		
		<div class="row" id="main">
		<!--轮播图-->
		<div id="imgs">
			<!--总的显示部分-->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		  	<!--图片两边阴影的三个圆圈-->
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active col-md-12 col-sm-12 col-xs-12">
		      <a href="#"><img src="img/13.jpg" alt="..."></a>
		      
		      <div class="carousel-caption">
		        
		      </div>
		    </div>
		    <div class="item col-md-12 col-sm-12 col-xs-12">
		      <a href="#"><img src="img/14.jpg" alt="..."></a>
		      <div class="carousel-caption">
		       
		      </div>
		    </div>
		    <div class="item col-md-12 col-sm-12 col-xs-12">
		    	
		      <a href="#"><img src="img/18.jpg" alt="">
		      	
		      </a>
		      <div class="carousel-caption">
		        
		      </div>
		    </div>
		    
		  </div>
		
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		</div><!--轮播图结束-->
		
		<c:forEach var='i' begin='1' end='${fn:length(list)}'>
			<a href="${pageContext.request.contextPath}/blog/findPaperById?id=${list[i-1].blog_id}&type=1">${list[i-1].blog_title}</a> <br>
		</c:forEach>
		
	</body>
	
</html>
