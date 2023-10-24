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
<body class="nav-fixed">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container-xl px-4">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<!-- Basic login form-->
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header justify-content-center">
									<h1 class="fw-light my-4">회원가입</h1>
								</div>
								<div class="card-body">
									<!-- Join form-->
									<form action="/join" method="post">
										<!-- Form Group (아이디)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputId">아이디</label> <input
												class="form-control" id="inputId" type="text" name="id" />
										</div>
										<div class="d-flex align-items-center justify-content-right">
											<span class="joincheck">(출력란)</span>
											<button class="btn btn-primary h-10">중복확인</button>
										</div>
										<!-- Form Group (비밀번호)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputPassword">비밀번호</label> <input
												class="form-control" id="inputPassword" type="password" name="pw"/>
										</div>
										<!-- From Grooup (닉네임) -->
										<div class="mb-3">
											<label class="small mb-1" for="nickname">닉네임</label> <input
												class="form-control" id="nickname" type="text" name="name" />
										</div>
										<!-- From Grooup (Email) -->
										<div class="mb-3">
											<label class="small mb-1" for="Email">이메일</label> <input
												class="form-control" id="Email" type="text" name="email"/>
											<div
												class="d-flex align-items-center justify-content-right mt-10px">
												<button class="btn btn-primary h-10">인증번호 전송</button>
											</div>
											<div class="join_email">
												<input class="form-control wd-30 h-10" id="inputEmail"
													type="text"></input>
												<button class="btn btn-primary h-10 ml-10">인증번호
													확인</button>
											</div>
										</div>
										<!-- Form Group (join box)-->
										
										<div
											class="d-flex align-items-center justify-content-right mt-4 mb-0">
											<a class="btn btn-primary" href="/bigdata/login">확인</a>

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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>

</html>