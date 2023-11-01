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
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js"
	type="application/javascript"></script>
</head>
<body class="nav-fixed">
	<jsp:include page="header.jsp"></jsp:include>
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
									style="background-color: #B8E6E1; height: 33rem">

									<div class="card-body p-5">
										<h5
											class="text-dark mb-5 bg-white px-sm-2 pt-sm-3 py-sm-2 fw-900 rounded-xl"
											style="font-size: 3rem">Paid</h5>
										<p class="lead mb-4">신규 사용자 및 개인을 위한 버전</p>
										<div class="mb-4">
											<span class="display-4 fw-bold text-dark">￦9900</span> <span>/mo</span>
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
										href="#" onclick="buyPaid()"> Start now <i class="ms-2"
										data-feather="arrow-right"></i>
									</a>
								</div>
							</div>





							<!-- Detailed pricing column 2-->
							<div class="col-lg-6 z-1 mb-4 mb-lg-0">
								<div class="card text-center border-0 m-4 rounded-xl"
									style="background-color: #FFCD4A; height: 33rem">

									<div class="card-body p-5">
										<h5
											class="text-dark mb-5 bg-white px-sm-2 pt-sm-3 py-sm-2 fw-900 rounded-xl"
											style="font-size: 3rem">Premium</h5>
										<p class="lead mb-4">더 많은 연결과 기능을 위한 버전</p>
										<div class="mb-4">
											<span class="display-4 fw-bold text-dark">￦55000</span> <span>/mo</span>
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
										href="#" onclick="buyPremium()"> Start now <i class="ms-2"
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
	<script>
	function buyPaid(){
		BootPay.request({
			price : '9900', //실제 결제되는 가격
			application_id : "6540ac0d00c78a001c21b77a",
			name : 'Paid', //결제창에서 보여질 이름
			pg : 'inicis',
			items : [ {
				item_name : 'Paid', //상품명
				qty : 1, //수량
				unique : '1', //해당 상품을 구분짓는 primary key
				price : 9900, //상품 단가
			} ],
			order_id : '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
		}).error(function(data) {
			//결제 진행시 에러가 발생하면 수행됩니다.
			console.log(data);
		}).cancel(function(data) {
			//결제가 취소되면 수행됩니다.
			console.log(data);
		}).close(function(data) {
			// 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
			console.log(data);
		}).done(function(data) {
			//결제가 정상적으로 완료되면 수행됩니다
			//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
			console.log(data);
		});
	}
	
	function buyPremium(){
		BootPay.request({
			price : '55000', //실제 결제되는 가격
			application_id : "6540ac0d00c78a001c21b77a",
			name : 'Premium', //결제창에서 보여질 이름
			pg : 'inicis',
			items : [ {
				item_name : 'Premium', //상품명
				qty : 1, //수량
				unique : '2', //해당 상품을 구분짓는 primary key
				price : 55000, //상품 단가
			} ],
			order_id : '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
		}).error(function(data) {
			//결제 진행시 에러가 발생하면 수행됩니다.
			console.log(data);
		}).cancel(function(data) {
			//결제가 취소되면 수행됩니다.
			
			console.log(data);
		}).close(function(data) {
			// 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
			console.log(data);
		}).done(function(data) {
			//결제가 정상적으로 완료되면 수행됩니다
			//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
			console.log(data);
		});
	}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
