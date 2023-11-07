<!DOCTYPE html>
<%@page import="com.smhrd.bigdata.model.IoT_Sensor"%>
<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page import="com.smhrd.bigdata.model.TestMember"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<body class="nav-fixed">
    
		<nav
		class="topnav00 navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white"
		id="sidenavAccordion">
		<a class="navbar-brand m-xl-4 pe-2 ps-2" href="/bigdata/">
			<img class="img-fluid" src="assets/img/ioflogo.png" alt="" />
		</a>
		<ul class="navbar-nav align-items-center ms-auto">
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link"
				style="margin-top: 1.8rem" href="/bigdata/user_mng" role="button">
					<div class="fw-900 text-lg">고객관리</div>
			</a></li>
			<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
				class="nav-link"
				style="margin-top: 1.8rem" href="/bigdata/update_send" role="button">
					<div class="fw-900 text-lg">업데이트</div>
			</a></li>
			
			<!-- User Dropdown-->
			<li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
			
				<a class="btn btn-icon btn-transparent-dark dropdown-toggle btn-lg "
				style="margin-top: 1.3rem;background-color:#BAD669" id="navbarDropdownUserImage"
				href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"><div class="fw-700 text-lg">A</div></a>
				
				<div
					class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
					aria-labelledby="navbarDropdownUserImage">
					<h6 class="dropdown-header d-flex align-items-center">
						<div class="dropdown-user-details">
							<div class="dropdown-user-details-name">${user.name}</div>
							<div class="dropdown-user-details-email">${user.email }</div>
						</div>
					</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="/bigdata/logout_action">
						<div class="dropdown-item-icon">
							<i class="mb-1" data-feather="log-out"></i>
						</div> 로그아웃
					</a>
				</div>
			</li>
		</ul>
	</nav>

</body>