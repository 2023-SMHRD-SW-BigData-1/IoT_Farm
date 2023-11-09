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
		
		<!-- 내비게이션 -->
		<div id="layoutSidenav_nav">
			<nav class="sidenav shadow-right sidenav-light">
				<a href="/bigdata/" class="mx-4 mt-n4 mb-sm-5"> <img
					class="img-fluid" src="../assets/img/ioflogo.png" alt="" />
				</a>
				<div class="sidenav-menu">
					<div class="nav accordion" id="accordionSidenav">

						<!-- Sidenav Heading (Custom)-->
						<div class="sidenav-menu-heading">아오팜 시작하기</div>
						<a style="font-size: 0.8rem" class="nav-link"
							href="/bigdata/guide/guide_first" class="text-body">
							<div class="nav-link-icon">
								<i data-feather="book"></i>
							</div> 서비스 소개
						</a>

						<!-- Sidenav Heading (Custom)-->
						<div class="sidenav-menu-heading">마이데이터</div>
						<!-- Sidenav Accordion (Pages)-->
						<a style="font-size: 0.8rem" class="nav-link collapsed"
							href="javascript:void(0);" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="true"
							aria-controls="collapsePages">
							<div class="nav-link-icon">
								<i data-feather="globe"></i>
							</div> 클라우드 서비스 이용하기
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>

						<div class="collapse show" id="collapsePages"
							data-bs-parent="#accordionSidenav">
							<nav class="sidenav-menu-nested nav accordion"
								id="accordionSidenavPagesMenu">
								<a class="nav-link" href="/bigdata/guide/guide_iotSetting">IoT 세팅하기</a> <a
									class="nav-link" href="/bigdata/guide/guide_iotRegistor">IoT 등록하기</a> <a
									class="nav-link" href="/bigdata/guide/guide_sensorRegistor">센서 등록하기</a>
								<!-- Nested Sidenav Accordion (Pages -> Account)-->
								<a class="nav-link collapsed" href="javascript:void(0);"
									data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAccount" aria-expanded="true"
									aria-controls="pagesCollapseAccount"> 센서 데이터 송신하기
									<div class="sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse show" id="pagesCollapseAccount"
									data-bs-parent="#accordionSidenavPagesMenu">
									<nav class="sidenav-menu-nested nav">
										<a class="nav-link" href="/bigdata/guide/guide_sensor1">온도</a> <a
											class="nav-link" href="/bigdata/guide/guide_sensor2">습도</a> <a
											class="nav-link" href="/bigdata/guide/guide_sensor3">조도</a> <a
											class="nav-link text-primary fw-700" href="/bigdata/guide/guide_sensor4">토양수분</a> <a
											class="nav-link" href="/bigdata/guide/guide_sensor5">강우</a>
									</nav>
								</div>

							</nav>
						</div>
						<!-- Sidenav Accordion (Applications)-->
						<a style="font-size: 0.8rem" class="nav-link"
							href="/bigdata/guide/guide_dashboard">
							<div class="nav-link-icon">
								<i data-feather="layout"></i>
							</div> 대시보드 구성하기
						</a>
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
									<h1 class="page-header-title fw-800">
										<div class="page-header-icon ">
											<i data-feather="book"></i>
										</div>
										토양수분센서(YL-69)
									</h1>
									<br><br>
									<div class="page-header-subtitle"></div>
								</div>
							</div>
						</div>
					</div>
				</header>
				<!-- Main page content-->

				<div class="container-xl px-4">
					<div class="card mt-n10">
						<div class="card-header">IoT 클라우드 서비스 이용하기</div>
						<div class="card-body">
							<br> <img class="list-inline-item" width="40%" alt=""
								src="../assets/img/guide/25.png"> <br>
							<div class="alert alert-primary mt-4" role="alert">
								“VCC, GND, D0, A0”핀이 달려있습니다.<br> VCC 핀은 5V(VCC) 연결, GND 핀은 GND 핀에 연결, 
D0과 A0은 디지털 값과 아날로그 값의 출력입니다.<br> 아오팜에서는  A0핀을 출력하고자 하는 아날로그 핀에 연결하시면 됩니다. <br>
							</div>

						</div>
						<div class="card-body">
							<!-- Component Preview-->
							<div class="sbp-preview">
								<div class="sbp-preview-content">
									<div class="dropdown">
										<span>예시코드</span>

									</div>
								</div>

								<!-- Tab panes-->
								<div class="tab-content">
									<div class="tab-pane active" id="dropdownDefaultHtml"
										role="tabpanel" aria-labelledby="dropdownDefaultHtmlTab">
										<pre class="language-markup">
											<code>
												<script type="text/plain">
#include <WiFi.h>
#include <HTTPClient.h>

const char* ssid = "사용자 와이파이 ID"; // 연결할 와이파이 ID를 적어주세요
const char* password = "사용자 와이파이 비밀번호"; // 연결할 와이파이 비밀번호를 적어주세요
const char* serverAddress = "112.147.180.234";
const int serverPort = 8222; 

void setup() {
  Serial.begin(115200);
  delay(10);
  pinMode(4, INPUT);
 


}

void loop() {
  delay(2000);

// 아오팜 코드 기준 4번핀으로 데이터를 받아옵니다.
// 혹시 핀 번호를 바꾸신다면 괄호 안에 숫자를 바꿔주세요
  int data = analogRead(4);

 String value = String(data); // 센서 데이터 값
 String api_key = "사용자 api_key 입력"; // 사용자 api_key 값
 String sensor_type = "4"; // 센서 데이터 값

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }

  Serial.println("Connected to WiFi");
  Serial.println(value);
  // HTTPClient 객체 생성
  HTTPClient http;

  // HTTP GET 요청 보내기
  String serverUrl = "/sensor.php?value="+value+"&api_key="+api_key+"&sensor_type="+sensor_type;
  Serial.println(serverUrl);
  http.begin(serverAddress,serverPort,serverUrl);
  http.addHeader("Content-Type", "application/json");


  int httpCode = http.GET();
  if (httpCode > 0) {
    String response = http.getString();
    Serial.println("HTTP Response Code: " + String(httpCode));
    Serial.println("Server Response: " + response);
  } else {
    Serial.println("HTTP POST request failed.");
  }

  http.end();

  delay(3000); 
  WiFi.disconnect(true);
}
</script>
											</code>
										</pre>
									</div>
									<br>
• 아두이노에서 New Sketch 클릭 <br>
• 위의 코드를 복사 후 붙여넣기<br>
• 사용자 와이파이 ssid, password 입력<br>
• IoT 등록 때 받은 사용자 api_key를 코드 중간에 입력<br>
• 업로드 버튼 누르기<br>
• 오류 없이 작동한다면 대시보드에서 확인 하기<br>
								</div>
							</div>

						</div>
					</div>
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
	<script src="../js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/components/prism-core.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/plugins/autoloader/prism-autoloader.min.js"
		crossorigin="anonymous"></script>
</body>
</html>