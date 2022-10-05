<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="ht-header">
		<!--start of loading<로딩페이지 로고 사진 >-->
	<div id="preloader">
		<img class="logo" src="images/mylogo.png" alt="" width="119"
			height="58">
		<div id="status">
			<span></span><span></span>
		</div>
	</div>
	<!--end of loading<로딩페이지 로고 사진 >-->
	
	<!--login form popup 로그인 버튼 누르면 작동 -->
	<div class="login-wrapper" id="login-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>Login</h3>
			<form method="post" action="login.php">
				<div class="row">
					<label for="username">Username:<input type="text"
						name="username" id="username" placeholder="Hugh Jackman"
						pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" /></label>
				</div>
				<div class="row">
					<label for="password"> Password:<input type="password"
						name="password" id="password" placeholder="******"
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<div class="remember">
						<div>
							<input type="checkbox" name="remember" value="Remember me"><span>Remember
								me</span>
						</div>
						<a href="#">Forget password ?</a>
					</div>
				</div>
				<div class="row">
					<button type="submit">Login</button>
				</div>
			</form>
			<div class="row">
				<p>Or via social</p>
				<div class="social-btn-2">
					<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a><a
						class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
				</div>
			</div>
		</div>	
	</div>
	<!--end of login form popup 회원가입 버튼 누르면 작동-->
	<!--signup form popup-->
	<div class="login-wrapper" id="signup-content">
		<div class="login-content">
			<a href="#" class="close">x</a>
			<h3>sign up</h3>
			<form method="post" action="signup.php">
				<div class="row">
					<label for="username-2">Username:<input type="text"
						name="username" id="username-2" placeholder="Hugh Jackman"
						pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" /></label>
				</div>
				<div class="row">
					<label for="email-2"> your email:<input type="password"
						name="email" id="email-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="password-2"> Password:<input type="password"
						name="password" id="password-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<label for="repassword-2"> re-type Password:<input
						type="password" name="password" id="repassword-2" placeholder=""
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						required="required" /></label>
				</div>
				<div class="row">
					<button type="submit">sign up</button>
				</div>
			</form>
		</div>
	</div>
	<!--end of signup form popup-->
	
		<div class="container">
			<nav class="navbar navbar-default navbar-custom">
				
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header logo">
					<div class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<div id="nav-icon1">
							<span></span><span></span><span></span>
						</div>
					</div>
					<a href="main"><img class="logo" src="images/mylogo.png"
						alt="" width="70" height="58"></a>
				</div>
				
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav flex-child-menu menu-left">
						<li class="hidden"><a href="#page-top"></a></li>
						<li class="home"><a href="main">Home </a></li>
						<li class="dropdown first"><a href="moviegridfw">
								movies</a></li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" 
							   data-toggle="dropdown" data-hover="dropdown"> Categories 
							   <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<!--카테고리 dropdown 설정 부분 -->
									<ul class="dropdown-menu level1">
										<li><a href="categoryMoviegrid?cg_no=1"   >액션</a></li>
										<li class="it-last"><a href="categoryMoviegrid?cg_no=2">코미디</a></li>
										<li class="it-last"><a href="categoryMoviegrid?cg_no=3">로맨스</a></li>
										<li class="it-last"><a href="categoryMoviegrid?cg_no=4">공포/미스터리</a></li>
										<li class="it-last"><a href="categoryMoviegrid?cg_no=5">SF/판타지</a></li>
										<li class="it-last"><a href="categoryMoviegrid?cg_no=6">드라마</a></li>
									</ul>
						</li>
						<li class="dropdown first"><a href="bloglist">Notice</a></li>
						
					</ul>
					<ul class="nav navbar-nav flex-child-menu menu-right">

						<li><a href="userprofile">마이페이지</a></li>
						<li class="loginLink"><a href="#">로그인</a></li>
						<li class="btn signupLink"><a href="#">회원가입</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
			<!-- top search form -->
			<div class="top-search">
				<select><option value="united">카테고리</option>
					<option value="saab">액션</option>
					<option value="saab">코미디</option>
					<option value="saab">로맨스</option>
					<option value="saab">호러/스릴러</option>
					<option value="saab">SF/판타지</option>
					<option value="saab">드라마</option>
				</select> <input type="text"
					placeholder="Serch your Movie and enjoy your Life">
			</div>
		</div>
	</header>
