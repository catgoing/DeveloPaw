<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <title>개발바닥</title>
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
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Favicon icon -->
    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="/resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/cartStyle.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/test.css">
	<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>
	
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
							<li><a href="storeMain"> 스토어 </a></li>
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
												src="/resources/images/avatar-2.jpg"
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
												src="/resources/images/avatar-4.jpg"
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
												src="/resources/images/avatar-3.jpg"
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
												src="/resources/images/avatar-2.jpg"
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
												src="/resources/images/avatar-4.jpg"
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
												src="/resources/images/avatar-3.jpg"
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
									src="/resources/images/avatar-4.jpg" class="img-radius"
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
										<li class="more-details"><a href="user-profile.html">
												<i class="ti-user"></i>View Profile
										</a> <a href="#!"> <i class="ti-settings"></i>Settings
										</a> <a href="auth-normal-sign-in.html"> <i
												class="ti-layout-sidebar-left"></i>Logout
										</a></li>
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
								<li class=""><a href="storeMain"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">스토어</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-id-badge"></i><b>A</b></span> <span class="pcoded-mtext">댕댕이</span>
										<span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="productList?p_type=dog"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">상품 전체보기</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=dog&p_category=food"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">사료</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=dog&p_category=snack"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">간식</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=dog&p_category=care"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">케어</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=dog&p_category=living"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">리빙</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=dog&p_category=clothes"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">의류</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=dog&p_category=toy"
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
										<li class=""><a href="productList?p_type=cat"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">상품 전체보기</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=cat&p_category=food"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">사료</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=cat&p_category=snack"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">간식</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=cat&p_category=care"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">케어</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=cat&p_category=living"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">리빙</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=cat&p_category=clothes"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">의류</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a
											href="productList?p_type=cat&p_category=toy"
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

							<!-- Shopping Cart Section Begin -->
							<section class="shopping-cart spad">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="cart-table" style="background-color: white;">
												<table>
													<thead>
														<tr>
															<th>번호
															<th></th>
															<th class="p-name" colspan="2">상품명</th>
															<th>판매가</th>
															<th>수량</th>
															<th>주문금액</th>
															<th>주문관리</th>
														</tr>
													</thead>
													<tbody>
														<c:if test="${empty cart}">
															<tr class="gift-division">
																<td colspan="6"></td>
															</tr>
															<tr>
																<td colspan="2">장바구니에 상품이 없습니다.</td>
															</tr>
														</c:if>
														<c:if test="${!empty cart}">
															<c:forEach var="cart" items="${cart }">
																<c:choose>
																	<c:when test="${cart.p_type == 'dog'}">
																		<c:set var="imgDir" value="dogImg" />
																	</c:when>
																	<c:when test="${cart.p_type == 'cat'}">
																		<c:set var="imgDir" value="catImg" />
																	</c:when>
																</c:choose>
																<tr style="border-bottom:1px solid #ddd;">
																	<td></td>
																	<td class="cart-pic first-row"><a
																		href="detail?p_id=${cart.p_id }"> <img
																			src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${cart.s_image }"
																			alt="">
																	</a></td>
																	<td class="cart-title first-row" colspan="2">
																		<p>
																			<a href="detail?p_id=${cart.p_id }">${cart.p_name }</a>
																		</p>
																	</td>
																	<td class="p-price first-row">${cart.price }원</td>
																	<td class="qua-col first-row">
																		<div class="quantity">
																			<div class="">
																				<input type="button" class="store_btn2" value=" - " onclick=>
																				<input type="text" value="${cart.amount }" size="3">
																				<input type="button" class="store_btn2" value=" + " onclick=>
																			</div>
																		</div>
																	</td>
																	<td class="total-price first-row">$60.00</td>
																	<td class="close-td first-row"><i class="ti-close"></i></td>
																</tr>
																<br>
															</c:forEach>
														</c:if>
													</tbody>
												</table>
											</div>
											<div class="row">
												<div class="col-lg-4">
													<div class="cart-buttons">
														<a href="#" class="primary-btn continue-shop">계속 쇼핑하기</a>
														<a href="#" class="primary-btn up-cart">선택 삭제</a>
													</div>
													<div class="discount-coupon">
														<h6>적립금 사용</h6>
														<form action="#" class="coupon-form">
															<input type="text" placeholder="사용 가능 포인트 : ${p.p}원">
															<button type="submit" class="site-btn coupon-btn">사용</button>
														</form>
													</div>
												</div>
												<div class="col-lg-4 offset-lg-4">
													<div class="proceed-checkout"
														style="background-color: white;">
														<ul>
															<li class="subtotal">상품 금액 <span>$240.00</span></li>
															<li class="subtotal">할인 금액 <span>$240.00</span></li>
															<li class="cart-total">최종 결제 금액 <span>$240.00</span></li>
														</ul>
														<a href="#" class="proceed-btn">주문하기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<!-- Shopping Cart Section End -->

							<!-- Product Details Section End -->
							<div id="styleSelector"></div>
						</div>
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

	<!-- Warning Section Ends -->

    <!-- Required Jquery -->
    <script type="text/javascript" src="/resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="/resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="/resources/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="/resources/js/pcoded.min.js"></script>
    <script src="/resources/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="/resources/js/script.js "></script>
</body>


</html>
