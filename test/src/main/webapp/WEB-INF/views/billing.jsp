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
        <title>Account Settings - Billing - SB Admin Pro</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
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
				<div class="container-xl px-4 mt-4">
					<!-- Account page navigation-->
					<nav class="nav nav-borders">
						<a class="nav-link" href="/bigdata/profile">프로필</a> <a
							class="nav-link active" href="/bigdata/billing"> 청구 </a> <a
							class="nav-link" href="/bigdata/security"> 보안 </a> <a
							class="nav-link" href="/bigdata/notifications"> 알림 </a>
					</nav>
                        <hr class="mt-0 mb-4" />
                        <div class="row">
                            <div class="col-lg-4 mb-4">
                                <!-- Billing card 1-->
                                <div class="card h-100 border-start-lg border-start-primary">
                                    <div class="card-body">
                                        <div class="small text-muted">Current monthly bill</div>
                                        <div class="h3">$20.00</div>
                                        <a class="text-arrow-icon small" href="#!">
                                            Switch to yearly billing
                                            <i data-feather="arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Billing card 2-->
                                <div class="card h-100 border-start-lg border-start-secondary">
                                    <div class="card-body">
                                        <div class="small text-muted">Next payment due</div>
                                        <div class="h3">July 15</div>
                                        <a class="text-arrow-icon small text-secondary" href="#!">
                                            View payment history
                                            <i data-feather="arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-4">
                                <!-- Billing card 3-->
                                <div class="card h-100 border-start-lg border-start-success">
                                    <div class="card-body">
                                        <div class="small text-muted">Current plan</div>
                                        <div class="h3 d-flex align-items-center">Freelancer</div>
                                        <a class="text-arrow-icon small text-success" href="#!">
                                            Upgrade plan
                                            <i data-feather="arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Payment methods card-->
                        <div class="card card-header-actions mb-4">
                            <div class="card-header">
                                Payment Methods
                                <button class="btn btn-sm btn-primary" type="button">Add Payment Method</button>
                            </div>
                            <div class="card-body px-0">
                                <!-- Payment method 1-->
                                <div class="d-flex align-items-center justify-content-between px-4">
                                    <div class="d-flex align-items-center">
                                        <i class="fab fa-cc-visa fa-2x cc-color-visa"></i>
                                        <div class="ms-4">
                                            <div class="small">Visa ending in 1234</div>
                                            <div class="text-xs text-muted">Expires 04/2024</div>
                                        </div>
                                    </div>
                                    <div class="ms-4 small">
                                        <div class="badge bg-light text-dark me-3">Default</div>
                                        <a href="#!">Edit</a>
                                    </div>
                                </div>
                                <hr />
                                <!-- Payment method 2-->
                                <div class="d-flex align-items-center justify-content-between px-4">
                                    <div class="d-flex align-items-center">
                                        <i class="fab fa-cc-mastercard fa-2x cc-color-mastercard"></i>
                                        <div class="ms-4">
                                            <div class="small">Mastercard ending in 5678</div>
                                            <div class="text-xs text-muted">Expires 05/2022</div>
                                        </div>
                                    </div>
                                    <div class="ms-4 small">
                                        <a class="text-muted me-3" href="#!">Make Default</a>
                                        <a href="#!">Edit</a>
                                    </div>
                                </div>
                                <hr />
                                <!-- Payment method 3-->
                                <div class="d-flex align-items-center justify-content-between px-4">
                                    <div class="d-flex align-items-center">
                                        <i class="fab fa-cc-amex fa-2x cc-color-amex"></i>
                                        <div class="ms-4">
                                            <div class="small">American Express ending in 9012</div>
                                            <div class="text-xs text-muted">Expires 01/2026</div>
                                        </div>
                                    </div>
                                    <div class="ms-4 small">
                                        <a class="text-muted me-3" href="#!">Make Default</a>
                                        <a href="#!">Edit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Billing history card-->
                        <div class="card mb-4">
                            <div class="card-header">Billing History</div>
                            <div class="card-body p-0">
                                <!-- Billing history table-->
                                <div class="table-responsive table-billing-history">
                                    <table class="table mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-gray-200" scope="col">Transaction ID</th>
                                                <th class="border-gray-200" scope="col">Date</th>
                                                <th class="border-gray-200" scope="col">Amount</th>
                                                <th class="border-gray-200" scope="col">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>#39201</td>
                                                <td>06/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-light text-dark">Pending</span></td>
                                            </tr>
                                            <tr>
                                                <td>#38594</td>
                                                <td>05/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-success">Paid</span></td>
                                            </tr>
                                            <tr>
                                                <td>#38223</td>
                                                <td>04/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-success">Paid</span></td>
                                            </tr>
                                            <tr>
                                                <td>#38125</td>
                                                <td>03/15/2021</td>
                                                <td>$29.99</td>
                                                <td><span class="badge bg-success">Paid</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
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
