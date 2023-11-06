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

</head>
<body class="nav-fixed">
	<jsp:include page="admin_header.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_content"
			style="margin-left: -15rem; margin-top: -3.5rem">
			<main>

				<form action="sendUpdate" method = "post">
					<div class="container-fluid px-4">
						<div>
							<h1 class="collapse_text">업데이트</h1>
						</div>
						<div class="row gx-4">
							<div class="col-lg-8 qna_box">

								<div class="card card-header-actions mb-4">
									<div class="card-header">
										<div class="qna_title">이메일 제목</div>

										<input class="edit_title form-control" type="text"
											placeholder="제목을 입력하세요" name = "Title">
									</div>
									<div class="card-body">
										<textarea class="lh-base form-control qna_ta"
											placeholder="내용을 입력하세요" rows="20" name= "Content"></textarea>
										<div class="qna_btn_div">
							<button class="btn btn-primary" type="submit">이메일 발송</button>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</form>
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