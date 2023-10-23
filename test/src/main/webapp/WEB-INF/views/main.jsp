<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<link href="css/styles.css" rel="stylesheet" />
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"
/>
    <div class="nav-fixed">
     
        <!-- 헤더부분 -->
	<nav
		class="topnav00 navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white"
		id="sidenavAccordion">
		<a class="navbar-brand m-xl-4 pe-2 ps-2" href="/bigdata/main">
			<img class="img-fluid" src="assets/img/ioflogo.png" alt="" />
		</a>

		<ul class="navbar-nav align-items-center ms-auto">
		
		
		
		
		
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link dropdown-toggle" id="navbarDropdownDocs"
				style="margin-top: 1.8rem" href="/bigdata/join" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">회원가입</div>
			</a></li>
			
			
			
			
			
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link dropdown-toggle" id="navbarDropdownDocs"
				style="margin-top: 1.8rem" href="javascript:void(0);" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">마이데이터</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link dropdown-toggle" id="navbarDropdownDocs"
				style="margin-top: 1.8rem" href="javascript:void(0);" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">가이드라인</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link dropdown-toggle" id="navbarDropdownDocs"
				style="margin-top: 1.8rem" href="/bigdata/question" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">고객센터</div>
			</a></li>
			<!-- Alerts Dropdown-->
			<li
				class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
				<a class="btn btn-icon btn-transparent-dark dropdown-toggle btn-lg"
				style="margin-top: 1.3rem" id="navbarDropdownAlerts"
				href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> <i
					data-feather="bell"></i>
			</a>
				<div
					class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
					aria-labelledby="navbarDropdownAlerts">
					<h6 class="dropdown-header dropdown-notifications-header">
						<i class="me-2" data-feather="bell"></i> 알림
					</h6>
					<!-- Example Alert 1-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-blue">
							<i data-feather="mail"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								29, 2021</div>
							<div class="dropdown-notifications-item-content-text">업데이트
								알림</div>
						</div>
					</a>
					<!-- Example Alert 2-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-blue">
							<i data-feather="calendar"></i>

						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								22, 2021</div>
							<div class="dropdown-notifications-item-content-text">결재일
								알림</div>
						</div>
					</a>
					<!-- Example Alert 3-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-danger">
							<i class="fas fa-exclamation-triangle"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								8, 2021</div>
							<div class="dropdown-notifications-item-content-text">이상치알림</div>
						</div>
					</a>
					<!-- Example Alert 4-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-warning">
							<i class="fas fa-exclamation-triangle"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								2, 2021</div>
							<div class="dropdown-notifications-item-content-text">정보변경
								알림</div>
						</div>
					</a> <a class="dropdown-item dropdown-notifications-footer" href="#!">View
						All Alerts</a>
				</div>
			</li>
			<!-- User Dropdown-->
			<li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
				<a class="btn btn-icon btn-transparent-dark dropdown-toggle btn-lg"
				style="margin-top: 1.3rem" id="navbarDropdownUserImage"
				href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"><img
					class="img-fluid"
					src="assets/img/illustrations/profiles/profile-1.png" /></a>
				<div
					class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
					aria-labelledby="navbarDropdownUserImage">
					<h6 class="dropdown-header d-flex align-items-center">
						<img class="dropdown-user-img"
							src="assets/img/illustrations/profiles/profile-1.png" />
						<div class="dropdown-user-details">
							<div class="dropdown-user-details-name">Valerie Luna</div>
							<div class="dropdown-user-details-email">vluna@aol.com</div>
						</div>
					</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="/bigdata/profile">
						<div class="dropdown-item-icon">
							<i data-feather="settings"></i>
						</div> 마이페이지
					</a> <a class="dropdown-item" href="#!">
						<div class="dropdown-item-icon">
							<i data-feather="log-out"></i>
						</div> 로그아웃
					</a>
				</div>
			</li>
		</ul>
	</nav>
<div id = "main">
	<div class = "container_main">
		<div class="main_left">
			<h1 class="main_text1">사물인터넷(IoT)을 위한<br>최적의 클라우드 환경 제공</h1>
			<div class="swiper swiper_left">
		      <div class="swiper-wrapper">
		        <div class="swiper-slide contents_main">
					<h2 class="main_text2">센서 분류 AI 사용</h2>
					<span class ="main_left_IoT_img"><img src="./img/IoT.png"></span>
					<h3 class="main_text3">센서 분류 AI의 사용을 통해 사용자에게<br>더 쉬운 클라우드 서버 솔루션을 제공</h3>
					
				</div>
				<h1 class="main_text1">사물인터넷(IoT)을 위한<br>최적의 클라우드 환경 제공</h1>
		        <div class="swiper-slide contents_main">
		        	<h2 class="main_text2">선택 대시보드</h2>
					<span class ="main_left_IoT_img"><img src="./img/IoT.png"></span>
					<h3 class="main_text3">사용하고 있는 IoT와 센서를 선택하여<br>사용자 전용의 센서 모니터링 대시보드 생성</h3>
					
		        </div>
		      </div>
    		</div>
		</div>
		<div class = "contents_right">
			<div class="main_circle1"></div>
			<div class="main_circle2">
				<div class="swiper sub_swiper_1">
			      <div class="swiper-wrapper">
			        <div class="swiper-slide">
			          <img src="./img/Domain.png" class="Domain_img">
			        </div>
			        <div class="swiper-slide">
			          <img src="./img/IoT Cloud Server.png" class="IoT_Cloud_Server_img">
			        </div>

			      </div>
			    </div>
		    </div>
			<div class="main_circle3">
				<div class="swiper sub_swiper_2">
			      <div class="swiper-wrapper">
			        <div class="swiper-slide">
			          <img src="./img/IoT Cloud Server.png" class="IoT_Cloud_Server_img">
			        </div>

			        <div class="swiper-slide">
			          <img src="./img/Domain.png" class="Domain_img">
			        </div>
			      </div>
			    </div>
			</div>

			<div class ="btn_left"><i class="xi-arrow-left xi-2x">✨</i></div>
			<div class="btn_right"><i class="xi-arrow-right xi-2x">→</i></div>  
			
			<div class="swiper main_swiper">
		      <div class="swiper-wrapper">
		        <div class="swiper-slide text">IoT Cloud Server</div>
		        <div class="swiper-slide text">Sensor Monitor</div>
		      </div>
    		</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<script src="js/slide.js"></script>
	</div>
	</div>