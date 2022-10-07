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
<style type="text/css">

</style>
<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">
<!-- CSS files -->
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
	
	function userModify(){
		document.user.action = "userModify";
		document.user.submit();
	}
</script>
</head>
<body>

	<!-- BEGIN | Header -->
	<jsp:include page="include_common_top.jsp"/>
	<!-- END | Header -->
	
	<div class="hero user-hero">
		<div class="container">
				<div class="col-md-12">
					<div class="hero-ct">
						<h2 style="color:white;">${login_user.u_name}님의 상세페이지</h2><br>
						<ul class="breadcumb">
							<li class="active"><a href="main">Home</a></li>
							<li><span class="ion-ios-arrow-right"></span>Profile</li>
						</ul>
					</div>
				</div>
		</div>
	</div>
		<!-- Start | user leff menu bar-->
	<jsp:include page="include_user_menu.jsp" />
	<!-- End | user leff menu bar-->
				<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="form-style-1 user-pro" action="">
						<form action="" name= "user" class="user" method="post">
							<h4>회원의 상세페이지</h4>
							<div class="row">
								<div class="col-md-6 form-it">
									<label>이름</label>
									<input type="text" placeholder = ${login_user.u_name}
										id="u_name"
										readonly>
									<a></a>
									
								</div>
								<div class="col-md-6 form-it">
									<label>이메일</label><input type="text"
										placeholder = ${login_user.u_email}
										id="u_email"
										readonly>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-it">
									<label>비밀번호</label><input type="text"
										placeholder= "********"
										id="u_pass"
										readonly>
								</div>
								<div class="col-md-6 form-it">
									<label>핸드폰 번호</label><input type="text"
										placeholder= ${login_user.u_phone} 	
										id="u_phone"
										readonly>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<input class="submit" type="submit" onclick= "userModify()" value="수정하기">
								</div>
							</div>
						</form>
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