<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>
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
<link rel="icon" href="/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="/resources/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">

<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>

<style>
.featured__item__text {
	width: 150px;
}

.detailProduct {
	display: block;
	margin: auto;
}
</style>

<script type="text/javascript">

		var sell_price;
		var amount;
		
		$(function init () {
			sell_price = document.getElementById('sell_price').value;
			document.getElementById('sum').value = sell_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			sell_price = document.form.sell_price.value;
			amount = document.form.amount.value;
			document.form.sum.value = sell_price;
		});
		
		function add () {
			hm = document.form.amount;
			sum = document.form.sum;
			hm.value ++ ;
			
			var temp = parseInt(hm.value) * sell_price
		
			document.getElementById('sum').value = temp;
			document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		
		function del () {
			hm = document.form.amount;
			sum = document.form.sum;
				if (hm.value > 1) {
					hm.value -- ;
					var temp = parseInt(hm.value) * sell_price
					
					document.getElementById('sum').value = temp;
					document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
				
		}
		
		function changeValue(){
			hm = document.form.amount;
			sum = document.form.sum;
			
			var temp = parseInt(hm.value) * sell_price
		
			document.getElementById('sum').value = temp;
			document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
			
		function cartList(frm) {
			var param = $("form[name=form]").serialize();
			
            $.ajax({
               url : '/store/addCart',
               type : 'post',
               data : param,
               dataType : 'json',
               success : function(data){
            	   
            	   if (data.result == "code") {
            		  var chk = confirm(data.msg);
            		  
            		  if (chk) {
            			  location.href="/store/cartList";
            		  } else {
            			  return;
            		  }
            	   	
            	   } else if (data.result == "error") {
            		  var chk = confirm(data.msg);
            		  
            		  if (chk) {
            			  location.href="/store/cartList";
            		  } else {
            			  return;
            		  }
            	   }
               }
            });
         
		}
		
		
</script>

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
												src="resources/images/avatar-4.jpg"
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
												src="resources/images/avatar-3.jpg"
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
									src="resources/images/avatar-4.jpg" class="img-radius"
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
								<li class=""><a href="storeMain"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">스토어</span>
										<span class="pcoded-mcaret"></span>
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
							<!-- Breadcrumb Begin -->
							<div class="breadcrumb-option">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="breadcrumb__links">
												<a href="storeMain"><i class="fa fa-home"></i> 스토어 메인 </a> <a
													href="#"> 카테고리 </a> <span></span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Breadcrumb End -->

							<!-- Product Details Section Begin -->
							<section class="product-details spad">
								<div class="container" style="border: 2px solid white;">
									<br>
									<c:choose>
										<c:when test="${p.p_type == 'dog'}">
											<c:set var="imgDir" value="dogImg" />
										</c:when>
										<c:when test="${p.p_type == 'cat'}">
											<c:set var="imgDir" value="catImg" />
										</c:when>
									</c:choose>
									<div class="row">
										<div class="col-lg-6">
											<div class="product__details__pic">
												<div class="product__details__slider__content">
													<div class="details_pic">
														<img
															src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${p.s_image }"
															alt="">
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="details_text">
												<form name="form" onsubmit="return false;" method="POST">
													<h4 style="color: #000">${p.p_name }</h4>
													<input type="hidden" name="p_id" value="${p.p_id }">
													<input type="hidden" name="stock" value="${p.stock }">
													<div class="product__details__button">
														<div class="product__details__widget">
															<ul>
																<li>
																	<h4>
																		판매금액:
																		<fmt:formatNumber value="${p.price }" pattern="#,###" />
																		원
																	</h4>
																</li>
															</ul>
														</div>
														<div class="quantity">
															<div class="pro-qty">
																<h5>
																	상품 수량 : <input type="hidden" id="sell_price"
																		name="price" value="${p.price }"> <input
																		type="button" class="store_btn2" value=" - "
																		onclick="del()"> <input type="text"
																		class="store_input" autocomplete="off" min="1"
																		name="amount" value="1" size="3"
																		onchange="changeValue();"> <input
																		type="button" class="store_btn2" value=" + "
																		onclick="add()">
																</h5>
															</div>
															<br>
														</div>

														<div class="product__details__widget">
															<ul>
																<li>
																	<h3>
																		총 상품금액: <input type="text" class="store_input2"
																			size="9" id="sum" readonly>원
																	</h3>
																</li>
															</ul>
														</div>
														<ul>
															<li><a href="#"><span class="icon_heart_alt"></span></a></li>
															<li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
														</ul>
													</div>
													<div class="btn_area">
														<button class="store_btn" onclick="cartList(this.form)">장바구니</button>
														<button class="store_btn" onclick="storeOrder()">바로구매</button>
													</div>
													<ul>
														<li><a href="#"><span class="icon_heart_alt"></span></a></li>
														<li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
													</ul>
												</form>
											</div>
										</div>
									</div>
									<div class="col-lg-12">

												<div class="col-lg-12">
													<div class="product__details__tab" style="margin: 30px;">
														<ul class="nav nav-tabs" role="tablist">
															<li class="nav-item"><a class="nav-link active"
																data-toggle="tab" href="#tabs-1" role="tab">상세 정보</a></li>
															<li class="nav-item"><a class="nav-link"
																data-toggle="tab" href="#tabs-2" role="tab">리뷰 남기기</a></li>
														</ul>
														<div class="tab-content">
															<div class="tab-pane active" id="tabs-1" role="tabpanel"
																style="margin: 30px;">
																<img class="detailProduct"
																	src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${p.l_image }"
																	alt="">
															</div>
															<div class="tab-pane" id="tabs-2" role="tabpanel"
																style="margin: 30px;">
																<h2>상품에 대한 후기를 자유롭게 남겨주세요!</h2>
																<br>
																<div class="tab-pane fade show active" id="review"
																	role="tabpanel" aria-labelledby="review-tab">
																	<div class="row">
																		<div class="col-lg-6">
																			<div class="review_list">
																				<c:forEach var="rList" items="${reviewList}">
																					<div id="rList_${rList.review_id}"
																						class="review_box"
																						style="border: 1px solid lightgray; margin-bottom: 10px; padding: 10px;">
																						<h4>작성된 리뷰</h4>
																						<form class="row contact_form" id="contactForm"
																							onsubmit="return false;">
																							<div class="col-md-12">
																								<div class="form-group">
																									<input type="text" class="form-control"
																										value="${rList.review_title }" readonly />
																								</div>
																							</div>
																							<div class="col-md-6">
																								<div class="form-group">
																									<input type="text" class="form-control"
																										value=999 readonly />
																								</div>
																							</div>
																							<div class="col-md-6">
																								<div class="form-group">
																									<input type="text" class="form-control"
																										value="${rList.review_regdate }" readonly />
																								</div>
																							</div>
																							<div class="col-md-12">
																								<div class="form-group">
																									<textarea class="form-control"
																										style="resize: none;" rows="2" readonly>${rList.review_content }</textarea>
																								</div>
																								<button class="store_btn"
																									onclick="deleteReview(${rList.review_id})"
																									style="float: right;">삭제</button>
																							</div>
																						</form>
																					</div>
																				</c:forEach>
																			</div>
																		</div>
																		<div class="col-lg-6">
																			<div class="review_box">
																				<h4>리뷰 작성하기</h4>
																				<form class="row contact_form" id="contactForm">
																					<div class="col-md-6">
																						<div class="form-group">
																							<span>상품 번호</span> <input type="text"
																								class="form-control" id="p_id" name="p_id"
																								value="${p.p_id}" />
																						</div>
																					</div>
																					<div class="col-md-6">
																						<div class="form-group">
																							<span>작성자</span> <input type="text"
																								class="form-control" id="member_serial"
																								name="member_serial" value=999 />
																						</div>
																					</div>
																					<div class="col-md-12">
																						<div class="form-group">
																							<span>후기 제목</span> <input type="text"
																								class="form-control" id="review_title"
																								name="review_title" placeholder="후기 제목을 입력하세요" />
																						</div>
																					</div>
																					<div class="col-md-12">
																						<div class="form-group">
																							<span>후기 내용</span>
																							<textarea class="form-control"
																								style="resize: none;" name="review_content"
																								id="review_content" rows="2"
																								placeholder="후기 내용을 입력하세요"></textarea>
																						</div>
																					</div>
																					<div class="col-md-12 text-right">
																						<button onclick="insertReview(${p.p_id})"
																							class="store_btn">작성</button>
																					</div>
																				</form>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br> <br>
							</section>
						</div>
						<!-- Product Details Section End -->
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
                function scrollTop(elem,duration) {
                    let target = document.getElementById(elem);

                    target.addEventListener('click', function() {
                        let currentY = window.pageYOffset;
                        let step = duration/currentY > 1 ? 10 : 100;
                        let timeStep = duration/currentY * step;
                        let intervalID = setInterval(scrollUp, timeStep);

                        function scrollUp(){
                            currentY = window.pageYOffset;
                            if(currentY === 0) {
                                clearInterval(intervalID);
                            } else {
                                scrollBy( 0, -step );
                            }
                        }
                    });
                }
                function insertReview(p_id) {
                	console.log('상품번호 : ' + p_id);
                	var getMemValue = $('#member_serial').val();
                	var getTitleValue = $('#review_title').val();
                	var getContentValue = $('#review_content').val();

                	var data = {'p_id' : p_id, 'member_serial' : getMemValue, 'review_title' : getTitleValue, 'review_content' : getContentValue};

                	$.ajax({
                		url : '/store/insertReview',
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

                function deleteReview(review_id) {
                	console.log('리뷰아이디 : ' + review_id);
                	var data = {"r_id": review_id};
                	$.ajax({
                        url: '/store/deleteReview',
                        type: 'POST',
                        data: data,
                        success: function(data){
							console.log('?? ' + data)
							if(data == "success") {
								$('#rList_' + review_id).remove();
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
	<script type="text/javascript"
		src="/resources/js/jquery/jquery.min.js "></script>
	<script type="text/javascript"
		src="/resources/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="/resources/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="/resources/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="/resources/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- slimscroll js -->
	<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

	<!-- menu js -->
	<script src="/resources/js/pcoded.min.js"></script>
	<script src="/resources/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="/resources/js/script.js "></script>

</body>

</html>
