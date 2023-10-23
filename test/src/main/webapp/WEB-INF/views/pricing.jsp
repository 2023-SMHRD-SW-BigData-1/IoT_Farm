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
<title>Pricing - SB Admin Pro</title>
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
	<nav
		class="topnav00 navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white"
		id="sidenavAccordion">
		<a class="navbar-brand m-xl-4 pe-2 ps-2" href="/bigdata/main"> <img
			class="img-fluid" src="assets/img/ioflogo.png" alt="" />
		</a>

		<ul class="navbar-nav align-items-center ms-auto">
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
				style="margin-top: 1.8rem" href="javascript:void(0);" role="button"
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
	<div id="layoutSidenav">

		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>







				<!-- Main page content-->
				<div class="container-xl px-4 text-center">
					<div class="text-center text-xl" style="margin-top: 6rem">
						<div>
							<span class="fw-700" style="color: rgb(159, 218, 37)">아오팜</span><span
								style="font-size: 2.2rem">의 더 많은 서비스를 이용하세요</span>
						</div>
					</div>
					<!-- Detailed pricing example-->
					<div class="pricing-detailed" style="margin-top: 3rem">
						<div class="row align-items-center g-0">




							<!-- Detailed pricing column 1-->
							<div class="col-lg-6 z-1 mb-4 mb-lg-0">
								<div class="card text-center border-0 m-4 rounded-xl"
									style="background-color: #B8E6E1;height:33rem">

									<div class="card-body p-5">
										<h5
											class="text-dark mb-5 bg-white px-sm-2 pt-sm-3 py-sm-2 fw-900 rounded-xl"
											style="font-size: 3rem">Paid</h5>
										<p class="lead mb-4">신규 사용자 및 개인을 위한 버전</p>
										<div class="mb-4">
											<span class="display-4 fw-bold text-dark">$9</span> <span>/mo</span>
										</div>
										<ul class="list-unstyled">
											<li
												class="d-flex align-items-center justify-content-center mb-3">
												<i class="text-primary me-2" data-feather="check-circle"></i>
												더 많은 연결
											</li>
											<li
												class="d-flex align-items-center justify-content-center mb-3">
												<i class="text-primary me-2" data-feather="check-circle"></i>
												이메일 알림기능 이용가능
											</li>
										</ul>
									</div>
									<a
										class="card-footer d-flex align-items-center justify-content-center"
										href="/bigdata/pay_success"> Start now <i class="ms-2"
										data-feather="arrow-right"></i>
									</a>
								</div>
							</div>





							<!-- Detailed pricing column 2-->
							<div class="col-lg-6 z-1 mb-4 mb-lg-0">
								<div class="card text-center border-0 m-4 rounded-xl"
									style="background-color: #FFCD4A;height:33rem">

									<div class="card-body p-5">
										<h5
											class="text-dark mb-5 bg-white px-sm-2 pt-sm-3 py-sm-2 fw-900 rounded-xl"
											style="font-size: 3rem">Premium</h5>
										<p class="lead mb-4">더 많은 연결과 기능을 위한 버전</p>
										<div class="mb-4">
											<span class="display-4 fw-bold text-dark">$39</span> <span>/mo</span>
										</div>
										<ul class="list-unstyled">
											<li
												class="d-flex align-items-center justify-content-center mb-3">
												<i class="text-primary me-2" data-feather="check-circle"></i>
												더 더 많은 연결
											</li>
											<li
												class="d-flex align-items-center justify-content-center mb-3">
												<i class="text-primary me-2" data-feather="check-circle"></i>
												이메일 알림기능 이용가능
											</li>
											<li class="d-flex align-items-center justify-content-center">
												<i class="text-primary me-2" data-feather="check-circle"></i>
												데이터베이스 접근 가능
											</li>
										</ul>
									</div>
									<a
										class="card-footer d-flex align-items-center justify-content-center"
										href="/bigdata/pay_fail "> Start now <i class="ms-2"
										data-feather="arrow-right"></i>
									</a>
								</div>
							</div>
							
							
							
							

						</div>
					</div>
				</div>
			</main>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
