<!DOCTYPE html>
<%@page import="com.smhrd.bigdata.model.Iotsensor_Info"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.smhrd.bigdata.model.Sensor_Re"%>
<%@page import="com.smhrd.bigdata.model.IoT_Sensor"%>
<%@page import="com.smhrd.bigdata.model.TestMember"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.bigdata.model.Useriot_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script>
	/* function dashboard_click(idx) {
        $.ajax({
            url: "mydata/" + idx, // 요청을 보낼 URL
            type: "GET", // HTTP 요청 메서드 (GET 요청)
            success: function(response) {
                // 요청이 성공하면 실행할 코드
                console.log("요청 성공!");
                // 여기에서 response를 사용하여 원하는 작업을 수행할 수 있습니다.
            },
            error: function(xhr, status, error) {
            	console.log(idx);
                // 요청이 실패하면 실행할 코드
                console.log("요청 실패!");
                console.log("상태 코드: " + status);
                console.log("에러: " + error);
            }
        });
    }
 */   
	</script>
<script>
	function nextModal() {
		let dbName = $('#inputDbName').val();

		$.ajax({
			url : "mydata/dashboardadd1",
			type : "post",
			data : {
				'dbName' : dbName
			}

		});
	    var sensorSelect = document.getElementById("sensorSelect");
	    var modal2Body = document.getElementById("modal2-body");

	    // 선택한 값 가져오기
	    var selectedValue = sensorSelect.value;

	    // modal2-body 내용 업데이트
	    modal2Body.innerHTML = "";

	    for (var i = 0; i < selectedValue; i++) {
	        var modal2Content = document.createElement("div");
	        modal2Content.classList.add("modal-body");
	        modal2Content.innerHTML = `
	        	<div class="mb-3 modal-flex">
				<div class="modal-iot">차트 이름:</div>
				<input class="form-control" id="inputchartName"
					name="chartName" type="text" />
			</div>
	            <div class="mb-3 modal-flex">
	                <div class="modal-iot">사용 IoT + 센서:</div>
	                <select class="dashboard-count" id="iotSelect" name="sensorNum">
	                    <option value="none"></option>
	        <c:forEach items="${snList}" var="item">
	                    <option value="${item.sensor_num}">${item.sensor_name}</option>
	        </c:forEach>
	                </select>
	            </div>
	            <div class="mb-3 modal-flex">
	                <div class="modal-iot">차트 타입:</div>
	                <select class="dashboard-count" name="chartType">
	                    <option value="none"></option>
	                    <option value="bar">bar</option>
	                    <option value="circle">circle</option>
	                </select>
	            </div>
	            <div class="line2"></div>
	        `;

	        modal2Body.appendChild(modal2Content);
	    }
	}
	</script>
</head>
<body class="nav-fixed">

	<jsp:include page="header.jsp"></jsp:include>

	<%
	IoT_Sensor max = (IoT_Sensor) session.getAttribute("max");
	%>
	<div id="layoutSidenav">

		<!-- 내비게이션 -->
		<div id="layoutSidenav_nav">
			<nav class="sidenav shadow-right sidenav-light ">
				<a href="/bigdata/" class="mx-4 mt-n4 mb-sm-5"> <img
					class="img-fluid" src="assets/img/ioflogo.png" alt="" />
				</a>
				<div class="sidenav-menu">
					<div class="nav accordion" id="accordionSidenav">
						<!-- Sidenav Menu Heading (Core)-->
						<div class="sidenav-menu-heading nav-menu">
							<div>iot register</div>
							<%
							if (max.getMaxIot() > max.getMyIot()) {
							%>
							<button
								class="nav-plus badge bg-primary-soft text-primary ms-auto"
								href="#" data-bs-toggle="modal"
								data-bs-target="#exampleModalCenter">+</button>
							<%
							} else {
							%>
							<button class="nav-plus badge bg-primary-soft text-primary "
								href="#">+</button>
							<%
							}
							%>
						</div>
						<!-- Sidenav Accordion (Utilities)-->
						<tbody>
							<c:forEach items="${iotList}" var="item">
								<tr>



									<td><a class="nav-link collapsed mt-10px"
										href="javascript:void(0);" data-bs-toggle="collapse"
										data-bs-target="#collapseUtilities${item.iot_num}"
										aria-expanded="false" aria-controls="collapseUtilities">
											<div class="nav-link-icon">
												<i data-feather="tool"></i>
											</div> ${item.iot_name}
											<div class="sidenav-collapse-arrow">
												<i class="fas fa-angle-down"></i>
											</div>
									</a></td>
									<td>
										<div class="collapse" id="collapseUtilities${item.iot_num}"></div>
										<div id="sensorList${iotList }"></div>
									<td><div class="collapse"
											id="collapseUtilities${item.iot_num }"></div>
										<div class="collapse" id="collapseUtilities${item.iot_num}"></div>
										<div id="sensorList${iotList }"></div>
										<div class="collapse" id="collapseUtilities${item.iot_num }"
											data-bs-parent="#accordionSidenav">
											<nav class="sidenav-menu-nested nav">
												<c:forEach items="${sensorList}" var="item2">
													<c:forEach items="${item2}" var="item3">
														<c:if
															test="${item.getIot_num().equals(item3.getIot_num())}">
															<a class="nav-link" href="#" data-bs-toggle="modal">${item3.sensor_name}</a>
														</c:if>
													</c:forEach>
												</c:forEach>
												<%
												if (max.getMaxSensor() > max.getMySensor()) {
												%>
												<button class="nav-link sensor-btn" data-bs-toggle="modal"
													data-bs-target="#exampleModalCenter${item.iot_num}">센서등록</button>
												<%
												} else {
												%>
												<button class="nav-link sensor-btn" data-bs-toggle="modal"
													href="#">센서등록</button>
												<%
												}
												%>
											</nav>
										</div></td>



								</tr>
							</c:forEach>
						</tbody>

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

						<c:forEach items="${dashboardList }" var="item">
							<c:forEach items="${snList }" var="item2">
								<a class="nav-link collapsed mt-10px"
									href="mydata/${item2.sensor_num }"
									onclick ="dataselect()">
									<div class="nav-link-icon">
										<i data-feather="activity"></i>
									</div>${item.dashboard_name }

								</a>
							</c:forEach>
						</c:forEach>


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
										토마토 온도 대시보드
									</h1>
									<div class="page-header-subtitle">토마토 온도 센서</div>
								</div>
							</div>
						</div>
					</div>
				</header>

				<!-- Dashboard content-->
				<div class="container-xl px-4">
					<div class="card mt-n10">

						<div class="card-body">
							<div class="mb-4">
								<!-- Area chart example-->
								<div class="card mb-4">
									<div class="card-header">Revenue Summary</div>
									<div class="card-body">
										<div class="chart-area">
											<canvas id="myAreaChart" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<!-- Bar chart example-->
										<div class="card h-100">
											<div class="card-header">Sales Reporting</div>
											<div
												class="card-body d-flex flex-column justify-content-center">
												<div class="chart-bar">
													<canvas id="myBarChart" width="100%" height="30"></canvas>
												</div>
											</div>
											<div class="card-footer position-relative">
												<a class="stretched-link" href="#!">
													<div
														class="text-xs d-flex align-items-center justify-content-between">
														View More Reports <i class="fas fa-long-arrow-alt-right"></i>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<!-- Pie chart example-->
										<div class="card h-100">
											<div class="card-header">Traffic Sources</div>
											<div class="card-body">
												<div class="chart-pie mb-4">
													<canvas id="myPieChart" width="100%" height="50"></canvas>
												</div>
												<div class="list-group list-group-flush">
													<div
														class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
														<div class="me-3">
															<i class="fas fa-circle fa-sm me-1 text-blue"></i> Direct
														</div>
														<div class="fw-500 text-dark">55%</div>
													</div>
													<div
														class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
														<div class="me-3">
															<i class="fas fa-circle fa-sm me-1 text-purple"></i>
															Social
														</div>
														<div class="fw-500 text-dark">15%</div>
													</div>
													<div
														class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
														<div class="me-3">
															<i class="fas fa-circle fa-sm me-1 text-green"></i>
															Referral
														</div>
														<div class="fw-500 text-dark">30%</div>
													</div>
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
					<form id="iotForm" action="mydata/iotadd" method="post">
						<div class="modal-body">
							<div class="mb-3 modal-flex">
								<div class="modal-iot">IoT 이름:</div>
								<input class="form-control" id="inputIot" type="text"
									name="iotName" />
							</div>
						</div>
						<div class="modal-footer">

							<button class="btn btn-primary" type="submit"
								onclick="location.href='mydata'">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- dashboard Modal 1 -->
		<form action="mydata/dashboardadd1" method="post">
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
								<input class="form-control" id="inputDbName"
									name="dashboardName" type="text" />
							</div>
							<div class="mb-3 modal-flex">
								<div class="modal-iot">사용 차트 수:</div>
								<select class="dashboard-count chart-width" id="sensorSelect">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</select>
							</div>
						</div>
						<div class="modal-footer">

							<button class="btn btn-primary" type="button"
								data-bs-toggle="modal" data-bs-target="#exampleModalCenter2"
								onclick="nextModal()">다음</button>
						</div>
					</div>
				</div>
			</div>
		</form>
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
					<form action="mydata/chartadd" method="post">
						<div id="modal2-body"></div>
						<div class="modal-footer">
							<button class="btn btn-primary" type="submit" aria-label="Close"
								onclick="chartBtn()">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		</form>
		<tbody>
			<c:forEach items="${iotList }" var="item">
				<!-- sensor Modal -->
				<div class="modal" id="exampleModalCenter${item.iot_num }"
					tabindex="-1" role="dialog"
					aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalCenterTitle">센서 등록</h5>
								<button class="btn-close" type="button" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<form id="sensorForm" action="mydata/sensoradd/${item.iot_num}"
								method="get">
								<div class="modal-body">
									<div class="mb-3 modal-flex">
										<div class="wd-40">센서 이름:</div>
										<input class="form-control" id="inputsensorName" type="text"
											name="sensorName" />
									</div>
									<div class="mb-3 modal-flex">
										<div class="modal-iot">센서 종류:</div>
										<select class="dashboard-count" id="iot_sensor"
											name="sensorType">
											<option value="1">온도</option>
											<option value="2">습도</option>
											<option value="3">조도</option>
											<option value="4">토양수분</option>
											<option value="5">강우</option>
										</select>
									</div>
								</div>
								<div class="modal-footer">

									<button class="btn btn-primary" type="submit"
										onclick="checkIotSensor()">확인</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:forEach>
		</tbody>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js">
</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="assets/demo/chart-pie-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js"
		crossorigin="anonymous"></script>
	<script src="js/litepicker.js"></script>
	<script>
	// Area Chart Example
	function dataselect(idx){
		$.ajax({
			type : "GET",
			url : "mydata/"+idx,
			data : {reselect : "reselect"},
			success : function(response){
				console.log(reselect)
			},
			error:function(xhr, status, error){
				consloe.log("error")
			}
		})
	};
		
	var ctx = document.getElementById("myAreaChart");
	var myLineChart = new Chart(ctx, {
	    type: "line",
	    data: {
	        labels: [
	            "Jan",
	            "Feb",
	            "Mar",
	            "Apr",
	            "May",
	            "Jun",
	            "Jul",
	            "Aug",
	            "Sep",
	            "Oct",
	            "Nov",
	            "Dec"
	        ],
	        datasets: [{
	            label: "Earnings",
	            lineTension: 0.3,
	            backgroundColor: "rgba(0, 97, 242, 0.05)",
	            borderColor: "rgba(0, 97, 242, 1)",
	            pointRadius: 3,
	            pointBackgroundColor: "rgba(0, 97, 242, 1)",
	            pointBorderColor: "rgba(0, 97, 242, 1)",
	            pointHoverRadius: 3,
	            pointHoverBackgroundColor: "rgba(0, 97, 242, 1)",
	            pointHoverBorderColor: "rgba(0, 97, 242, 1)",
	            pointHitRadius: 10,
	            pointBorderWidth: 2,
	            data: [
	                0,
	                10000,
	                5000,
	                15000,
	                10000,
	                20000,
	                15000,
	                25000,
	                20000,
	                30000,
	                25000,
	                40000
	                
	            ]
	        }]
	    },
	    options: {
	        maintainAspectRatio: false,
	        layout: {
	            padding: {
	                left: 10,
	                right: 25,
	                top: 25,
	                bottom: 0
	            }
	        },
	        scales: {
	            xAxes: [{
	                time: {
	                    unit: "date"
	                },
	                gridLines: {
	                    display: false,
	                    drawBorder: false
	                },
	                ticks: {
	                    maxTicksLimit: 7
	                }
	            }],
	            yAxes: [{
	                ticks: {
	                    maxTicksLimit: 5,
	                    padding: 10,
	                    // Include a dollar sign in the ticks
	                    callback: function(value, index, values) {
	                        return number_format(value);
	                    }
	                },
	                gridLines: {
	                    color: "rgb(234, 236, 244)",
	                    zeroLineColor: "rgb(234, 236, 244)",
	                    drawBorder: false,
	                    borderDash: [2],
	                    zeroLineBorderDash: [2]
	                }
	            }]
	        },
	        legend: {
	            display: false
	        },
	        tooltips: {
	            backgroundColor: "rgb(255,255,255)",
	            bodyFontColor: "#858796",
	            titleMarginBottom: 10,
	            titleFontColor: "#6e707e",
	            titleFontSize: 14,
	            borderColor: "#dddfeb",
	            borderWidth: 1,
	            xPadding: 15,
	            yPadding: 15,
	            displayColors: false,
	            intersect: false,
	            mode: "index",
	            caretPadding: 10,
	            callbacks: {
	                label: function(tooltipItem, chart) {
	                    var datasetLabel =
	                        chart.datasets[tooltipItem.datasetIndex].label || "";
	                    return datasetLabel + ": $" + number_format(tooltipItem.yLabel);
	                }
	            }
	        }
	    }
	});
	

	</script>

</body>
</html>