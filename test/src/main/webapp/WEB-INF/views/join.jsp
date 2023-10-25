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
<script>
	function checkId() {
		var id = document.getElementById("id").value;

		// Ajax로 중복 체크 요청을 보냅니다
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState === XMLHttpRequest.DONE) {
				if (xhr.status === 200) {
					var idCheckElement = document.querySelector('.idcheck');
					idCheckElement.innerText = xhr.responseText;
				}
			}
		};
		xhr.open("GET", "/member/idcheck?input=" + id, true);
		xhr.send();
		return false; // 기본 동작 (페이지 전환)을 방지합니다.
	}
	function checkDuplicate(id) {
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState === XMLHttpRequest.DONE) {
				if (xhr.status === 200) {
					var messageElement = document
							.getElementById("idCheckMessage");
					if (xhr.responseText === "fail") {
						messageElement.innerText = "이미 사용 중인 아이디입니다.";
					} else {
						messageElement.innerText = "사용 가능한 아이디입니다.";
					}
				}
			}
		};
		xhr.open("GET", "/idCheck?input=" + id, true);
		xhr.send();
	}
</script>
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
									<form action="join" method="post">
										<!-- Form Group (아이디)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputId">아이디</label> <input
												class="form-control" id="inputId" type="text" name="id" />
										</div>
										<div class="d-flex align-items-center justify-content-right">
											<span class="idcheck">출력란</span>
											<button type="button" class="btn btn-primary h-10"
												onclick="checkId()">중복확인</button>
										</div>
										<!-- Form Group (비밀번호)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputPassword">비밀번호</label> <input
												class="form-control" id="inputPassword" type="password"
												name="pw" />
										</div>
										<!-- From Grooup (닉네임) -->
										<div class="mb-3">
											<label class="small mb-1" for="nickname">닉네임</label> <input
												class="form-control" id="nickname" type="text" name="name" />
										</div>
										<!-- From Grooup (Email) -->
										<div class="mb-3">
											<label class="small mb-1" for="Email">이메일</label> <input
												class="form-control" id="Email" type="text" name="email" />
											<div
												class="d-flex align-items-center justify-content-right mt-10px">
												<button class="btn btn-primary h-10">인증번호 전송</button>
											</div>
											<div class="join_email">
												<input class="form-control wd-30 h-10" id="inputEmail"
													type="text"></input>
												<button class="btn btn-primary h-10 ml-10">인증번호 확인</button>
											</div>
										</div>
										<!-- Form Group (join box)-->
										<div
											class="d-flex align-items-center justify-content-right mt-4 mb-0">
											<button type="submit" class="btn btn-primary btn-default">확인</button>

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