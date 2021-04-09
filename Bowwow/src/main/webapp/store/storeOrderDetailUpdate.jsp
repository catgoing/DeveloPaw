<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<title>개발바닥</title>
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords"
	content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="Codedthemes" />
<!--Jua 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<!-- Dohyeon 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- Favicon icon -->
<link rel="icon" href="../resources/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet"
	href="../	resources/pages/waves/css/waves.min.css" type="text/css"
	media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="../resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="../resources/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="../resources/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/storeStyle.css">
<link rel="stylesheet" type="text/css" href="../resources/css/test.css">
<style>
.featured__item__text {
	width: 150px;
}

img {
	display: block;
	margin: auto;
}
</style>
</head>

<body>
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="loader-track">
			<div class="preloader-wrapper">
				<div class="spinner-layer spinner-blue">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-yellow">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-green">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<nav class="navbar header-navbar pcoded-header">
				<div class="navbar-wrapper" style="color: red;">
					<div class="navbar-logo">
						<a class="mobile-menu waves-effect waves-light"
							id="mobile-collapse" href="#!"> <i class="ti-menu"></i>
						</a>
						<div class="mobile-search waves-effect waves-light">
							<div class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-prepend search-close"><i
											class="ti-close input-group-text"></i></span> <input type="text"
											class="form-control" placeholder="Enter Keyword"> <span
											class="input-group-append search-btn"><i
											class="ti-search input-group-text"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="storeMain.html"
							style="text-align: center; font-weight: bold; font-size: 30px; margin-top: 7px;">BOW-WOW</a>

						<a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
						</a>
					</div>
					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li><a href="index.html"> 커뮤니티 </a></li>
							<li><a href="storeMain.html"> 스토어 </a></li>
						</ul>
						<ul class="nav-right">
							<li class="form-group form-primary"><input type="text"
								name="footer-email" style="margin-top: 12px; width: 250px;"
								class="form-control" placeholder="검색창"> <span
								class="form-bar"></span></li>
							<li class="header-notification"><a href="#!"
								class="waves-effect waves-light"> <i class="ti-bell"></i> <span
									class="badge bg-c-red"></span>
							</a>
								<ul class="show-notification">
									<li>
										<h6>Notifications</h6> <label class="label label-danger">New</label>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-2.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">John Doe</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Joseph William</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Sara Soudein</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="header-notification"><a href="#!"
								class="waves-effect waves-light"> <i
									class="fa fa-shopping-cart" aria-hidden="true"></i> <span
									class="badge bg-c-red"></span>
							</a>
								<ul class="show-notification">
									<li>
										<h6>Notifications</h6> <label class="label label-danger">New</label>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-2.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">John Doe</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Joseph William</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Sara Soudein</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <img
									src="../resources/images/avatar-4.jpg" class="img-radius"
									alt="User-Profile-Image"> <i class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">
									<li class="waves-effect waves-light"><a href="#!">마이홈
									</a></li>
									<li class="waves-effect waves-light"><a
										href="user-profile.html">프로필 </a></li>
									<li class="waves-effect waves-light"><a
										href="email-inbox.html">반려동물 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-lock-screen.html">게시글</a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">포인트 내역 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">나의 쇼핑 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">로그아웃 </a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
							<div class="">

								<div class="main-menu-content">
									<ul>
										<li class="more-details"><a href="user-profile.html"><i
												class="ti-user"></i>View Profile</a> <a href="#!"><i
												class="ti-settings"></i>Settings</a> <a
											href="auth-normal-sign-in.html"><i
												class="ti-layout-sidebar-left"></i>Logout</a></li>
									</ul>
								</div>
							</div>
							<div class="p-15 p-b-0">
								<form class="form-material"></form>
							</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu">
									<!-- <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Basic</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a> -->
									<ul class="pcoded-submenu">
										<li class=" "><a href="breadcrumb.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Breadcrumbs</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="button.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Button</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="accordion.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Accordion</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tabs.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Tabs</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="color.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Color</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="label-badge.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Label Badge</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tooltip.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Tooltip And Popover</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="typography.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Typography</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="notification.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Notifications</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
									</ul>
								</li>
							</ul>

							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">스토어
											전체보기</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>

							<!-- <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="bs-basic-table.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                                        <span class="pcoded-mtext">Table</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>

                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="chart-morris.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-bar-chart-alt"></i><b>C</b></span>
                                        <span class="pcoded-mtext">Charts</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="map-google.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-map-alt"></i><b>M</b></span>
                                        <span class="pcoded-mtext">Maps</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul> -->

							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-id-badge"></i><b>A</b></span> <span class="pcoded-mtext">댕댕이</span>
										<span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="dogFood.jsp"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">사료</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">간식</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">케어</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-sign-up.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">리빙</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="dogClothes.jsp "
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">의류</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="dogToy.jsp"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">장난감</span> <span class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-id-badge"></i><b>A</b></span> <span class="pcoded-mtext">냥냥이</span>
										<span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="storeMain.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">사료</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="storeMain.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">간식</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">케어</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-sign-up.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">리빙</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="sample-page.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">의류</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">장난감</span> <span class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
						</div>
					</nav>
					<div class="pcoded-content">
						<!-- Page-header start -->

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->

							<!-- Breadcrumb Begin -->
							<div class="breadcrumb-option">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="breadcrumb__links">
												<a href="./index.html"><i class="fa fa-home"></i> 스토어 메인</a>
												<span>주문 화면</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
							<!-- Breadcrumb End -->
							<!--================Order Details Area =================-->
							<section class="order_details section_gap">
								<div class="container" style="background-color: white;">
									<br>
									<h3 class="title_confirmation">주문 상세 내역</h3>
									<div class="row order_d_inner">
										<div class="col-lg-4">
											<div class="details_item">
												<h4>Order Info</h4>
												<ul class="list">
													<li><a href="#"><span>Order number</span> :
															${o.order_id}</a></li>
													<li><a href="#"><span>Member Serial</span> :
															${o.member_serial}</a></li>
													<li><a href="#"><span>Total</span> : USD 2210</a></li>
													<li><a href="#"><span>Payment method</span> :
															Check payments</a></li>
												</ul>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="details_item">
												<h4>주문인 주소</h4>
												<ul class="list">
													<li><a href="#"><span>Street</span> : 56/8</a></li>
													<li><a href="#"><span>City</span> : Los Angeles</a></li>
													<li><a href="#"><span>Country</span> : United
															States</a></li>
												</ul>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="details_item">
												<h4>Shipping Address</h4>
												<ul class="list">
													<li><a href="#"><span>Street</span> : 56/8</a></li>
													<li><a href="#"><span>City</span> : Los Angeles</a></li>
													<li><a href="#"><span>Country</span> : United
															States</a></li>
													<li><a href="#"><span>Postcode </span> : 36952</a></li>
												</ul>
											</div>
										</div>
									</div>
									<br>
									<div class="order_details_table">
										<h2>주문한 상품 목록</h2>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">상품명</th>
														<th scope="col">상품 수량</th>
														<th scope="col">결제 금액</th>
														<th scope="col">삭제</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<p>Pixelstore fresh Blackberry</p>
														</td>
														<td>
															<h5>x 02</h5>
														</td>
														<td>
															<p>$720.00</p>
														</td>
													</tr>
													<tr>
														<td>
															<p>Pixelstore fresh Blackberry</p>
														</td>
														<td>
															<h5>x 02</h5>
														</td>
														<td>
															<p>$720.00</p>
														</td>
													</tr>
													<tr>
														<td>
															<p>Pixelstore fresh Blackberry</p>
														</td>
														<td>
															<h5>x 02</h5>
														</td>
														<td>
															<p>$720.00</p>
														</td>
													</tr>
													<tr>
														<td>
															<h4>Subtotal</h4>
														</td>
														<td>
															<h5></h5>
														</td>
														<td>
															<p>$2160.00</p>
														</td>
													</tr>
													<tr>
														<td>
															<h4>배송비</h4>
														</td>
														<td>
															<h5></h5>
														</td>
														<td>
															<p>무료</p>
														</td>
													</tr>
													<tr>
														<td>
															<h4>Total</h4>
														</td>
														<td>
															<h5></h5>
														</td>
														<td>
															<p>$2210.00</p>
														</td>
													</tr>
												</tbody>
											</table>
											<button onclick="location.href='updateOrder?order_id=${oList.order_id}'"
												class="site-btn" style="font-size: 1.5em; float: right;">주문내역 수정</button>
											<button onclick="deleteOrder(${oList.order_id})'" class="site-btn" style="font-size: 1.5em; float: right;">주문내역 삭제</button>	
										</div>
									</div>
								</div>
							</section>
							<br>
							<br>
							<!--================End Order Details Area =================-->


							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="scroll-top" id="js-button"
			style="margin-bottom: 190px; margin-right: 30px; font: 'Jua'">
			<i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
		</button>
		<script type="text/javascript">
			scrollTop('js-button', 500);
			function scrollTop(elem, duration) {
				let target = document.getElementById(elem);

				target.addEventListener('click', function() {
					let currentY = window.pageYOffset;
					let step = duration / currentY > 1 ? 10 : 100;
					let timeStep = duration / currentY * step;
					let intervalID = setInterval(scrollUp, timeStep);

					function scrollUp() {
						currentY = window.pageYOffset;
						if (currentY === 0) {
							clearInterval(intervalID);
						} else {
							scrollBy(0, -step);
						}
					}
				});
			}
			
			function updateOrder(order_id) {
            	console.log('주문번호 : ' + order_id);
            	var getAmountValue = $('#amount').val();
            	var getAddressFirstValue = $('#address_first').val();
            	var getAddressSecondValue = $('#address_second').val();
            	var getZipValue = $('#zip').val();

            	var data = {'p_id' : p_id, 'amount' : getAmountValue, 'address_first' : getAddressFirstValue, 
            				'address_second' : getAddressSecondValue, 'zip' : getZipValue};

            	$.ajax({
            		url : '/store/updateOrder',
            		type: 'POST',
                    data: data,
                    success: function(data){
						console.log(data)
						 if(data) {
							/* $('#tabs-3').append('<table>'+
													'<tr><th>리뷰번호</th><td>${rList.review_id}</td></tr>'+
												'</table>'); */
						}
                	}
            	});
            }
			
			function deleteOrder(order_id) {
            	console.log('주문번호 : ' + order_id);
            	var data = {"o_id": order_id};
            	$.ajax({
                    url: '/store/deleteOrder',
                    type: 'POST',
                    data: data,
                    success: function(data){
						console.log('?? ' + data)
						if(data == "success") {
							$('#oList_' + order_id).remove();
						}
                	}
            	});
            }			
			
		</script>
		<!-- footer 푸터 시작부분-->
		<div style="display: block;">
			<footer class="footer navbar-wrapper">
				<div class="footer-wrapper navbar-wrapper">
					<div class="footer-box" style="height: 100px; text-align: center;">
						푸터</div>
				</div>
			</footer>
			<!-- footer 푸터 끝부분-->
		</div>



		<!-- Warning Section Starts -->
		<!-- Older IE warning message -->
		<!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="../resources/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="../resources/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="../resources/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="../resources/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="../resources/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
		<!-- Warning Section Ends -->

		<!-- Required Jquery -->
		<script type="text/javascript"
			src="../resources/js/jquery/jquery.min.js "></script>
		<script type="text/javascript"
			src="../resources/js/jquery-ui/jquery-ui.min.js "></script>
		<script type="text/javascript"
			src="../resources/js/popper.js/popper.min.js"></script>
		<script type="text/javascript"
			src="../resources/js/bootstrap/js/bootstrap.min.js "></script>
		<!-- waves js -->
		<script src="../resources/pages/waves/js/waves.min.js"></script>
		<!-- jquery slimscroll js -->
		<script type="text/javascript"
			src="../resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

		<!-- slimscroll js -->
		<script src="../resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

		<!-- menu js -->
		<script src="../resources/js/pcoded.min.js"></script>
		<script src="../resources/js/vertical/vertical-layout.min.js "></script>

		<script type="text/javascript" src="../resources/js/script.js "></script>
</body>


</html>