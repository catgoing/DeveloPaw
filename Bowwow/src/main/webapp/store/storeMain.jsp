<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link rel="stylesheet" href="../resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
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
<link rel="stylesheet" type="text/css" href="../resources/css/test.css">
<style>
.featured__item__text {
	width: 150px;
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

			<!-- header 헤더 시작 -->
			<%@ include file="/common/header.jspf"%>


			<!-- 좌측 메뉴바 시작 -->
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<nav class="pcoded-navbar">

						<div class="pcoded-inner-navbar main-menu">

							<div class="p-15 p-b-0">
								<form class="form-material"></form>
							</div>

							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"></span> 
									<span class="pcoded-mtext">스토어</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>

							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"></span> 
									<span class="pcoded-mtext">댕댕이</span>
										<span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="auth-normal-sign-in.html"
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
										<li class=""><a href="sample-page.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">의류</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="storeMain.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">장난감</span> <span class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"></span> 
									<span class="pcoded-mtext">냥냥이</span>
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
					
					<!-- 좌측 메뉴바 끝 -->
					
					
					<div class="pcoded-content">
						<div class="pcoded-inner-content">
						
						
							<!-- Main-body start 본문 시작 -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<section class="featured spad">
											<div class="container">
												<div class="row">
													<div class="col-lg-12">
														<div class="section-title">
															<h2>이달의 인기상품</h2>
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>
														<li>
															<div
																class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
																<div class="featured__item">
																	<div>
																		<a href="productDetail.html"> <img
																			src="../resources/images/hanbok.jpg">
																		</a>
																	</div>
																	<div class="featured__item__pic set-bg"
																		data-setbg="img/featured/feature-1.jpg">
																		<a href="#"><i class="fa fa-shopping-cart"></i></a>
																	</div>
																	<br>
																	<div class="featured__item__text" style="width: 200px;">
																		<h6>
																			<a href="productDetail.html">나래 한복 케이프 모음집</a>
																		</h6>
																		<h5>35,000원</h5>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
																<div class="featured__item">
																	<div>
																		<img src="../resources/images/cat.jpg">
																	</div>
																	<div class="featured__item__pic set-bg"
																		data-setbg="img/featured/feature-1.jpg">
																		<a href="#"><i class="fa fa-shopping-cart"></i></a>
																	</div>
																	<br>
																	<div class="featured__item__text" style="width: 200px;">
																		<h6>
																			<a href="#">대왕빼빼로 캣닢 쿠션</a>
																		</h6>
																		<h5>27,900원</h5>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
																<div class="featured__item">
																	<div>
																		<img src="../resources/images/dog.jpg">
																	</div>
																	<div class="featured__item__pic set-bg"
																		data-setbg="img/featured/feature-1.jpg">
																		<a href="#"><i class="fa fa-shopping-cart"></i></a>
																	</div>
																	<br>
																	<div class="featured__item__text" style="width: 200px;">
																		<h6>
																			<a href="#">냄새잡는 참숯 배변패드</a>
																		</h6>
																		<h5>25,900원</h5>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
																<div class="featured__item">
																	<div>
																		<img src="../resources/images/food.png">
																	</div>
																	<div class="featured__item__pic set-bg"
																		data-setbg="img/featured/feature-1.jpg">
																		<a href="#"><i class="fa fa-shopping-cart"></i></a>
																	</div>
																	<br>
																	<div class="featured__item__text" style="width: 200px;">
																		<h6>
																			<a href="#">퍼피레시피 치킨 주식캔 150g</a>
																		</h6>
																		<h5>14,900원</h5>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
																<div class="featured__item">
																	<div>
																		<img src="../resources/images/hanbok.jpg">
																	</div>
																	<div class="featured__item__pic set-bg"
																		data-setbg="img/featured/feature-1.jpg">
																		<a href="#"><i class="fa fa-shopping-cart"></i></a>
																	</div>
																	<br>
																	<div class="featured__item__text" style="width: 200px;">
																		<h6>
																			<a href="#">나래 한복 케이프 모음집</a>
																		</h6>
																		<h5>35,000원</h5>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
																<div class="featured__item">
																	<div>
																		<img src="../resources/images/cat.jpg">
																	</div>
																	<div class="featured__item__pic set-bg"
																		data-setbg="img/featured/feature-1.jpg">
																		<a href="#"><i class="fa fa-shopping-cart"></i></a>
																	</div>
																	<br>
																	<div class="featured__item__text" style="width: 200px;">
																		<h6>
																			<a href="#">대왕빼빼로 캣닢 쿠션</a>
																		</h6>
																		<h5>27,900원</h5>
																	</div>
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</section>
									</div>

								</div>
								<!-- Page-body end -->
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="scroll-top" id="js-button"
			style="margin-bottom: 190px; margin-right: 30px;">
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
		<%@ include file="/common/footer.jspf"%>


	</div>



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