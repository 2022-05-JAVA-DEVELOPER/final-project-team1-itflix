<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>공지사항 상세페이지</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">
<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">
<!-- CSS files -->
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->
	
	<!--중앙 타이틀 화면 -->
	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>blog detail</h1>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>blog listing</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--중앙 타이틀 화면 -->
	
	<!-- 공지사항 상세페이지-->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="blog-detail-ct">
						<h1>${notice.n_title}</h1>
						<h5>
							<span class="time" style="font-size: 13pt">
							<fmt:formatDate	value="${notice.n_date}" pattern="yyyy/MM/dd" /></span>
						</h5>
						<hr>
						<img src="images/mylogo.png" alt="" width="500">
						<p>${notice.n_content}</p>
						<!-- share link -->
						<div class="flex-it share-tag">
							<div class="right-it">
								<h4><a href="bloglist">Back</a></h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 공지사항 상세페이지-->
	
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>