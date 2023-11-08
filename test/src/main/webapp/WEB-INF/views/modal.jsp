<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- dashboard Modal 1 -->
<div class="modal" id="dashboardModal1" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">대시보드 생성</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="mb-3 modal-flex">
					<div class="wd-40">대시보드 이름:</div>
					<input class="form-control" id="inputDbName" name="dashboardName"
						type="text" />
				</div>
				<div class="mb-3 modal-flex">
					<div class="modal-iot">사용 차트 수:</div>
					<select class="dashboard-count chart-width" id="sensorSelect">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="button" data-bs-toggle="modal"
					data-bs-target="#dashboardModal2" onclick="nextModal()">다음</button>
			</div>
		</div>
	</div>
</div>

<!-- dashboard Modal 2 -->
<div class="modal" id="dashboardModal2" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">차트 생성</h5>
				<span class="modal-span">차트 타입은 가이드라인에서 자세히 확인할 수 있습니다.</span>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="mydata/chartadd" method="post">
				<div id="modal2-body"></div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="submit" aria-label="Close">확인</button>
				</div>
			</form>
		</div>
	</div>
</div>



<!-- iot Modal -->
<div class="modal" id="iotModal1" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">IoT 등록</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="mb-3 modal-flex">
					<div class="modal-iot">IoT 이름:</div>
					<input class="form-control" id="iotName" type="text" name="iotName" />
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="button" data-bs-toggle="modal"
					data-bs-target="#iotModal2" onclick="nextIotModal()">다음</button>
			</div>
		</div>
	</div>
</div>

<!-- iot Modal 2 -->
<div class="modal" id="iotModal2" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">IoT API
					key 생성</h5>
				<span class="modal-span">API key값을 꼭 메모해주세요! 잊어버린다면 문의하셔야
					합니다!</span>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div id="apikey"></div>
			<div class="modal-footer">
				<a href="mydata">확인</a>
			</div>
		</div>
	</div>
</div>
<c:forEach items="${iotList}" var="item">
	<!-- sensor Modal -->
	<div class="modal" id="exampleModalCenter${item.iot_num }"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">센서 등록</h5>
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form id="sensorForm" action="mydata/sensoradd/${item.iot_num}"
					method="get">
					<div class="modal-body">
						<div class="mb-3 modal-flex">
							<div class="wd-40">센서 이름:</div>
							<input class="form-control" id="inputsensorName" type="text"
								name="sensorName" />
						</div>
						<div class="mb-3 modal-flex">
							<div class="modal-iot">센서 종류:</div>
							<select class="dashboard-count" id="iot_sensor" name="sensorType">
								<option value="1">온도</option>
								<option value="2">습도</option>
								<option value="3">조도</option>
								<option value="4">토양수분</option>
								<option value="5">강우</option>
							</select>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="submit">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</c:forEach>
<!-- sensor Modal -->
<c:forEach items="${iotList}" var="item">
	<div class="modal" id="exampleModalCenter${item.iot_num }"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">센서 등록</h5>
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form id="sensorForm" action="mydata/sensoradd/${item.iot_num}"
					method="get">
					<div class="modal-body">
						<div class="mb-3 modal-flex">
							<div class="wd-40">센서 이름:</div>
							<input class="form-control" id="inputsensorName" type="text"
								name="sensorName" />
						</div>
						<div class="mb-3 modal-flex">
							<div class="modal-iot">센서 종류:</div>
							<select class="dashboard-count" id="iot_sensor" name="sensorType">
								<option value="1">온도</option>
								<option value="2">습도</option>
								<option value="3">조도</option>
								<option value="4">토양수분</option>
								<option value="5">강우</option>
							</select>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="submit">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</c:forEach>
<script>
function nextIotModal(){
	let iotName = $('#iotName').val();
	$.ajax({
		url : "mydata/iotadd",
		type : "post",
		data : {
			'iotName' : iotName
		},
		success:function(data){
			var apikey = document.getElementById("apikey");
			apikey.innerHTML = data;
		}
	});
};
</script>