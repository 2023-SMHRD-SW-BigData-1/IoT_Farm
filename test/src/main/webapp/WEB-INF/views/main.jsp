<%@page import="com.smhrd.bigdata.model.TestMember"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link href="css/styles.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
<div class="nav-fixed main-background">

	<!-- 헤더부분 -->
		<jsp:include page="header.jsp"></jsp:include>
		
		
	<div id="main">
		<div class="container_main">
			<div class="main_left">
				<h1 class="main_text1 fw-600">
					사물인터넷(IoT)을 위한<br>최적의 클라우드 환경 제공
				</h1>
				<div class="swiper swiper_left">
					<div class="swiper-wrapper">
						<div class="swiper-slide contents_main">
							<h2 class="main_text2">간편한 IoT 솔루션</h2>
							<span class="main_left_IoT_img"><img src="./img/IoT.png"></span>
							<h3 class="main_text3">
								데이터 베이스가 없어도<br>센서데이터를 이용가능
							</h3>

						</div>
						<h1 class="main_text1">
							사물인터넷(IoT)을 위한<br>최적의 클라우드 환경 제공
						</h1>
						<div class="swiper-slide contents_main">
							<h2 class="main_text2">선택 대시보드</h2>
							<span class="main_left_IoT_img"><img src="./img/IoT.png"></span>
							<h3 class="main_text3">
								사용하고 있는 IoT와 센서를 선택하여<br>사용자 전용의 센서 모니터링 대시보드 생성
							</h3>

						</div>
					</div>
				</div>
			</div>
			<div class="contents_right">
				<div class="main_circle1"></div>
				<div class="main_circle2">
					<div class="swiper sub_swiper_1">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="./img/Domain.png" class="Domain_img">
							</div>
							<div class="swiper-slide">
								<img src="./img/IoT Cloud Server.png"
									class="IoT_Cloud_Server_img">
							</div>

						</div>
					</div>
				</div>
				<div class="main_circle3">
					<div class="swiper sub_swiper_2">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="./img/IoT Cloud Server.png"
									class="IoT_Cloud_Server_img">
							</div>

							<div class="swiper-slide">
								<img src="./img/Domain.png" class="Domain_img">
							</div>
						</div>
					</div>
				</div>


				<div class="swiper main_swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide text btn_right">IoT Cloud Server</div>
						<div class="swiper-slide text btn_left">Sensor Monitor</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="js/slide.js"></script>
</div>
</div>