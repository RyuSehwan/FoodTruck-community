<!doctype html>
<!-- 1. POST 전송시 한글깨짐
JSP 페이지 상단에 request.setCharacterEncoding 을 명시한다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>


<!-- 2. GET 전송시 한글깨짐
Tomcat의 server.xml에 URIEncoding 옵션을 추가해 준다.  -->

<Connector port="8080" protocol="HTTP/1.1" connectionTimeout="20000"
	redirectPort="8443" URIEncoding="UTF-8" />
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>FT Zone | 회원가입</title>
<!-- Favicon -->
<link rel="shortcut icon" href="../resources/static/images/favicon.ico" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/static/css/bootstrap.min.css">
<!-- Typography CSS -->
<link rel="stylesheet" href="../resources/static/css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet" href="../resources/static/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="../resources/static/css/responsive.css">
</head>

<style>
.ad {
	float: right;
}

.signupBg {
	background-image: url('../resources/static/images/login/signUpBg.png');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

<body>
	<!-- loader Start -->
	<div id="loading">
		<div id="loading-center"></div>
	</div>
	<!-- loader END -->
	<!-- Sign in Start -->
	<section class="signupBg">
		<div class="container p-0">
			<div class="row no-gutters">
				<div class="col-md-6 text-center pt-5">
					<div class="sign-in-detail text-white">
						<div class="owl-carousel" data-autoplay="true" data-loop="true"
							data-nav="false" data-dots="true" data-items="1"
							data-items-laptop="1" data-items-tab="1" data-items-mobile="1"
							data-items-mobile-sm="1" data-margin="0" style="margin-top: 40%;">
							<div class="item">
								<h4 class="mb-1 text-white">
									<strong>푸드트럭을 찾으세요</strong>
								</h4>
								<p>푸드트럭이 거기 있으니까 가는게 아니라 내가 가고 싶은 날짜와 위치에 푸드트럭이 있는지 찾고 가서
									시간과 맛을 즐기세요.</p>
							</div>
							<div class="item">
								<h4 class="mb-1 text-white">
									<strong>푸드트럭과 세상의 연결</strong>
								</h4>
								<p>점점 커지는 푸드트럭 시대에 필요한 커뮤니티 이곳에서 추억과 맛과 정보를 같이 나누세요.</p>
							</div>
							<div class="item">
								<h4 class="mb-1 text-white">
									<strong>고객를 찾으세요</strong>
								</h4>
								<p>언제 어디가서 장사를 해야되나 혼자 고민하지 마시고 고객들이 원하는 자리를 찾아가세요.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 bg-white pt-5">
					<div class="sign-in-from">
						<h1 class="mb-0">회원가입</h1>
						<form method="post" action="signIn.do">
							<div class="form-group">
								<div>
									<label for="userId">아이디</label> <input type="text"
										class="form-control mb-0" name="userId" id="userId"
										placeholder="아이디" style="width: 50%:"> <span
										id="idCheckResult"
										style="width: 150px; color: red; font-size: 12px"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="userPass">비밀번호</label> <input type="password"
									class="form-control mb-0" name="userPass" id="userPass"
									placeholder="비밀번호">
							</div>
							<div class="form-group">
								<label for="userName">이름</label> <input type="text"
									class="form-control mb-0" name="userName" id="userName"
									placeholder="이름">
							</div>
							<div class="form-group">
								<label for="userNick">닉네임</label> <input type="text"
									class="form-control mb-0" name="userNick" id="userNick"
									placeholder="닉네임"> <span id="nickCheckResult"
									style="width: 150px; color: red; font-size: 12px"></span>
							</div>
							<div class="form-group">
								<label for="userPhone">전화번호</label> <input type="text"
									class="form-control mb-0" name="userPhone" id="userPhone"
									placeholder="전화번호">
							</div>
							<div class="form-group">
								<label for="userEmail">이메일</label> <input type="email"
									class="form-control mb-0" name="userEmail" id="userEmail"
									placeholder="이메일"> <span id="emailCheckResult"
									style="width: 150px; color: red; font-size: 12px"></span>
							</div>
							<div class="d-inline-block w-100">
								<div
									class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
									<input type="checkbox" class="custom-control-input"
										id="customCheck1"> <label class="custom-control-label"
										for="customCheck1">I accept <a href="#">Terms and
											Conditions</a></label>
								</div>
								<button type="submit" id="confirm"
									class="btn btn-primary float-right">회원가입</button>
							</div>
							<div class="sign-info">
								<span class="dark-color d-inline-block line-height-2">이미
									계정이 있습니다. <a href="signIn.do">로그인</a>
								</span>
							</div>
							<div class="sign-info">
								<ul class="iq-social-media">
									<li><a href="https://facebook.com"><i
											class="ri-facebook-box-line"></i></a></li>
									<li><a href="https://twitter.com"><i
											class="ri-twitter-line"></i></a></li>
									<li><a href="https://instagram.com"><i
											class="ri-instagram-line"></i></a></li>
								</ul>
								<br> <br> <br>
								<h6>
									<strong>FoodTrucke Zone</strong>
								</h6>
								<br>
								<p style="font-size: 10px;">
									<a href="#">회사소개&nbsp;&nbsp;</a><a href="#">서비스이용약관&nbsp;&nbsp;</a>
									<a href="#">인재채용&nbsp;&nbsp;</a><a href="#">광고제휴문의&nbsp;&nbsp;</a>
									<a href="#">사업자확인&nbsp;&nbsp;</a><br> COMPANY NAME :
									(주)푸드트럭존 | CEO : 신승룡<br> COMPANY REG.NO : 123-45-67890 |
									NETWORK REG.NO : 1234-경기수원-00001호<br> ADDRESS : 경기도 수원시
									팔달구 인계로 1 (주)푸드트럭존 | TEL : 5858-8282<br> E-MAIL ADDRESS :
									ftzone-service@ftzone.co.kr
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Sign in END -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../resources/static/js/jquery.min.js"></script>
	<script src="../resources/static/js/popper.min.js"></script>
	<script src="../resources/static/js/bootstrap.min.js"></script>
	<!-- Appear JavaScript -->
	<script src="../resources/static/js/jquery.appear.js"></script>
	<!-- Countdown JavaScript -->
	<script src="../resources/static/js/countdown.min.js"></script>
	<!-- Counterup JavaScript -->
	<script src="../resources/static/js/waypoints.min.js"></script>
	<script src="../resources/static/js/jquery.counterup.min.js"></script>
	<!-- Wow JavaScript -->
	<script src="../resources/static/js/wow.min.js"></script>
	<!-- lottie JavaScript -->
	<script src="../resources/static/js/lottie.js"></script>
	<!-- Apexcharts JavaScript -->
	<script src="../resources/static/js/apexcharts.js"></script>
	<!-- Slick JavaScript -->
	<script src="../resources/static/js/slick.min.js"></script>
	<!-- Select2 JavaScript -->
	<script src="../resources/static/js/select2.min.js"></script>
	<!-- Owl Carousel JavaScript -->
	<script src="../resources/static/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup JavaScript -->
	<script src="../resources/static/js/jquery.magnific-popup.min.js"></script>
	<!-- Smooth Scrollbar JavaScript -->
	<script src="../resources/static/js/smooth-scrollbar.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="../resources/static/js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="../resources/static/js/custom.js"></script>
	<script src="../resources/static/js/js_userinput.js?ver=1"></script>
	<script type="text/javascript"
		src="../resources/static/js/jquery-1.7.1.js"></script>
</body>
</html>