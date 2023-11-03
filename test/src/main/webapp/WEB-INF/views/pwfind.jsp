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
function pwfEmail() {
    let email = document.getElementById('inputEmail').value;
    console.log(email);

    // 이메일 전송 요청
    fetch('/bigdata/pwfemailSend?email=' + encodeURIComponent(email))
        .then(response => response.text())
        .then(checkNum => {
            // 이메일 전송 성공 시 checkNum을 받아오고, 세션에 저장 후 리다이렉트 수행
            console.log(checkNum);

            // 세션에 인증번호 저장
            sessionStorage.setItem('authCode', checkNum);
            sessionStorage.setItem('email', email);

            // pwfind2 페이지로 이동
            window.location.href = '/bigdata/pwfind2';
        });
}
</script>

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
									<h1 class="fw-light my-4">비밀번호 찾기</h1>
								</div>
								<div class="card-body">
									<form id="pwfForm" action="/bigdata/pwfemailSend" method="get">
										<!-- Form Group-->
										<div class="mb-3">
											<label class="small mb-1" for="inputEmail">이메일</label> <input
												class="form-control" id="inputEmail" type="text"
												name="email" placeholder="회원가입시 등록한 이메일을 입력하세요" />
										</div>
										<!-- Form Group (비밀번호)-->
										<!-- Form Group (login box)-->
										<div class="d-flex align-items-center justify-content-right">
											<input id="pwsend" type="button" value="다음"
												class="btn btn-primary h-8"
												style="margin-left: 10px; height: 40px;"
												onclick="pwfEmail();">
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