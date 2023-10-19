<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Account Settings - Notifications - SB Admin Pro</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
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
				class="nav-link dropdown-toggle" id="navbarDropdownDocs" style="margin-top:1.8rem"
				href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">마이데이터</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link dropdown-toggle" id="navbarDropdownDocs" style="margin-top:1.8rem"
				href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">가이드라인</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link dropdown-toggle" id="navbarDropdownDocs" style="margin-top:1.8rem"
				href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
					<div class="fw-900 text-lg">고객센터</div>
			</a></li>
			<!-- Alerts Dropdown-->
			<li
				class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
				<a class="btn btn-icon btn-transparent-dark dropdown-toggle btn-lg" style="margin-top:1.3rem"
				id="navbarDropdownAlerts" href="javascript:void(0);" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i data-feather="bell"></i>
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
							<div class="dropdown-notifications-item-content-text">업데이트 알림</div>
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
							<div class="dropdown-notifications-item-content-text">결재일 알림</div>
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
				<a class="btn btn-icon btn-transparent-dark dropdown-toggle btn-lg" style="margin-top:1.3rem"
				id="navbarDropdownUserImage" href="javascript:void(0);"
				role="button" data-bs-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><img class="img-fluid"
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
		<div id="layoutSidenav_content" style="margin-left: -15rem; margin-top:-3.5rem">
			<main>
				<!-- Main page content-->
				<div class="container-xl px-4 mt-4">
					<!-- Account page navigation-->
					<nav class="nav nav-borders">
						<a class="nav-link" href="/bigdata/profile">프로필</a>
						<a class="nav-link" href="/bigdata/billing">청구</a> <a
							class="nav-link" href="/bigdata/security">보안</a> <a
							class="nav-link active" href="/bigdata/notifications">알림</a>
					</nav>



                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-8">
                                <!-- Email notifications preferences card-->
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        Email Notifications
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" id="flexSwitchCheckChecked" type="checkbox" checked />
                                            <label class="form-check-label" for="flexSwitchCheckChecked"></label>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (default email)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputNotificationEmail">Default notification email</label>
                                                <input class="form-control" id="inputNotificationEmail" type="email" value="name@example.com" disabled />
                                            </div>
                                            <!-- Form Group (email updates checkboxes)-->
                                            <div class="mb-0">
                                                <label class="small mb-2">Choose which types of email updates you receive</label>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkAccountChanges" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkAccountChanges">Changes made to your account</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkAccountGroups" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkAccountGroups">Changes are made to groups you're part of</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkProductUpdates" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkProductUpdates">Product updates for products you've purchased or starred</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkProductNew" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkProductNew">Information on new products and services</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkPromotional" type="checkbox" />
                                                    <label class="form-check-label" for="checkPromotional">Marketing and promotional offers</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" id="checkSecurity" type="checkbox" checked disabled />
                                                    <label class="form-check-label" for="checkSecurity">Security alerts</label>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- SMS push notifications card-->
                                <div class="card card-header-actions mb-4">
                                    <div class="card-header">
                                        Push Notifications
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" id="smsToggleSwitch" type="checkbox" checked />
                                            <label class="form-check-label" for="smsToggleSwitch"></label>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (default SMS number)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputNotificationSms">Default SMS number</label>
                                                <input class="form-control" id="inputNotificationSms" type="tel" value="123-456-7890" disabled />
                                            </div>
                                            <!-- Form Group (SMS updates checkboxes)-->
                                            <div class="mb-0">
                                                <label class="small mb-2">Choose which types of push notifications you receive</label>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsComment" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkSmsComment">Someone comments on your post</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsShare" type="checkbox" />
                                                    <label class="form-check-label" for="checkSmsShare">Someone shares your post</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsFollow" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkSmsFollow">A user follows your account</label>
                                                </div>
                                                <div class="form-check mb-2">
                                                    <input class="form-check-input" id="checkSmsGroup" type="checkbox" />
                                                    <label class="form-check-label" for="checkSmsGroup">New posts are made in groups you're part of</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" id="checkSmsPrivateMessage" type="checkbox" checked />
                                                    <label class="form-check-label" for="checkSmsPrivateMessage">You receive a private message</label>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <!-- Notifications preferences card-->
                                <div class="card">
                                    <div class="card-header">Notification Preferences</div>
                                    <div class="card-body">
                                        <form>
                                            <!-- Form Group (notification preference checkboxes)-->
                                            <div class="form-check mb-2">
                                                <input class="form-check-input" id="checkAutoGroup" type="checkbox" checked />
                                                <label class="form-check-label" for="checkAutoGroup">Automatically subscribe to group notifications</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="checkAutoProduct" type="checkbox" />
                                                <label class="form-check-label" for="checkAutoProduct">Automatically subscribe to new product notifications</label>
                                            </div>
                                            <!-- Submit button-->
                                            <button class="btn btn-danger-soft text-danger">Unsubscribe from all notifications</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; Your Website 2021</div>
                            <div class="col-md-6 text-md-end small">
                                <a href="#!">Privacy Policy</a>
                                &middot;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
