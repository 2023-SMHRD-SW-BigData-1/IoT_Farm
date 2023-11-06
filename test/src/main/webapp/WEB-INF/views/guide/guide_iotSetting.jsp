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
https://www.arduino.cc/en/software에 접속후 사용자 컴퓨터 사양에 맞는 파일을<br>다운로드 합니다.<br>
다운로드 버튼을 누르고 JUST DOWNLOAD 버튼을 누르면 됩니다.<br>
Chrome이 아닌 Internet Exploer나 Microsoft Edge에서 다운로드를 권장합니다.<br>
아오팜에서 사용중인 아두이노 보드는 “아두이노 D1 R32”입니다.<br>
아두이노 D1 R32 기준의 코드 가이드 라인이 제공 됩니다.
						</div>
					</div>
					
					<div class="card mt-4">
						<div class="card-header">드라이버 설치하기</div>
						<div class="card-body">
보드 관리자 추가 하기<br>
파일 -> 기본 설정 으로 들어가서 추가 보드 관리자 URL에 내용 추가하기 
http://arduino.esp8266.com/stable/package_esp8266com_index.json

						</div>
					</div>
					<div class="card mt-4">
						<div class="card-header">라이브러리 다운받기</div>
						<div class="card-body">
○ 다운로드 받아야 하는 라이브러리 목록 
1. “esp32”  by Espressif Systems
-> 라이브 러리 목록에서 검색 후 다운로드

2. 와이파이 라이브러리 다운 받기
https://github.com/esp8266/Arduino
깃 링크로 접속 합니다.


위의 사진처럼 파일을 다운 받습니다.









다운 받은 파일의 압축을 풀지 말고, 아래 그림 처럼 아두이노 IDE의 "스케치" >> “라이브러리 포함하기" >> ".ZIP 라이브러리 추가"를 클릭합니다.



3. “DHT11”  by Dhruba Saha
-> 라이브 러리 목록에서 검색 후 다운로드

4. “HTTPClient”  by Adrian McEwen.....
-> 라이브 러리 목록에서 검색 후 다운로드
5. “ONEWire”  by Jim Studt, Tom Pollard
-> 라이브 러리 목록에서 검색 후 다운로드
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
