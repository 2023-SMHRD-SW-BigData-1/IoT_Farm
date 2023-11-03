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
	function updatePassword() {
	    var newPassword = document.getElementById('inputPassword').value;
	    var email = sessionStorage.getItem('email'); // 세션에 저장된 이메일 가져오기

	    // 비밀번호 업데이트 요청
	    $.ajax({
	        url: '/bigdata/updatePassword',
	        type: 'POST',
	        data: { email: email, newPassword: newPassword },
	        success: function(result) {
	            if (result === 'success') {
	                alert('비밀번호가 성공적으로 업데이트되었습니다.');
	                window.location.href = '/bigdata/login';
	            } else {
	                alert('비밀번호 업데이트에 실패했습니다. 다시 시도해주세요.');
	            }
	        }
	    });
	}
	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
									<div class="text-center small text-muted mb-4">인증이 완료되었습니다. <br>새 비밀번호를 입력하세요.</div>
										<form>
											<!-- Form Group-->
											<div class="mb-3">
												<label class="small mb-1" for="inputPassword">새 비밀번호 입력</label> <input
													class="form-control" id="inputPassword" type="text"
													placeholder="비밀번호를 입력하세요" />
											</div>
											<!-- Form Group (비밀번호)-->
											<!-- Form Group (login box)-->
											<div
												class="d-flex align-items-center justify-content-right mt-4 mb-0">
													<button type="button" class="btn btn-primary qna_btn" onclick="updatePassword()">확인</button>
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