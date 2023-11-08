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
	<jsp:include page="modal.jsp"></jsp:include>
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
						<!-- iot-->
						<div class="sidenav-menu-heading nav-menu">
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
							<div class="collapse" id="collapsePages"
								data-bs-parent="#accordionSidenav">
								<nav class="sidenav-menu-nested nav accordion"
									id="accordionSidenavPagesMenu"></nav>
							</div>

							<!-- Sidenav Accordion (Dashboard)-->

							<c:forEach items="${dashboardList }" var="dashboard">
								<a class="nav-link collapsed mt-10px" href="#"
									onclick="dataselect(${dashboard.dashboard_num})">
									<div class="nav-link-icon">
										<i data-feather="layout"></i>
									</div>${dashboard.dashboard_name}
								</a>
							</c:forEach>
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
						<div id="chartdata"></div>
					</div>
				</div>
			</main>
		</div>
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
function dataselect(dashboardNum) {
    $.ajax({
        type: "GET",
        url: "mydata/" + dashboardNum,
        dataType: "json",
        success: function(response) {
        	var sensorDataLList = response.reselect;
        	var chartTypeList = response.chartTypeList;

        	console.log("sensorDataLList : ",sensorDataLList);
        	console.log("shartTypeList : ",chartTypeList);
        	
        	  	
        	

        	for (var i = 0; i < sensorDataLList.length; i++) {
        		let timeList = [];
        		let minList = [];
        		let dataList = [];
        		
        	    var chartTypehtml = chartTypeList[i]; // 현재 차트 타입을 가져옴
        		
        	    for(var j = 0; j < sensorDataLList[i].length; j++){
        	    timeList.push(sensorDataLList[i][j].re_date)
        	    dataList.push(sensorDataLList[i][j].sensor_value)
        	    minList.push(sensorDataLList[i][j].re_time)
        	    }
        	    
        	    console.log("timeList :",timeList)
        	    console.log("dataList :",dataList)
        	    console.log("minList :",minList)
        	    
        	    var chartdatacontent = document.getElementById("chartdata");

        	    


        	    if (chartTypehtml === 'line') {
        	    	var content = document.createElement("div");
        	    	content.innerHTML = `
        	        <div class ="card-body">
        	            <div class="mb-4">
        	                <div class="card mb-4">
        	                    <div class="card-header">Revenue Summary</div>
        	                    <div class="card-body">
        	                        <div class="chart-area">
        	                            <canvas id="myLineChart" width="100%" height="30"></canvas>
        	                        </div>
        	                    </div>
        	                </div>
        	            </div>
        	            </div>
        	            
        	        `;
        	        chartdatacontent.appendChild(content);
        	        
        	        
                	const maxValue = Math.max(...dataList);
					
                	var ctx = document.getElementById("myLineChart");
                	var myLineChart = new Chart(ctx, {
                	    type: "line",
                	    data: {
                	        labels: 
                	        	timeList,
                	        datasets: [{
                        	            label: "값",
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
                        	            data: dataList
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
        	        	                    maxTicksLimit: timeList.length
        	        	                }
        	        	            }],
                	            yAxes: [{
                	                ticks: {
                	                	min: 0,
                	                    max: maxValue,
                	                    maxTicksLimit: 10,
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
                	                     var labelText = datasetLabel + " : " + number_format(tooltipItem.yLabel);
                	                     labelText += ", 시간 : " + minList[tooltipItem.index]; // minList 값 추가
                	                     return labelText;
                	                }
                	            }
                	        }
                	    }
                	}); 
        	        
        	        
        	        
        	        
        	    } else if (chartTypehtml === 'bar') {
        	    	var content = document.createElement("div");
    	    		content.innerHTML = `
        	        	 <div class ="card-body">
        	            <div class="row">
        	                <div class="mb-4">
        	                    <div class="card h-100">
        	                        <div class="card-header">Sales Reporting</div>
        	                        <div class="card-body d-flex flex-column justify-content-center">
        	                            <div class="chart-bar">
        	                                <canvas id="myBarChart" width="100%" height="30"></canvas>
        	                            </div>
        	                        </div>
        	                    </div>
        	                </div>
        	            </div>
        	            </div>
        	        `;
        	        chartdatacontent.appendChild(content);
        	        
        			const maxValue = Math.max(...dataList);
        			
                	// Bar Chart Example
                	var ctx = document.getElementById("myBarChart");
                	var myBarChart = new Chart(ctx, {
                	    type: "bar",
                	    data: {
                	        labels: timeList,
                	        datasets: [{
                	            label: "값",
                	            backgroundColor: "rgba(0, 97, 242, 1)",
                	            hoverBackgroundColor: "rgba(0, 97, 242, 0.9)",
                	            borderColor: "#4e73df",
                	            data: dataList,
                	            maxBarThickness: 25
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
                	                    unit: "month"
                	                },
                	                gridLines: {
                	                    display: false,
                	                    drawBorder: false
                	                },
                	                ticks: {
                	                    maxTicksLimit: 6
                	                }
                	            }],
                	            yAxes: [{
                	                ticks: {
                	                    min: 0,
                	                    max: maxValue,
                	                    maxTicksLimit: 10,
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
                	            titleMarginBottom: 10,
                	            titleFontColor: "#6e707e",
                	            titleFontSize: 14,
                	            backgroundColor: "rgb(255,255,255)",
                	            bodyFontColor: "#858796",
                	            borderColor: "#dddfeb",
                	            borderWidth: 1,
                	            xPadding: 15,
                	            yPadding: 15,
                	            displayColors: false,
                	            caretPadding: 10,
                	            callbacks: {
                	                label: function(tooltipItem, chart) {
                	                	var datasetLabel =
               	                         chart.datasets[tooltipItem.datasetIndex].label || "";
               	                     var labelText = datasetLabel + " : " + number_format(tooltipItem.yLabel);
               	                     labelText += ", 시간 : " + minList[tooltipItem.index]; // minList 값 추가
               	                     return labelText;
                	                }
                	            }
                	        }
                	    }
                	});  
        			
        			
        	    }

        	    chartdatacontent.appendChild(content);
        	}
        
      
        },
        error: function(xhr, status, error) {
            console.log("error"); // 오타 수정
        }
    });
    
	};
	
	
	</script>
</body>
</html>