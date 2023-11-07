<!DOCTYPE html>
<%@page import="com.smhrd.bigdata.model.TestMember"%>
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
<link href="../css/styles.css" rel="stylesheet" />
<link rel="icon" type="image/x-icon" href="../assets/img/favicon.png" />
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
		<jsp:include page="guide_nav.jsp"></jsp:include>


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
											<i data-feather="tool"></i>
										</div>
										IoT 세팅하기
									</h1>
									<div class="page-header-subtitle">클라우드 서비스 준비1</div>
								</div>
							</div>
						</div>
					</div>
				</header>
				<!-- Main page content-->
				<div class="container-xl px-4">
					<div class="card mt-n10">
						<div class="card-header">아두이노 IDE 설치하기</div>
						<div class="card-body">
							<a href="https://www.arduino.cc/en/software">https://www.arduino.cc/en/software</a>
							<br>링크에 접속후 사용자 컴퓨터 사양에 맞는 파일을 다운로드 합니다.<br> 다운로드 버튼을
							누르고 JUST DOWNLOAD 버튼을 누르면 됩니다.
							<div class="alert alert-primary mt-4" role="alert">
								Chrome이 아닌 Internet Exploer나 Microsoft Edge에서 다운로드를 권장합니다.<br>
								<br> 아오팜에서 사용중인 아두이노 보드는 “아두이노 D1 R32”입니다.<br>
								<div class="fw-600 list-inline-item">아두이노 D1 R32</div>
								기준의 코드 가이드 라인이 제공 됩니다.
							</div>

						</div>
					</div>

					<div class="card mt-4">
						<div class="card-header">드라이버 설치하기</div>
						<div class="card-body">

							<div style="font-size: 1.8rem">• 보드 관리자 추가 하기</div>
							파일 -> 기본 설정 으로 들어가서 추가 보드 관리자 URL에 추가하기
							<div class="fw-600">http://arduino.esp8266.com/stable/package_esp8266com_index.json</div>
							<div style="height: 8rem"></div>
							<div style="font-size: 1.8rem">○ 다운로드 받아야 하는 라이브러리 목록</div>
							<div class="text-lg">깃에서 라이브러리 다운받기</div>
							1. 와이파이 라이브러리

							<a href="https://github.com/esp8266/Arduino">https://github.com/esp8266/Arduino</a>
							깃 링크로 접속 합니다.
							<div style="height: 3rem"></div>
							<div style="text-align: center">
								<img width="80%" alt="" src="../assets/img/guide/01.png">
							</div>
							파일을 다운 받습니다.
							다운 받은 파일의 압축을 풀지 말고, 아래 과정을 진행합니다.
							아두이노
							IDE의 "스케치" >> “라이브러리 포함하기" >> ".ZIP 라이브러리 추가"를 클릭합니다.
							
							
							<div style="height: 30rem"></div>
							1. “esp32” by Espressif Systems<br>
							-> 라이브 러리 목록에서 검색 후 다운로드<br> <br> 2. 와이파이 라이브러리 다운 받기<br>
							
							<br> <br>
							
							사진처럼 <br>  그림 처럼 <br> 3.
							“DHT11” by Dhruba Saha<br> -> 라이브 러리 목록에서 검색 후 다운로드<br>
							<br>
							<br>
							<br>
							사진처럼 파일을 다운 받습니다.<br>
							 <div style="text-align: center">
								<img width="80%" alt="" src="../assets/img/guide/02.png">
							</div>
							 다운 받은 파일의 압축을 풀지 않고 위 처럼
							 <br>
							IDE의 "스케치" >> “라이브러리 포함하기" >> ".ZIP 라이브러리 추가"를 클릭합니다.<br> <br>3.
							“DHT11” by Dhruba Saha<br> -> 라이브 러리 목록에서 검색 후 다운로드<br><br>
							4. “HTTPClient” by Adrian McEwen.....<br> -> 라이브 러리 목록에서 검색
							후 다운로드<br><br> 5. “ONEWire” by Jim Studt, Tom Pollard<br>
							-> 라이브 러리 목록에서 검색 후 다운로드<br>
						</div>
					</div>
				</div>



			</main>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="../js/scripts.js"></script>
</body>
</html>
