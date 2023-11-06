<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.bigdata.model.TestMember"%>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<jsp:include page="admin_header.jsp"></jsp:include>
	<%
	List<TestMember> list = (List<TestMember>) request.getAttribute("list");

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	%>
	<div id="layoutSidenav" style="margin-left: -15rem">
		<div id="layoutSidenav_nav"></div>
		<div id="layoutSidenav_content">
			<main>

				<!-- Main page content-->
				<div class="container-xl px-4">
					<div class="card mb-4">
						<div class="card-header">User Data</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Email</th>
										<th>Join Date</th>
										<th>Pclass</th>
										<th>Action</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Email</th>
										<th>Join Date</th>
										<th>Pclass</th>
										<th>Action</th>
									</tr>
								</tfoot>
								<tbody>
									<%
										for (TestMember user : list) {
										%>
										<tr>
											<td><%=user.getId()%></td>
											<td><%=user.getName()%></td>
											<td><%=user.getEmail()%></td>
											<td><%=sdf.format(user.getJoindate())%></td>
											<td>
												<div
													class="badge <%if (user.getPclass().equals("Paid")) {%>bg-primary<%} else if(user.getPclass().equals("Premium")){%>bg-warning<%}else{%>bg-light text-body<%} %> text-white rounded-pill">
													<%=user.getPclass()%>
												</div>
											</td>
											<td>
											<button class="btn btn-datatable btn-icon btn-transparent-dark me-2"><i data-feather="more-vertical"></i></button>
											</td>
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
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables/datatables-simple-demo.js"></script>
</body>
</html>
