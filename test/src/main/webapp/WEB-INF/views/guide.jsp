<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Boxed Layout - SB Admin Pro</title>
<link href="css/styles.css" rel="stylesheet" />
<link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="nav-fixed">

	<jsp:include page="header.jsp"></jsp:include>

	<div id="layoutSidenav">

		<!-- 내비게이션 -->
		<div id="layoutSidenav_nav">
			<nav class="sidenav shadow-right sidenav-light">
				<a href="/bigdata/" class="mx-4 mt-n4 mb-sm-5"> <img
					class="img-fluid" src="assets/img/ioflogo.png" alt="" />
				</a>
				<div class="sidenav-menu">
					<div class="nav accordion" id="accordionSidenav">




						<!-- Sidenav Heading (Custom)-->
						<div class="sidenav-menu-heading">아오팜 시작하기</div>
						<a style="font-size: 0.8rem" class="nav-link"
							href="javascript:void(0);" class="text-body">
							<div class="nav-link-icon">
								<i data-feather="book"></i>
							</div> 서비스 소개
						</a>




						<!-- Sidenav Heading (Custom)-->
						<div class="sidenav-menu-heading">마이데이터</div>
						<!-- Sidenav Accordion (Pages)-->
						<a style="font-size: 0.8rem" class="nav-link collapsed"
							href="javascript:void(0);" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="nav-link-icon">
								<i data-feather="globe"></i>
							</div> 클라우드 서비스 이용하기
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>

						<div class="collapse" id="collapsePages"
							data-bs-parent="#accordionSidenav">
							<nav class="sidenav-menu-nested nav accordion"
								id="accordionSidenavPagesMenu">
								<a class="nav-link" href="pricing.html">IoT 세팅하기</a> <a
									class="nav-link" href="pricing.html">IoT 등록하기</a> <a
									class="nav-link" href="pricing.html">센서 등록하기</a>
								<!-- Nested Sidenav Accordion (Pages -> Account)-->
								<a class="nav-link collapsed" href="javascript:void(0);"
									data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAccount" aria-expanded="false"
									aria-controls="pagesCollapseAccount"> 센서 데이터 송신하기
									<div class="sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAccount"
									data-bs-parent="#accordionSidenavPagesMenu">
									<nav class="sidenav-menu-nested nav">
										<a class="nav-link" href="account-profile.html">온도</a> <a
											class="nav-link" href="account-billing.html">습도</a> <a
											class="nav-link" href="account-security.html">조도</a> <a
											class="nav-link" href="account-notifications.html">토양수분</a> <a
											class="nav-link" href="account-notifications.html">강우</a>
									</nav>
								</div>



								<!-- Nested Sidenav Accordion (Pages -> Authentication)-->
								<a class="nav-link collapsed" href="javascript:void(0);"
									data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth"
									aria-expanded="false" aria-controls="pagesCollapseAuth">
									데이터베이스 이용하기
									<div class="sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									data-bs-parent="#accordionSidenavPagesMenu">
									<nav class="sidenav-menu-nested nav accordion"
										id="accordionSidenavPagesAuth">
										<a class="nav-link" href="account-profile.html">11111111</a> <a
											class="nav-link" href="account-billing.html">2222222</a> <a
											class="nav-link" href="account-security.html">33333333</a>
									</nav>
								</div>
							</nav>
						</div>
						<!-- Sidenav Accordion (Applications)-->
						<a style="font-size: 0.8rem" class="nav-link"
							href="javascript:void(0);">
							<div class="nav-link-icon">
								<i data-feather="layout"></i>
							</div> 대시보드 구성하기
						</a>

					</div>
				</div>
			</nav>
		</div>

		<!-- 본문 -->
		<div id="layoutSidenav_content" style="margin-top: -3.5rem">
			<main>
				<header
					class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
					<div class="container-xl px-4">
						<div class="page-header-content pt-4">
							<div class="row align-items-center justify-content-between">
								<div class="col-auto mt-4">
									<h1 class="page-header-title fw-800">
										<div class="page-header-icon ">
											<i data-feather="book"></i>
										</div>
										서비스 소개
									</h1>
									<div class="page-header-subtitle">아오팜에 처음오셨나요?</div>
								</div>
							</div>
						</div>
					</div>
				</header>
				<!-- Main page content-->
				<div class="container-xl px-4">
					<div class="card mt-n10">
						<div class="card-header">환영합니다!</div>
						<div class="card-body">
							아오팜은 IoT 클라우드 솔루션과 모니터링 웹서비스를 지원하고 있습니다.<br> 클라우드 서비스와 같이
							자신에게 맞는 모니터링 대시보드를 구성해봅시다!

						</div>
					</div>
					<div class="card mt-4">
						<div class="card-header">IoT 클라우드 서비스 이용하기</div>
						<div class="card-body">
							아오팜은 자신 센서데이터를 저장할 수 있는 IoT 클라우드 서비스를 제공하고 있습니다. <br> 다음의
							단계를 따라가면서 클라우드 서비스를 이용해봅시다.<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<div class="step mb-5">
								<div class="step-item active">
									<a class="step-item-link text-lg fw-700" href="guide">IoT 세팅하기</a>
								</div>
								<div class="step-item">
									<a class="step-item-link" href="#!">IoT 등록하기</a>
								</div>
								<div class="step-item">
									<a class="step-item-link" href="#!">센서 등록하기</a>
								</div>
								<div class="step-item">
									<a class="step-item-link" href="#!">센서 데이터 송신하기</a>
								</div>
							</div>
							<div class="text-lg">아두이노 세팅하기</div>
							1. 아두이노 IDE 설치하기 https://www.arduino.cc/en/software에 접속후 사용자 컴퓨터
							사양에 맞는 파일을 다운로드 합니다.<br> (아오팜 에서는 Arduino IDE ) 다운로드 버튼을 누르고 JUST
							DOWNLOAD 버튼을 누르면 됩니다.<br>+ Chrome이 아닌 Internet Exploer나 Microsoft
							Edge에서 다운로드를 권장합니다. <br>아오팜에서 사용중인 아두이노 보드는 “아두이노 D1 R32”입니다. 아두이노 D1
							R32 기준의 코드 가이드 라인이 제공 됩니다.

						</div>
					</div>

				</div>

			</main>
			<footer class="footer-admin mt-auto footer-light">
				<div class="container-xl px-4">
					<div class="row">
						<div class="col-md-6 small">Copyright &copy; Your Website
							2021</div>
						<div class="col-md-6 text-md-end small">
							<a href="#!">Privacy Policy</a> &middot; <a href="#!">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
