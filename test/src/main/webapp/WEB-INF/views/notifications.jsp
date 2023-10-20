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
<title>Account Settings - Notifications - SB Admin Pro</title>
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

	<!-- 네비게이션 삭제 style="margin-left: -15rem; margin-top:-3.5rem"-->
	<div id="layoutSidenav">
		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>
				<!-- Main page content-->
				<div class="container-xl px-4 mt-4">
					<!-- Account page navigation-->
					<nav class="nav nav-borders">
						<a class="nav-link" href="/bigdata/profile">프로필</a> <a
							class="nav-link" href="/bigdata/billing">청구</a> <a
							class="nav-link" href="/bigdata/security">보안</a> <a
							class="nav-link active" href="/bigdata/notifications">알림</a>
					</nav>

					<hr class="mt-0 mb-4" />
					<div class="row">

						<div class="col-lg-4">







							<!-- 1 -->
							<!-- Notifications preferences card-->
							<div class="card mb-4">
								<div class="card-header">Notification Preferences</div>
								<div class="card-body">
									<div class="alert alert-primary" role="alert">이메일 알림은 Paid버전부터 이용이 가능합니다!<br>감사합니다!</div>
									<form>
										<!-- Form Group (notification preference checkboxes)-->
										<div class="form-check mb-2">
											<input class="form-check-input" id="checkAutoGroup"
												type="checkbox" checked /> <label class="form-check-label"
												for="checkAutoGroup">이메일 알림</label>
										</div>
										<div class="form-check mb-3">
											<input class="form-check-input" id="checkAutoProduct"
												type="checkbox" /> <label class="form-check-label"
												for="checkAutoProduct">웹 알림</label>
										</div>
										<!-- Submit button-->
										<button class="btn btn-primary" type="button"
											style="font-size: 1rem">Save change</button>
									</form>
								</div>
							</div>




							<!-- 2 -->
							<div class="card mb-4 ">
								<div class="card-header">Change Email Address</div>
								<div class="card-body">
									<form>
										<!-- Form Group (current password)-->
										<div class="mb-3">
											<label class="small mb-1" for="currentPassword">현재
												이메일</label> <input class="form-control" value="vluna@aol.com"
												disabled />
										</div>
										<!-- Form Group (new password)-->
										<div class="mb-3">
											<label class="small mb-1" for="newPassword">변경 이메일</label> <input
												class="form-control" id="newPassword" type="password"
												placeholder="새 비밀번호 입력" />
										</div>
										<button class="btn btn-primary" type="button"
											style="font-size: 1rem">Save change</button>
									</form>
								</div>
							</div>
						</div>












						<!-- 3 -->
						<div class="col-lg-8">
							<!-- Email notifications preferences card-->
							<div class="card card-header-actions mb-4">
								<div class="card-header">
									Email Notifications
									<button class="btn btn-primary btn-sm" style="font-size: 1rem">Update</button>
								</div>
								<div class="card-body">
									<form>
										<!-- Form Group (default email)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputNotificationEmail">사용
												이메일</label> <input class="form-control" id="inputNotificationEmail"
												type="email" value="name@example.com" disabled />
										</div>
										<!-- Form Group (email updates checkboxes)-->
										<div class="mb-0">
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkAccountGroups"
													type="checkbox" checked disabled /> <label
													class="form-check-label" for="checkAccountGroups">사용자
													정보 변경</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkProductUpdates"
													type="checkbox" checked /> <label class="form-check-label"
													for="checkProductUpdates">IoT/센서에 대한 정보 변경</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkProductNew"
													type="checkbox" checked /> <label class="form-check-label"
													for="checkProductNew">센서의 이상치 감지</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkPromotional"
													type="checkbox" /> <label class="form-check-label"
													for="checkPromotional">결제일 안내</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" id="checkSecurity"
													type="checkbox" checked /> <label class="form-check-label"
													for="checkSecurity">아오팜 업데이트 소식</label>
											</div>
										</div>
									</form>
								</div>
							</div>








							<!-- 4 -->
							<div class="card card-header-actions mb-4">
								<div class="card-header">
									Web Notifications
									<button class="btn btn-primary btn-sm" style="font-size: 1rem">Update</button>
								</div>
								<div class="card-body">
									<form>
										<!-- Form Group (email updates checkboxes)-->
										<div class="mb-0">
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkAccountGroups"
													type="checkbox" checked disabled /> <label
													class="form-check-label" for="checkAccountGroups">사용자
													정보 변경</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkProductUpdates"
													type="checkbox" checked /> <label class="form-check-label"
													for="checkProductUpdates">IoT/센서에 대한 정보 변경</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkProductNew"
													type="checkbox" checked /> <label class="form-check-label"
													for="checkProductNew">센서의 이상치 감지</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkPromotional"
													type="checkbox" /> <label class="form-check-label"
													for="checkPromotional">결제일 안내</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" id="checkSecurity"
													type="checkbox" checked /> <label class="form-check-label"
													for="checkSecurity">아오팜 업데이트 소식</label>
											</div>
										</div>
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
