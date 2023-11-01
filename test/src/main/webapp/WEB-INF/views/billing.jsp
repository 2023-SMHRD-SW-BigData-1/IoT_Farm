<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.bigdata.model.Bill"%>
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
<title>Tables - SB Admin Pro</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
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

	<!-- 헤더부분 -->
	<jsp:include page="header.jsp"></jsp:include>
	<div id="layoutSidenav">
<%
Bill last=(Bill)request.getAttribute("last");
Calendar calendar = Calendar.getInstance();
calendar.setTime(last.getEnd_date());
calendar.add(Calendar.DAY_OF_MONTH, 1);
SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
String next_date=outputFormat.format(calendar.getTime());


List<Bill> list = (List<Bill>) request.getAttribute("list");
%>
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
									<div class="small text-muted">최근 결제 내역</div>
									<div class="h3">${last.start_date}</div>
									<div>${last.product } 상품 결제</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 mb-4">
							<!-- Billing card 2-->
							<div class="card h-100 border-start-lg border-start-secondary">
								<div class="card-body">
									<div class="small text-muted">현재 버전</div>
									<div class="h3">${user.pclass }</div>
									<a class="text-arrow-icon small text-secondary"
										href="/bigdata/pricing"> 업그레이드 하러가기 <i
										data-feather="arrow-right"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="col-lg-4 mb-4">
							<!-- Billing card 3-->
							<div class="card h-100 border-start-lg border-start-success">
								<div class="card-body">
									<div class="small text-muted">다음 결제일</div>
									<div class="h3 d-flex align-items-center"><%=next_date%></div>
									<a class="text-arrow-icon small text-success"
										href="/bigdata/pricing"> 사전 결제 하러가기 <i
										data-feather="arrow-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>




					<div class="card mb-4">
						<div class="card-header">Billing History</div>
						<div class="card-body p-0">
							<!-- Billing history table-->
							<div class="table-responsive table-billing-history">
								<table class="table mb-0">
									<thead>
										<tr>
											<th class="border-gray-200" scope="col">Transaction ID</th>
											<th class="border-gray-200" scope="col">Product</th>
											<th class="border-gray-200" scope="col">Amount</th>
											<th class="border-gray-200" scope="col">Date</th>
											<th class="border-gray-200" scope="col">End Date</th>
										</tr>
									</thead>
									<tbody>
										<%
										for (Bill bill : list) {
										%>
										<tr>
											<td>#<%=bill.getDeal_num()%></td>
											<td>
												<div
													class="badge <%if (bill.getProduct().equals("paid")) {%>bg-primary<%} else {%>bg-warning<%}%> text-white rounded-pill">
													<%=bill.getProduct()%>
												</div>
											</td>
											<td>￦<%=bill.getPrice()%></td>
											<td><%=bill.getStart_date()%></td>
											<td><%=bill.getEnd_date()%></td>
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
