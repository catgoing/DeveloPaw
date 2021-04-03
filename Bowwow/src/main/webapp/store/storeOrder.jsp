<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("utf-8");
%>
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
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/storeStyle.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">
<style>

.cart-product-title{
	width: 33%;
}
.cart-product-value{
	width: 33%;
}

.font-red{
color: red !important;
}

</style>
<script type="text/javascript">

function chkSum(){
	if ($("input:checkbox[name='chk_1']").is(":checked") == true && $("input:checkbox[name='chk_2']").is(":checked") == true){
		return true; 
	} 
	else{
		 alert("동의 버튼을 눌러주셔야 결제가 진행됩니다.");
		 checkout.chk_1.focus();
		 checkout.chk_2.focus();
		 return false;
		} 
}




function order_check(){
	if(document.getElementById('address_first').value == ""){
		alert("주소를 입력해 주세요.");
		checkout.address_first.focus();
		return false;
	} else if(document.getElementById('address_second').value == ""){
		alert("주소를 입력해주세요");
		checkout.address_second.focus();
		return false;
	} else if(document.getElementById('zip').value == ""){
		alert("우편번호를 입력해주세요");
		checkout.zip.focus();
		return false;
	} else if(document.getElementById('phone').value == ""){
		alert("핸드폰 번호를 입력해주세요");
		checkout.phone.focus();
		return false;
	}
	
	else return true;
	
	}
</script>
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

							<!-- Checkout Section Begin -->
							<section class="checkout spad">
								<div class="container" style="background-color: white;">
									<form action="/store/insertOrder" onsubmit="return chkSum();" method="POST" name="checkout" class="checkout__form"
										accept-charset="UTF-8">
										<div class="row">
											<div class="col-lg-8">
												<div class="checkout__order"
													style="background-color: white;">
													<h5>주문 상세 정보</h5>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-6">
															<div class="checkout__form__input">
																<p>
																	상품번호 <span>* (*)항목은 필수 입력 항목입니다.</span>
																</p>
																<input type="text" id="p_id" name="p_id"
																	value="">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-6">
															<div class="checkout__form__input">
																<p>
																	회원번호 <span>*</span>
																</p>
																<input type="text" id="member_serial"
																	name="member_serial" value=999>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="checkout__form__input">
																<p>
																	주소 <span>*</span>
																</p>
																<input type="text" name="address_first" placeholder="Street Address">
																<input type="text" name="address_second"
																	placeholder="동,호수 등 상세 주소를 입력하세요">
															</div>
															<div class="checkout__form__input">
																<p>
																	우편번호 <span>*</span>
																</p>
																<input type="text" id="zip" name="zip" >
															</div>
															<div class="checkout__form__input">
																<p>
																	수량 <span >*</span>
																</p>
																<input type="text" id="pCount" name="amount"
																	value="">
															</div>
															<div class="checkout__form__input">
																<p>
																	가격 <span>*</span>
																</p>
																<input type="text" id="pSum" name="price"
																	value="">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-6">
															<div class="checkout__form__input">
																<p>
																	핸드폰 <span>*</span>
																</p>
																<input type="text" name="phone">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-6">
															<div class="checkout__form__input">
																<p>이메일</p>
																<input type="text">
															</div>
														</div>
														<div class="col-lg-12">
															<div class="checkout__form__checkbox"></div>
															<div class="checkout__form__input"></div>
															<div class="checkout__form__checkbox"></div>
															<div class="checkout__form__input">
																<p>배송 메모</p>
																<input type="text" id="memo" name="memo"
																	placeholder="ex) 부재시 경비실에 맡겨주세요.">
															</div>
															<div class="checkout__form__input">
																<input type="hidden" id="order_status"
																	name="order_status" value="주문 완료">
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="checkout__order"
													style="background-color: white;">
													<h5>총 주문 내역</h5>
													<div class="checkout__order__product">
														<ul>
															<li>
																<div class="top__text cart-product-title">상품명</div>
																<div class="top__text cart-product-title">수량</div>
																<div class="top__text cart-product-title">합계금액</div>
																
															</li>
															<li>
																<div class="top__text cart-product-value font-red" id="pName">t</div>
																<div class="top__text cart-product-value font-red" ></div>
																<div class="top__text cart-product-value" id="pSum2"></div>
																
															</li>
															<!-- <li>01. Chain buck bag <span id="pSum"></span></li> -->
														</ul>
													</div>
													<div class="checkout__order__total">
														<ul>
															<li>배송비 <span>무료</span></li>
															<li>총 결제금액 <span>$ 750.0</span></li>
														</ul>
													</div>
													<div class="checkout__order__widget">
														<label for="o-acc"> 개인정보 제3자 공유 동의(필수)<input type="checkbox" name="chk_1" id="o-acc"> 
														<span class="checkmark"></span>
														</label>
														<p>Bowwow는 귀하께서 Bowwow 입점업체 판매자로부터 상품 및 서비스를 구매하고자 할 경우, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 24조의 2(개인정보 공유동의 등)에 따라 귀하의 동의를 받아 귀하의 개인정보를 판매자에게 공유합니다. 
														"개인정보 제3자 공유 동의"를 체크하시면 개인정보 공유에 대해 동의한 것으로 간주합니다. 본 개인정보 공유에 동의하지 않으시는 경우, 동의를 거부할 수 있으며, 이 경우 거래가 제한됩니다.</p>
														<label for="check-payment"> 위 상품 정보 및 거래 조건을 확인하였으며, 구매 진행에 동의합니다.(필수) 
														<input type="checkbox" name="chk_2" id="check-payment"> 
														<span class="checkmark"></span>
														</label> 
													</div>
													<button type="submit" class="site-btn"
														style="font-size: 1.5em;">결제하기</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</section>
							<!-- Checkout Section End -->
							<br> <br>
						</div>
						<!-- Product Details Section End -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="/common/storeFoot.jsp" %>

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

	<script type="text/javascript" src="/resources/js/script2.js "></script>
	<script type="text/javascript">
		
		function getParameterByName(name) {
		    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		        results = regex.exec(location.search);
		    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
		}
		
		$(document).ready(function(){
			// url의 parameter값을 변수로 선언
			var pId = getParameterByName('p_id');
			var pCount = getParameterByName('p_count');
			var pSum = getParameterByName('sum');
			
			// id가 p_id인 input태그 안에 value를 pId로 set하는 태그
			$('#p_id').val(pId);
			$('#pSum').val(pSum);
			$('#pCount').val(pCount);
			
			// id가 pSum인 value가 없는 태그 안에 값을 set하는 태그
			$('#pSum2').append(pSum);
			
			
			console.log(pId);
			console.log(pCount);
			console.log(pSum);
			
			
		});
	</script>
</body>


</html>
