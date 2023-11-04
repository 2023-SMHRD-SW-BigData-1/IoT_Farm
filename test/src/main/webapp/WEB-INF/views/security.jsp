<!DOCTYPE html>
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
<title>Account Settings - Security - SB Admin Pro</title>
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
							class="nav-link active" href="/bigdata/security">보안</a> <a
							class="nav-link" href="/bigdata/notifications">알림</a>
					</nav>
					<hr class="mt-0 mb-4" />
					<div class="row">
						<div class="col-lg-8">
							<!-- Change password card-->
							<div class="card mb-4">
								<div class="card-header">Change Password</div>
								<div class="card-body">
									<form action="changePw" method="post">
										<!-- Form Group (current password)-->
										<div class="mb-3">
											<label class="small mb-1" for="currentPassword">현재
												비밀번호</label> <input class="form-control" id="currentPassword"
												type="password" placeholder="현재 비밀번호 입력" name="cPw" />
										</div>
										<!-- Form Group (new password)-->
										<div class="mb-3">
											<label class="small mb-1" for="newPassword">새 비밀번호</label> <input
												class="form-control" id="newPassword" type="password"
												placeholder="새 비밀번호 입력" name="nPw" />
										</div>
										<!-- Form Group (confirm password)-->
										<div class="mb-3">
											<label class="small mb-1" for="confirmPassword">비밀번호
												확인</label> <input class="form-control" id="confirmPassword"
												type="password" placeholder="새 비밀번호 확인" name="cnPw" />
										</div>
										<button class="btn btn-primary" type="submit"
											style="font-size: 1rem">Save change</button>
									</form>
								</div>
							</div>


<!-- 2 -->
							<div class="card mb-4 ">
								<div class="card-header">Change Email Address</div>
								<div class="card-body">
									<form action="changeEmail" method="post">
										<!-- Form Group (current password)-->
										<div class="mb-3">
											<label class="small mb-1" for="currentPassword">현재
												이메일</label> <input class="form-control" value="${user.email }"
												disabled />
										</div>
										<!-- Form Group (new password)-->
										<div class="mb-3">
											<label class="small mb-1" for="newPassword">변경 이메일</label> <input
												class="form-control" id="newPassword" type="text"
												name="cEmail" placeholder="새 이메일 입력" />
										</div>
										<button class="btn btn-primary" type="submit"
											style="font-size: 1rem">Save change</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-lg-4">

							<!-- Delete account card-->
							<div class="card mb-4">
								<div class="card-header">Delete Account</div>
								<div class="card-body">
									<p>계정 삭제는 영구적인 작업이며 취소가 불가능 합니다. 삭제를 원한다면 아래 버튼을 선택하세요.</p>
									<a href="/bigdata/delete"><div class="btn btn-outline-danger" role="button" style="font-size: 1rem">이해했습니다, 영구적으로 삭제할게요</div></a>
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
		};
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
