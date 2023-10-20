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

	<!-- 헤더부분 -->
	<nav
		class="topnav00 navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white"
		id="sidenavAccordion">
		<a class="navbar-brand m-xl-4 pe-2 ps-2" href="/bigdata/profile">
			<img class="img-fluid" src="assets/img/ioflogo.png" alt="" />
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
				<!-- Main page content-->
				<div class="container-xl px-4 mt-4">
					<!-- Account page navigation-->
					<nav class="nav nav-borders">
						<a class="nav-link active" href="/bigdata/profile">프로필</a> <a
							class="nav-link" href="/bigdata/billing"> 청구 </a> <a
							class="nav-link" href="/bigdata/security"> 보안 </a> <a
							class="nav-link" href="/bigdata/notifications"> 알림 </a>
					</nav>
					<hr class="mt-0 mb-4" />
					<div class="row">
						<!-- 왼쪽부분 -->
						<div class="col-xl-4">
							<div class="card mb-4 mb-xl-0">
								<div class="card-header">Profile</div>
								<div class="card-body text-center">
									<div class="row my-3">
										<div class="col-xl-4 mt-2">Username</div>
										<div class="col-xl-8"><input class="form-control form-control-solid bg-gray-100 text-lg" value="Valerie Luna" disabled/></div>
									</div>
									<div class="row my-3">
										<div class="col-xl-4 mt-2">Version</div>
										<div class="col-xl-8"><input class="form-control form-control-solid bg-gray-100 text-lg" value="Paid" disabled/></div>
									</div>
									<div class="row my-3">
										<div class="col-xl-4 mt-2">E-mail</div>
										<div class="col-xl-8"><input class="form-control form-control-solid bg-gray-100 text-lg" value="vluna@aol.com" disabled/></div>	
									</div>
								</div>
							</div>


							<!-- Profile picture card-->
							<div class="card mt-4 mb-xl-0">
								<div class="card-header">Profile Picture</div>
								<div class="card-body text-center">
									<!-- Profile picture image-->
									<div class="mb-lg-4"></div>
									<img class="img-account-profile rounded-circle mb-2"
										src="assets/img/illustrations/profiles/profile-1.png" alt="" />
									<div class="mb-lg-4"></div>
									<!-- Profile picture help block-->
									<button class="btn round-button"
										style="height: 3.8rem; width: 3.8rem">
										<img src="assets/img/illustrations/profiles/profile-1.png"
											style="width: 3.8rem">
									</button>
									<button class="btn round-button"
										style="height: 3.8rem; width: 3.8rem">
										<img src="assets/img/illustrations/profiles/profile-2.png"
											style="width: 3.8rem">
									</button>
									<button class="btn round-button"
										style="height: 3.8rem; width: 3.8rem">
										<img src="assets/img/illustrations/profiles/profile-3.png"
											style="width: 3.8rem">
									</button>
									<button class="btn round-button"
										style="height: 3.8rem; width: 3.8rem">
										<img src="assets/img/illustrations/profiles/profile-4.png"
											style="width: 3.8rem">
									</button>
									<button class="btn round-button"
										style="height: 3.8rem; width: 3.8rem">
										<img src="assets/img/illustrations/profiles/profile-5.png"
											style="width: 3.8rem">
									</button>
									<button class="btn round-button"
										style="height: 3.8rem; width: 3.8rem">
										<img src="assets/img/illustrations/profiles/profile-6.png"
											style="width: 3.8rem">
									</button>
									<div class="mb-lg-4"></div>
									<!-- Profile picture upload button-->
									<button class="btn btn-primary" style="font-size: 1rem" type="button">Change
										profile image</button>
								</div>
							</div>
						</div>

						<!-- 오른쪽부분 -->
						<div class="col-xl-8">
							<div class="card mb-4 mb-xl-0">
								<div class="card-header">Usage Status</div>
								<div class="card-body row">
									<div class="col-xl-4 pt-lg-2 ps-lg-5">
										<div class="text-gray-500 text-lg">현재 이용 버전</div>
										<div class="text-xl fw-700" style="margin-top: -0.7rem">Paid</div>
									</div>
									<div class="col-xl-8  pt-lg-2 text-lg">
										<div >Total number of IoT (최대 X개)</div>
										<div style="display:flex;margin-top: -0.7rem"><div class="mx-xl-1 fw-600" style="font-size: 2rem">X</div><div style="padding-top: 0.75rem">개 이용 중</div></div>
										<div class="mt-2">Total number of sensors (최대 Y개)</div>
										<div class="pb-lg-4" style="display:flex;margin-top: -0.7rem"><div class="mx-xl-1 fw-600" style="font-size: 2rem">6</div><div style="padding-top: 0.75rem">개 이용 중</div></div>
										<button class="btn btn-outline-blue" style="font-size: 1rem" type="button">더 많은 장치 이용하기<i data-feather="arrow-right"></i></button>
									</div>
								</div>
							</div>

							<!-- Account details card-->
							<div class="card mb-4 mt-4">
								<div class="card-header">Change Username</div>
								<div class="card-body">
									<form>
										<!-- Form Group (username)-->
										<div class="mb-3">
											<label class="mb-1" for="inputUsername">Username (
												사이트에서 표시되는 방식 )</label> <input class="form-control"
												id="inputUsername" type="text"
												placeholder="Enter your username" value="username" style="font-size: 1rem"/>
										</div>

										<!-- Save changes button-->
										<button class="btn btn-primary" style="font-size: 1rem" type="button">Save
											change</button>
									</form>
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