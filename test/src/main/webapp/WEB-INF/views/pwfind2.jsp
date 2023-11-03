<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String authCode = (String)session.getAttribute("authCode");
%>
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
        var authCode = '<%= authCode %>'; // JSP 코드를 사용하여 authCode 값을 JavaScript 변수에 할당합니다.
        
        function checkAuthCode() {
            var enteredCode = document.getElementById('inputId').value;
            console.log(enteredCode);

            if (enteredCode == authCode) {
                window.location.href = '/bigdata/pwfind3';
            } else {
                alert('인증번호가 일치하지 않습니다. 다시 시도해주세요.');
            }
        }
    </script>
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
										<h1 class="fw-light my-4">비밀번호 찾기</h1>
									</div>
									<div class="card-body">
									<div class="text-center small text-muted mb-4">회원가입시 등록하신 이메일로 인증번호를 발송하였습니다.<br> 아래 인증번호 입력란에 올바른 인증번호를 입력하세요.</div>
<form>
    <!-- Form Group-->
    <div class="mb-3">
        <label class="small mb-1" for="inputId">인증번호</label>
        <input class="form-control" id="inputId" type="text" placeholder="인증번호를 입력하세요" />
    </div>
    <!-- Form Group (비밀번호)-->
    <!-- Form Group (login box)-->
    <div class="d-flex align-items-center justify-content-right mt-4 mb-0">
        <button type="button" class="btn btn-primary qna_btn" onclick="checkAuthCode()">다음</button>
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
