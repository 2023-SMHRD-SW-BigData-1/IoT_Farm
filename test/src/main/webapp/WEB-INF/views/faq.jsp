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
<title>Account Settings - Profile - SB Admin Pro</title>
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
		<a class="navbar-brand m-xl-4 pe-2 ps-2" href="/bigdata/">
			<img class="img-fluid" src="assets/img/ioflogo.png" alt="" />
		</a>
		<ul class="navbar-nav align-items-center ms-auto">
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link"
				style="margin-top: 1.8rem" href="/bigdata/mydata" role="button">
					<div class="fw-900 text-lg">마이데이터</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link"
				style="margin-top: 1.8rem" href="/bigdata/guide" role="button">
					<div class="/bigdata/guide">가이드라인</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link"
				style="margin-top: 1.8rem" href="/bigdata/question" role="button">
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
					src="assets/img/illustrations/profiles/profile-1.png" /> </a>
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

	<!-- 네비게이션 삭제 style="margin-left: -15rem; margin-top:-3.5rem"-->
	<div id="layoutSidenav">
		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>
				
	<div id="layoutSidenav">
		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>


				<!-- faq 1번 -->
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div>
						<h1 class="collapse_text">자주 묻는 질문</h1>
					</div>
					<div class="card card-collapsable first">
						
						<a class="card-header" href="#collapseCardExample1"
							data-bs-toggle="collapse" role="button"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">비밀번호를 잊어버렸는데 어떻게 하나요?
							<div class="card-collapsable-arrow">
							<i class="fas fa-chevron-right dropdown-arrow"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample1">
							<div class="card-body">...</div>
						</div>
					</div>
					<!-- faq 2번 -->
					<div class="card card-collapsable">
						<a class="card-header" href="#collapseCardExample2"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">가이드라인을 봐도 잘 모르겠는데 어떻게
							적용하나요?
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample2">
							<div class="card-body">...</div>
						</div>
					</div>
					<!-- faq 3번 -->
					<div class="card card-collapsable">
						<a class="card-header" href="#collapseCardExample3"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">정기 유료결제 해지를 하고싶어요
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample3">
							<div class="card-body">...</div>
						</div>
					</div>
					<!-- faq 4번 -->
					<div class="card card-collapsable">
						<a class="card-header" href="#collapseCardExample4"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">이메일 인증이 되지 않아요
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample4">
							<div class="card-body">...</div>
						</div>
					</div>
					<!-- faq 5번 -->
					<div class="card card-collapsable">
						<a class="card-header" href="#collapseCardExample5"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">...
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample5">
							<div class="card-body">...</div>
						</div>
					</div>
					<!-- faq 6번 -->
					<div class="card card-collapsable">
						<a class="card-header" href="#collapseCardExample6"
							data-bs-toggle="collapse" role="button" aria-expanded="true"
							aria-controls="collapseCardExample">...
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample6">
							<div class="card-body">...</div>
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