<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7 no-js" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 no-js" lang="en-US"><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>영화 검색</title>
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
	
<%
	String searchType = request.getParameter("searchType");
	String keyword = request.getParameter("keyword");
	if(searchType==null|| searchType.equals("")){
		response.sendRedirect("main");
		return;
	%>
	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->
	
	<!--중앙 타이틀 화면 -->
	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>Search Movie List</h1>
						<ul class="breadcumb">
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>검색어 xx에 연관된 Movie List</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--중앙 타이틀 화면 -->
	<!-- 메인 공지사항 리스트  -->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
				<%-- 
				
					<!--분류 보드바 -->
						<p>Found 총<span>${movieCount}개</span>	</p>
						
						
						
					<!--분류 보드바 -->
					<form name="f" method="Post">
						<div class="flex-wrap-movielist mv-grid-fw">
							<c:forEach items="${movieList}" var="movie">
								<div class="movie-item-style-2 movie-item-style-1">
									<img src="images/${movie.category.cg_name }/${movie.m_name }_1.jpg" alt="">
									<div class="hvr-inner">
										<a href="moviesingle?m_no=${movie.m_no}">Read more 
										<i class="ion-android-arrow-dropright"></i>
										</a>
									</div>
									<div class="mv-item-infor">
										<h6>
											<a href="#">${movie.m_name}</a>
										</h6>
										<p class="rate">
											<i class="ion-android-star"></i><span> ${movie.review.r_grade}</span>/5
										</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</form>
					
					 --%>
					
					
					<!--페이징 수정필요!!!!!!!!!!!!  -->
					<div class="topbar-filter">
						<label>Movies per page:</label><select><option
								value="range">20 Movies</option>
							<option value="saab">10 Movies</option></select>
						<div class="pagination2">
							<span>Page 1 of 2:</span><a class="active" href="#">1</a><a
								href="#">2</a><a href="#">3</a><a href="#">...</a><a href="#">78</a><a
								href="#">79</a><a href="#"><i class="ion-arrow-right-b"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer section-->
	<jsp:include page="include_common_bottom.jsp"></jsp:include>
	<!-- end of footer section-->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/plugins2.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>