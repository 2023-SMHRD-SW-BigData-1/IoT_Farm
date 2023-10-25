<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Boxed Layout - SB Admin Pro</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="nav-fixed">
    
        <jsp:include page="header.jsp"></jsp:include>
	
        <div id="layoutSidenav">
        
        <!-- 내비게이션 -->
            <div id="layoutSidenav_nav">
            	<nav class="sidenav shadow-right sidenav-light">
            		<a href="/bigdata/" class="mx-4 mt-n4 mb-sm-5">
						<img class="img-fluid" src="assets/img/ioflogo.png" alt="" />
					</a>
					<div class="sidenav-menu">
                        <div class="nav accordion" id="accordionSidenav">
                            
                            
                            
                            
                            <!-- Sidenav Heading (Custom)-->
                            <div class="sidenav-menu-heading">아오팜 시작하기</div>
                            <a style="font-size:0.8rem" class="nav-link" href="javascript:void(0);" class="text-body">
                                <div class="nav-link-icon"><i data-feather="book"></i></div>
                                서비스 소개
                            </a>
                            
                            
                            
                                                        
                            <!-- Sidenav Heading (Custom)-->
                            <div class="sidenav-menu-heading">마이데이터</div>
                            <!-- Sidenav Accordion (Pages)-->
                            <a style="font-size:0.8rem" class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="nav-link-icon"><i data-feather="globe"></i></div>
                                클라우드 서비스 이용하기
                                <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            <div class="collapse" id="collapsePages" data-bs-parent="#accordionSidenav">
                                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPagesMenu">
                                	<a class="nav-link" href="pricing.html">IoT 세팅하기</a>
                                	<a class="nav-link" href="pricing.html">IoT 등록하기</a>
                                	<a class="nav-link" href="pricing.html">센서 등록하기</a>
                                    <!-- Nested Sidenav Accordion (Pages -> Account)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAccount" aria-expanded="false" aria-controls="pagesCollapseAccount">
                                        센서 데이터 송신하기
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAccount" data-bs-parent="#accordionSidenavPagesMenu">
                                        <nav class="sidenav-menu-nested nav">
                                            <a class="nav-link" href="account-profile.html">온도</a>
                                            <a class="nav-link" href="account-billing.html">습도</a>
                                            <a class="nav-link" href="account-security.html">조도</a>
                                            <a class="nav-link" href="account-notifications.html">토양수분</a>
                                            <a class="nav-link" href="account-notifications.html">강우</a>
                                        </nav>
                                    </div>
                                    
                                    
                                    
                                    <!-- Nested Sidenav Accordion (Pages -> Authentication)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        데이터베이스 이용하기
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" data-bs-parent="#accordionSidenavPagesMenu">
                                        <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPagesAuth">
                                            <a class="nav-link" href="account-profile.html">11111111</a>
                                            <a class="nav-link" href="account-billing.html">2222222</a>
                                            <a class="nav-link" href="account-security.html">33333333</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <!-- Sidenav Accordion (Applications)-->
                            <a style="font-size:0.8rem" class="nav-link" href="javascript:void(0);">
                                <div class="nav-link-icon"><i data-feather="layout"></i></div>
                                대시보드 구성하기
                            </a>
                            
                            
                            
                            
                        </div>
                    </div>
                </nav>
            </div>
            
        <!-- 본문 -->    
            <div id="layoutSidenav_content" style="margin-top: -3.5rem">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="layout"></i></div>
                                            Boxed Layout
                                        </h1>
                                        <div class="page-header-subtitle">On larger screens, this layout will keep the page content from expanding beyond a max width.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4">
                        <div class="card mt-n10">
                            <div class="card-header">Boxed Layout Example</div>
                            <div class="card-body">This is an example of a page with
                             the default boxed layout. We've expanded Bootstrap by adding a ne
                             w xxl breakpoint. As the screen width gets larger, the container 
                             element will set a max width to the content. The boxed layout uses th
                             e max width container element on the page header and in the main page content in this example.
                             <div style=" height:3000rem">네비게이션 확인</div>
                             </div>
                        </div>
                    </div>
                </main>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; Your Website 2021</div>
                            <div class="col-md-6 text-md-end small">
                                <a href="#!">Privacy Policy</a>
                                &middot;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
