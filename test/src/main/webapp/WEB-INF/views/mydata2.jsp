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

</head>
<body class="nav-fixed">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="modal.jsp"></jsp:include>
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



						<!-- iot-->
						<div class="sidenav-menu-heading nav-menu">
							<div>iot register</div>
							<%
							if (max.getMaxIot() > max.getMyIot()) {
							%>
							<button
								class="nav-plus badge bg-primary-soft text-primary ms-auto"
								href="#" data-bs-toggle="modal" data-bs-target="#iotModal1">+</button>
							<%
							} else {
							%>
							<a style="text-decoration: none"
								class="nav-plus badge bg-primary-soft text-primary" href="#!"
								tabindex="0" data-bs-container="body" data-bs-toggle="popover"
								data-bs-placement="right"
								data-bs-content="더 많은 IoT를 사용 가능을 위해 버전 업그레이드가 필요합니다!"
								title="IoT의 최대개수에 도달했습니다.">+</a>
							<%
							}
							%>
						</div>

						<c:forEach items="${iotList}" var="item">
							<a class="nav-link collapsed mt-10px" href="javascript:void(0);"
								data-bs-toggle="collapse"
								data-bs-target="#collapseUtilities${item.iot_num}"
								aria-expanded="false" aria-controls="collapseUtilities">
								<div class="nav-link-icon">
									<i data-feather="settings"></i>
								</div> ${item.iot_name}
								<div class="sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="collapseUtilities${item.iot_num }"
								data-bs-parent="#accordionSidenav">
								<nav class="sidenav-menu-nested nav">
									<c:forEach items="${sensorList}" var="item2">
										<c:forEach items="${item2}" var="item3">
											<c:if test="${item.getIot_num().equals(item3.getIot_num())}">
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
									}
									%>
								</nav>
							</div>
						</c:forEach>


						<!-- dashboard-->
						<div class="sidenav-menu-heading nav-menu">
							<div>dash boards</div>
							<button
								class="nav-plus badge bg-primary-soft text-primary ms-auto"
								href="#" data-bs-toggle="modal"
								data-bs-target="#dashboardModal1">+</button>
						</div>

						<c:forEach items="${dashboardList }" var="item">
							<c:forEach items="${snList}" var="item2">
								<a class="nav-link collapsed mt-10px" href="#"
									onclick="dataselect(${item2.sensor_num})">
									<div class="nav-link-icon">
										<i data-feather="layout"></i>
									</div>${item.dashboard_name}
								</a>
							</c:forEach>
						</c:forEach>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<c:forEach items="${iotList}" var="item">
		<!-- sensor Modal -->
		<div class="modal" id="exampleModalCenter${item.iot_num }"
			tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
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
							<button class="btn btn-primary" type="submit">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</c:forEach>


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

</body>
</html>