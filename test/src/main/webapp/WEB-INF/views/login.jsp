<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Login - SB Admin Pro</title>
<link href="css/styles.css" rel="stylesheet" />
<link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="nav-fixed nav_login">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content" class="mt-100p">
			<main>
					<div class="container-xl px-4 w-1600">
						<div class="row">
							<div class="col-lg-5">
								<!-- Basic login form-->
								<div class="card shadow-lg border-0 rounded-lg mt-5">
									<div class="card-header justify-content-center">
										<h1 class="fw-light my-4">로그인</h1>
									</div>
									<div class="card-body">
										<!-- Login form-->
										<form>
											<!-- Form Group (아이디)-->
											<div class="mb-3">
												<label class="small mb-1" for="inputId">아이디</label> <input
													class="form-control" id="inputId" type="text"
													placeholder="아이디를 입력하세요" />
											</div>
											<!-- Form Group (비밀번호)-->
											<div class="mb-3">
												<label class="small mb-1" for="inputPassword">비밀번호</label> <input
													class="form-control" id="inputPassword" type="password"
													placeholder="비밀번호를 입력하세요" />
											</div>
											<!-- Form Group (login box)-->
											<div
												class="d-flex align-items-center justify-content-between mt-4 mb-0">
												<a class="small" href="auth-password-basic.html">비밀번호를
													잊어버리셨나요?</a> <a class="btn btn-primary qna_btn" href="dashboard-1.html">로그인</a>
											</div>
										</form>
									</div>
									<div class="card-footer text-center">
										<div class="small">
											<a href="/bigdata/join">ID가 없으시다면 ? 회원가입하세요 !</a>
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
	<script src="js/scripts.js"></script>
</body>
</html>
