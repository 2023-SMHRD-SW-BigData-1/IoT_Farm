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
<title>Account Settings - Profile - SB Admin Pro</title>
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

	<!-- 네비게이션 삭제 style="margin-left: -15rem; margin-top:-3.5rem"-->
	<div id="layoutSidenav">
		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>


				<!-- faq 1번 -->
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div>
						<h1 class="collapse_text">자주 묻는 질문</h1>
					</div>


					<div class="card card-collapsable">
						<a id="faq01" class="card-header" href="#collapseCardExample1"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample"> 비밀번호를 잃어버렸는데 어떻게 하나요?
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-right"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample1">
							<div class="card-body">
								홈페이지 메인 우측상단에 보시면 로그인 버튼이 있습니다.<br>로그인 화면으로 이동후에 비밀번호 입력란
								하단에 <br>'비밀번호를 잃어버리셨나요?' 문구를 클릭하시면 자동으로 비밀번호 찾기 페이지로 이동됩니다.
							</div>
						</div>
					</div>
					<!-- faq 2번 -->
					<div class="card card-collapsable">
						<a id="faq02" class="card-header" href="#collapseCardExample2"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">가이드라인을 봐도 잘 모르겠는데 어떻게
							적용하나요?
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-right"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample2">
							<div class="card-body">가이드라인페이지에서 좌측에 있는 '클라우드 서비스 이용하기' 를
								클릭했을 때 나오는 문구 순서대로 진행하시면됩니다.</div>
						</div>
					</div>
					<!-- faq 3번 -->
					<div class="card card-collapsable">
						<a id="faq05" class="card-header" href="#collapseCardExample3"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">센서를 등록하는데 갯수 초과 메세지가 왔어요.
							더 많은 센서를 등록 할 수는 없는건가요?
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-right"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample3">
							<div class="card-body">
								회원님의 결제 정보에 따라 등급이 바뀌며, 센서 등록 허용 갯수가 변경됩니다.<br>고객센터 옆
								프로필이미지를 클릭하시면 마이페이지로 이동이 되고<br> 마이페이지 내에 청구를 클릭하시면 결제를 진행
								하실 수 있습니다.
							</div>
						</div>
					</div>
					<!-- faq 4번 -->
					<div class="card card-collapsable">
						<a id="faq04" class="card-header" href="#collapseCardExample4"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">이메일 인증이 되지 않아요
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-right"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample4">
							<div class="card-body">
								회원 가입 시에 올바른 이메일주소를 입력하지 않으면 회원가입이 되지 않습니다.<br>그러나 가입 후에
								이메일이 변경되면서 잘못된 이메일이 회원 정보에 기입 되어 있을 수 있습니다.<br> 마이페이지에서
								회원님의 이메일을 확인해주세요.
							</div>
						</div>
					</div>
					<!-- faq 5번 -->
					<div class="card card-collapsable">
						<a id="faq03" class="card-header" href="#collapseCardExample5"
							data-bs-toggle="collapse" role="button" aria-expanded="false"
							aria-controls="collapseCardExample">유료결제 해지를 하고싶어요
							<div class="card-collapsable-arrow">
								<i class="fas fa-chevron-right"></i>
							</div>
						</a>
						<div class="collapse" id="collapseCardExample5">
							<div class="card-body">
								유료서비스 이용을 10일 이하로 한 경우 환불이 가능합니다.<br>'마이페이지-청구'에서 환불할
								거래고유번호를 포함해서 문의사항에 문의해주세요.
							</div>
						</div>
					</div>
				</div>
		</div>
		</main>
	</div>
	</div>
	<script>
		const collapseButton1 = document.getElementById('faq01');
		const collapseButton2 = document.getElementById('faq02');
		const collapseButton3 = document.getElementById('faq03');
		const collapseButton4 = document.getElementById('faq04');
		const collapseButton5 = document.getElementById('faq05');
		const collapseButton6 = document.getElementById('faq06');
		const arrowIcon1 = collapseButton1
				.querySelector('.card-collapsable-arrow');
		const arrowIcon2 = collapseButton2
				.querySelector('.card-collapsable-arrow');
		const arrowIcon3 = collapseButton3
				.querySelector('.card-collapsable-arrow');
		const arrowIcon4 = collapseButton4
				.querySelector('.card-collapsable-arrow');
		const arrowIcon5 = collapseButton5
				.querySelector('.card-collapsable-arrow');
		const arrowIcon6 = collapseButton6
				.querySelector('.card-collapsable-arrow');
		collapseButton1.addEventListener('click', function() {
			arrowIcon1.classList.toggle('rotated');
		});
		collapseButton2.addEventListener('click', function() {
			arrowIcon2.classList.toggle('rotated');
		});
		collapseButton3.addEventListener('click', function() {
			arrowIcon3.classList.toggle('rotated');
		});
		collapseButton4.addEventListener('click', function() {
			arrowIcon4.classList.toggle('rotated');
		});
		collapseButton5.addEventListener('click', function() {
			arrowIcon5.classList.toggle('rotated');
		});
		collapseButton6.addEventListener('click', function() {
			arrowIcon6.classList.toggle('rotated');
		});
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>