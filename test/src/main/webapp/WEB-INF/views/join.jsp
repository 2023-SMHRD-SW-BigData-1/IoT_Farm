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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	function checkId() {
		let input = $('#inputId').val();
		console.log(input);

		$.ajax({
			url : "join/idcheck",
			type : "get",
			data : {
				'input' : input
			},
			success : function(result) {
				if (result == "success") {
					$('#result').text("사용할 수 있는 아이디").css('color', 'blue');
				} else {
					$('#result').text("사용할 수 없는 아이디").css('color', 'red');
				}
			},
			error : function() {
				alert('error!');
			}
		});
	}
</script>
<script>
	function sendEmail() {
		let email = $('#inputEmail').val(); // 이메일 주소값 얻어오기!
		console.log(email); // 이메일 오는지 확인

		$.ajax({
			url : 'join/emailSend', // 수정된 부분
			type : 'get',
			data : {
				'email' : email
			},
			success : function(data) {
				alert('인증번호가 전송되었습니다.');
				code = data;
			}
		}); // end ajax
	}
	function checkEmail() {
		let inputCode = $('#checkInput').val(); // 입력한 인증번호 가져오기
		console.log(inputCode)
		console.log(code)
		let $resultMsg = $('#mailCheckWarn'); // 결과를 표시할 요소

		if (inputCode == code) {
			$resultMsg.html('인증번호가 일치합니다');
			$resultMsg.css('color', 'green');
			$('#send').attr('disabled', true);

			$('#inputEmail').attr('readonly', true);
			$('#inputEmail').attr('onFocus',
					'this.initialSelect = this.selectedIndex');
			$('#inputEmail').attr('onChange',
					'this.selectedIndex = this.initialSelect');
		} else {
			$resultMsg.html('인증번호가 불일치 합니다');
			$resultMsg.css('color', 'red');
			$('#send').val('재전송');
		}
	}
</script>
<script>
	function validateId() {
		let input = $('#inputId').val();
		return input.trim() !== '';
	}

	function validatePassword() {
		let input = $('#inputPassword').val();
		return input.trim() !== '';
	}

	function validateNickname() {
		let input = $('#inputnickname').val();
		return input.trim() !== '';
	}

	function validateEmail() {
		let input = $('#inputEmail').val();
		return input.trim() !== '';
	}

	function validateCode() {
		let input = $('#checkInput').val();
		return input.trim() !== '' && input === code;
	}

	function validateForm() {
		if (validateId() && validatePassword() && validateNickname()
				&& validateEmail() && validateCode()) {
			return true;
		} else {
			alert('모든 항목을 올바르게 입력해주세요.');
			return false;
		}
	}
    function submitForm() {
        if (validateForm()) {
            $('form').submit();
        }
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
											<span id="result"></span> <input type="button" value="중복체크"
												class="btn btn-primary h-8" onclick="checkId()"
												style="margin-left: 10px; height: 36px;">
										</div>
										<!-- Form Group (비밀번호)-->
										<div class="mb-3">
											<label class="small mb-1" for="inputPassword">비밀번호</label> <input
												class="form-control" id="inputPassword" type="password"
												name="pw" />
										</div>
										<!-- From Grooup (닉네임) -->
										<div class="mb-3">
											<label class="small mb-1" for="inputnickname">닉네임</label> <input
												class="form-control" id="inputnickname" type="text"
												name="name" />
										</div>
										<!-- From Grooup (Email) -->
										<div class="mb-3">

											<label class="small mb-1" for="inputEmail">이메일</label> <input
												class="form-control" id="inputEmail" type="text"
												name="email" />
										</div>
										<div class="d-flex align-items-center justify-content-right">
											<input id="send" type="button" value="인증번호 전송"
												onclick="sendEmail()" class="btn btn-primary h-8"
												style="margin-left: 10px; height: 36px;">
										</div>
										<div class="d-flex align-items-center justify-content-right">
											<label class="small mb-1" for="inputNumber">인증번호 6자리를
												입력해주세요</label> <input class="form-control mailCheckInput"
												id="checkInput" type="text" name="code" />
										</div>
										<div>
											<input id="check" type="button" value="인증번호 확인"
												onclick="checkEmail()" class="btn btn-primary h-8"
												style="margin-left: 10px; height: 36px;">
										</div>

										<span id="mailCheckWarn"></span>
										<!-- Form Group (join box)-->
										<div
											class="d-flex align-items-center justify-content-right mt-4 mb-0">
											<button type="button" class="btn btn-primary btn-default"
												onclick="submitForm()">확인</button>
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
<<<<<<< HEAD
=======
	</div>
>>>>>>> branch 'main' of https://github.com/2023-SMHRD-SW-BigData-1/iot_farm.git
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>

</html>