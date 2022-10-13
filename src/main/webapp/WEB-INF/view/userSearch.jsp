<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7 no-js" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 no-js" lang="en-US"><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
<!-- Basic need -->
<title>Open Pediatrics</title>
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
	
	<!--중앙 헤드 시작  -->
	<div class="hero user-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>아이디 /비밀번호 찾기</h1>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>Profile</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--중앙 헤드 끝-->
	
	
	<div class="page-single">
		<div class="container">
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="form-style-1 user-pro" action="">
						
						<!--중앙 아이디 찾기  -->
						<form action="" class="user">
							<h4>아이디 찾기</h4>
								<div class="row">
									<div class="col-md-6 form-it">
										<label>이름</label>
										<input type="text" placeholder="edwardkennedy">
									</div>
								</div>
								<div class="row">
									<div class="col-md-2">
										<input class="submit" type="submit" value="save">
									</div>
								</div>
						</form>
						<!--중앙 패스워드 찾기  -->
						<form action="" class="password">
							<h4>패스워드 찾기</h4>
								<div class="row">
									<div class="col-md-6 form-it">
										<label>아이디</label>
										<input type="text" placeholder="***************">
									</div>
									<div class="col-md-6 form-it">
										<label>이름</label>
										<input type="text" placeholder="*************** ">
									</div>
								</div>
							<div class="row">
								<div class="col-md-2">
									<input class="submit" type="submit" value="change">
								</div>
							</div>
						</form>
						<!--중앙 패스워드 찾기 끝  -->
						
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