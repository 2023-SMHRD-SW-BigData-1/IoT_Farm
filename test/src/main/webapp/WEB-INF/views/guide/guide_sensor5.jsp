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
											<i data-feather="book"></i>
										</div>
										감우센서(MH-RD)
									</h1>
									<div class="page-header-subtitle"><br><br></div>
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
								src="../assets/img/guide/26.png"> <br>
							<div class="alert alert-primary mt-4" role="alert">
								“VCC, GND, D0, A0”핀이 달려있습니다.<br> VCC 핀은 5V(VCC) 연결, GND 핀은 GND 핀에 연결, 
D0과 A0은 디지털 값과 아날로그 값의 출력입니다.<br> 아오팜에서는  A0핀을 출력하고자 하는 아날로그 핀에 연결하시면 됩니다.<br>
							</div>

						</div>
						<div class="card-body">
							<!-- Component Preview-->
							<div class="sbp-preview">
								<div class="sbp-preview-content">
									<div class="dropdown">
										<span>아두이노 예시코드</span>

									</div>
								</div>

								<!-- Tab panes-->
								<div class="tab-content">
									<div class="tab-pane active" id="dropdownDefaultHtml"
										role="tabpanel" aria-labelledby="dropdownDefaultHtmlTab">
										<pre class="language-markup">
											<code>
												<script type="text/plain">
#include <Arduino.h>
#include <WiFi.h>
#include <HTTPClient.h>

 String value = String(data); // 센서 데이터 값
 String api_key = "사용자 api_key 입력"; // 사용자 api_key 값
 String sensor_type = "4"; // 센서 데이터 값
 const char* serverAddress = "112.147.180.234";
 const int serverPort = 8222;

// 아오팜 코드 기준 4번핀으로 데이터를 받아옵니다.
// 혹시 핀 번호를 바꾸신다면 괄호 안에 숫자를 바꿔주세요
int Raindrops_pin = 4;

void setup() {
  Serial.begin(115200);
  pinMode(Raindrops_pin, INPUT); // 강우 센서 핀을 입력 모드로 설정
 
}

void loop() {

  WiFi.disconnect(true);

// 다음 센서 값을 읽기 전에 원하는 딜레이를 설정
  delay(1000);

  int analogValue = analogRead(Raindrops_pin); // 아날로그 핀의 값을 읽음
  Serial.println(analogValue);

  delay(1000);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("Connected to WiFi");
  Serial.println(analogValue);

 String value = String(data); // 센서 데이터 값
  String api_key = "382901"; // 센서 데이터 
  String sensor_type = "4"; // 센서 데이터 값

// HTTPClient 객체 생성
  HTTPClient http;

  // HTTP GET 요청 보내기
  String url = "/sensor.php?value=" + value + "&api_key=" + api_key + "&sensor_type=" + sensor_type;
  Serial.println(url);

  http.begin(serverAddress, serverPort, url);
  int httpCode = http.GET();

  if (httpCode > 0) {
    // HTTP 요청이 성공했을 때
    String payload = http.getString();
    Serial.println("HTTP Response Code: " + String(httpCode));
    Serial.println("Response: " + payload);
  } else {
    // HTTP 요청이 실패했을 때
    Serial.println("HTTP Request failed");
  }

  // 연결 종료
  http.end();

  delay(3000);  // 1초(1000 밀리초) 동안 지연

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