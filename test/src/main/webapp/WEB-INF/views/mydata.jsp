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
						<!-- Sidenav Menu Heading (Core)-->
						<div class="sidenav-menu-heading nav-menu">
							<div>iot register</div>
							<button
								class="nav-plus badge bg-primary-soft text-primary ms-auto"
								href="#" data-bs-toggle="modal"
								data-bs-target="#exampleModalCenter">+</button>
						</div>



						<!-- Sidenav Accordion (Utilities)-->
						<a class="nav-link collapsed mt-10px" href="javascript:void(0);"
							data-bs-toggle="collapse" data-bs-target="#collapseUtilities"
							aria-expanded="false" aria-controls="collapseUtilities">
							<div class="nav-link-icon">
								<i data-feather="tool"></i>
							</div> Divice1
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseUtilities"
							data-bs-parent="#accordionSidenav">
							<nav class="sidenav-menu-nested nav">
								<a class="nav-link" href="animations.html">센서 등록</a>
							</nav>
						</div>
						<!-- Sidenav Heading (Custom)-->
						<div class="sidenav-menu-heading nav-menu">
							<div>dash boards</div>
							<button
								class="nav-plus badge bg-primary-soft text-primary ms-auto"
								href="#" data-bs-toggle="modal"
								data-bs-target="#exampleModalCenter1">+</button>
						</div>

						<div class="collapse" id="collapsePages"
							data-bs-parent="#accordionSidenav">
							<nav class="sidenav-menu-nested nav accordion"
								id="accordionSidenavPagesMenu"></nav>
						</div>

						<!-- Sidenav Accordion (Dashboard)-->


						<a class="nav-link collapsed mt-10px" href="dashboard-1.html">
							<div class="nav-link-icon">
								<i data-feather="activity"></i>
							</div>Dashboard1
						</a>


					</div>
				</div>
				<!-- Sidenav Footer-->
				<div class="sidenav-footer">
					<div class="sidenav-footer-content">
						<div class="sidenav-footer-subtitle">Logged in as:</div>
						<div class="sidenav-footer-title">Valerie Luna</div>
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
									<h1 class="page-header-title">
										<div class="page-header-icon">
											<i data-feather="layout"></i>
										</div>
										Boxed Layout
									</h1>
									<div class="page-header-subtitle">On larger screens, this
										layout will keep the page content from expanding beyond a max
										width.</div>
								</div>
							</div>
						</div>
					</div>
				</header>
				<!-- Main page content-->
				<div class="container-xl px-4">
					<div class="card mt-n10">
						<div class="card-header">Boxed Layout Example</div>
						<div class="card-body">
							This is an example of a page with the default boxed layout. We've
							expanded Bootstrap by adding a ne w xxl breakpoint. As the screen
							width gets larger, the container element will set a max width to
							the content. The boxed layout uses th e max width container
							element on the page header and in the main page content in this
							example.
							<div style="height: 3000rem">네비게이션 확인</div>
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

		<!-- iot Modal -->
		<div class="modal" id="exampleModalCenter" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">IoT 등록</h5>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form>
						<div class="modal-body">
							<div class="mb-3 modal-flex">
								<div class="modal-iot">IoT 이름:</div>
								<input class="form-control" id="inputIot" type="text" />
							</div>
						</div>
						<div class="modal-footer">

							<button class="btn btn-primary" type="submit" aria-label="Close">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- dashboard Modal 1 -->
		<div class="modal" id="exampleModalCenter1" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">대시보드 생성</h5>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="mb-3 modal-flex">
							<div class="wd-40">대시보드 이름:</div>
							<input class="form-control" id="inputDashboard" type="text" />
						</div>
						<div class="mb-3 modal-flex">
							<div class="modal-iot">사용 차트 수:</div>
							<select class="dashboard-count">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="4">5</option>
							</select>
						</div>
					</div>
					<div class="modal-footer">

						<button class="btn btn-primary" type="button"
							data-bs-toggle="modal" data-bs-target="#exampleModalCenter2">다음</button>
					</div>
				</div>
			</div>
		</div>

		<!-- dashboard Modal 2 -->
		<div class="modal" id="exampleModalCenter2" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">차트 생성</h5>
						<span class="modal-span">차트 타입은 가이드라인에서 자세히 확인할 수 있습니다.</span>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="mb-3 modal-flex">
							<div class="modal-iot">IoT 이름:</div>
							<input class="form-control" id="inputIot" type="text" />
						</div>
						<div class="mb-3 modal-flex">
							<div class="modal-iot">고유코드:</div>
							<input class="form-control" id="inputCode" type="text" />
						</div>
						<div class="mb-3 modal-flex">
							<div class="modal-iot">사용IP:</div>
							<input class="form-control" id="inputIp" type="text" />
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="button" aria-label="Close">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>