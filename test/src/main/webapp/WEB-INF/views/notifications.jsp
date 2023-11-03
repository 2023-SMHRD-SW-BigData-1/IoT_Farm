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
	<%
	TestMember user = (TestMember) session.getAttribute("user");
	%>
	<!-- 네비게이션 삭제 style="margin-left: -15rem; margin-top:-3.5rem"-->
	<div id="layoutSidenav">
		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>
				<!-- Main page content-->
				<div class="container-xl px-4 mt-4">
					<!-- Account page navigation-->
					<nav class="nav nav-borders">
						<a class="nav-link" href="/bigdata/profile">프로필</a> <a
							class="nav-link" href="/bigdata/billing">청구</a> <a
							class="nav-link" href="/bigdata/security">보안</a> <a
							class="nav-link active" href="/bigdata/notifications">알림</a>
					</nav>

					<hr class="mt-0 mb-4" />
					<div class="row">

						<div class="col-lg-4">



							<!-- 1 -->
							<!-- Notifications preferences card-->
							<div class="card mb-4 card-header-actions">
								<div class="card-header">
									Notification Preferences
									<button class="btn btn-primary btn-sm" style="font-size: 1rem"
										onclick="submitNoti()">Save</button>
								</div>
								<div class="card-body">


									<form action="noti" method="post" id="noti_form">
										<div class="form-check mb-2">

											<input class="form-check-input" id="checkAutoGroup"
												name="select_noti" value="email" type="checkbox"
												<%if (user.getSelect_noti().equals("1")) {%> checked
												<%}%> /> <label class="form-check-label"
												for="checkAutoGroup">이메일 알림</label>
										</div>
									</form>
								</div>
							</div>
						</div>


						<!-- 3 -->
						<div class="col-lg-8">
							<!-- Email notifications preferences card-->
							<div class="card card-header-actions mb-4">
								<div class="card-header">
									Email Notifications
									<button class="btn btn-primary btn-sm" style="font-size: 1rem"
										onclick="submitEmail()"
										<%if (user.getSelect_noti().equals("0")) {%> disabled <%}%>>Update</button>
								</div>
								<div class="card-body">
									<form action="noti_email" method="post" id="noti_email_form">
										<!-- Form Group (default email)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputNotificationEmail">사용
												이메일</label> <input class="form-control" id="inputNotificationEmail"
												type="email" value="${user.email }" disabled />
										</div>
										<!-- Form Group (email updates checkboxes)-->
										<div class="mb-0">
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkAccountGroups"
													name="email_noti" value="op1" type="checkbox"
													<%if (user.getEmail_noti().charAt(0) == '1') {%> checked
													<%}%> disabled /> <label class="form-check-label"
													for="checkAccountGroups">사용자 정보 변경</label>
											</div>
											<div class="form-check mb-2">
												<input class="form-check-input" id="checkPromotional"
													name="email_noti" value="op2" type="checkbox"
													<%if (user.getEmail_noti().charAt(1) == '1') {%> checked
													<%}%> /> <label class="form-check-label"
													for="checkPromotional">결제일 안내</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" id="checkSecurity"
													name="email_noti" value="op3" type="checkbox"
													<%if (user.getEmail_noti().charAt(2) == '1') {%> checked
													<%}%> /> <label class="form-check-label"
													for="checkSecurity">아오팜 업데이트 소식</label>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</main>
		</div>
	</div>
	<script>
		window.onload = function() {
			var alertMessage = "${alertMessage}";
			if (alertMessage !== "") {
				alert(alertMessage);
			}
		}

		function submitEmail() {
			document.getElementById("noti_email_form").submit();
		}

		function submitNoti() {
			document.getElementById("noti_form").submit();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
