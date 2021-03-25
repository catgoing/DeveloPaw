<%@page import="ga.bowwow.service.board.Board"%>
<%@page import="java.util.List"%>
<%@page import="ga.bowwow.service.board.impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


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

<!-- Favicon icon -->
<link rel="icon" href="/main/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet" href="/main/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="/main/resources/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="/main/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="/main/resources/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="/main/resources/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="/main/resources/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="/main/resources/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="/main/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/main/resources/css/test.css">

<title>펫 다이어리</title>
<style>
</style>
</head>
<body>

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- header 헤더 영역 -->
			<%@ include file="common/header.jspf"%>
			<!-- header 헤더 영역 -->


			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<!-- sidebar 좌측메뉴바 -->
					
			<%@ include file="common/communityMenuBar.jsp"%>
					<!-- sidebar 좌측메뉴바 -->

					<div class="pcoded-content">

						<!-- Page-header start -->

						<!-- Page-header end -->
						<div class="pcoded-inner-content">

							<!-- body 본문 영역 -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<section class="featured spad">
											<div class="container">
												<div class="row">
													<div class="col-lg-12">
														<div class="section-title">
															<h2>펫 다이어리</h2>
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>

														<c:forEach var="list" items="${ boardList}">
															<li>
																<div class="block-item default-item">
																	<div class="best-label">${list.board_no }</div>
																	<div class="bookmark_btn click-btn">
																		<div class="scrap" id="scrapBtn_311"
																			onclick="WitCommon.boardScrap('knowhow', '311')">
																			<img id="scrapImg_311"
																				src="/main/resources/images/dog.jpg" alt="">
																		</div>
																	</div>
																	<div class="img-area"
																		onclick="location.href='/board/knowhow/311'">
																		<div class="imgItem"
																			style="background: url('https://web-wit.s3.ap-northeast-2.amazonaws.com/images/boardKnowhow/311/knowhow_1609169403_0.gif') center center no-repeat; background-size: cover;">
																		</div>
																	</div>
																	<div class="text-area">
																		<div class="item-title"
																			onclick="location.href='/board/knowhow/311'">
																			<h4>${list.board_title }</h4>
																		</div>
																		<p class="hashtag">
																			<span>#마사지 </span><span>#강아지마사지 </span><span>#강아지테라피
																			</span><span>#예민한강아지 </span><span>#강아지</span><span>#...</span>
																		</p>
																		<div class="item-items">
																			<div class="profile"
																				onclick="pagePopup.openGotoPopup()">
																				<p>${list.id }</p>
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</c:forEach>
														<li>
															<div class="block-item default-item">
																<div class="best-label">1</div>
																<div class="bookmark_btn click-btn">
																	<div class="scrap" id="scrapBtn_311"
																		onclick="WitCommon.boardScrap('knowhow', '311')">
																		<img id="scrapImg_311"
																			src="/main/resources/images/dog.jpg" alt="">
																	</div>
																</div>
																<div class="img-area"
																	onclick="location.href='/board/knowhow/311'">
																	<div class="imgItem"
																		style="background: url('https://web-wit.s3.ap-northeast-2.amazonaws.com/images/boardKnowhow/311/knowhow_1609169403_0.gif') center center no-repeat; background-size: cover;">
																	</div>
																</div>
																<div class="text-area">
																	<div class="item-title"
																		onclick="location.href='/board/knowhow/311'">
																		<h4>제목</h4>
																	</div>
																	<p class="hashtag">
																		<span>#마사지 </span><span>#강아지마사지 </span><span>#강아지테라피
																		</span><span>#예민한강아지 </span><span>#강아지</span><span>#...</span>
																	</p>
																	<div class="item-items">
																		<div class="profile"
																			onclick="pagePopup.openGotoPopup()">
																			<p>닉네임</p>
																		</div>
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
							<!-- body 본문 영역 -->

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
		</script>

		<!-- footer 푸터 영역 -->
		<%@ include file="common/footer.jspf"%>
		<!-- footer 푸터 영역 -->

	</div>

	<!-- Required Jquery -->
	<script type="text/javascript"
		src="/main/resources/js/jquery/jquery.min.js "></script>
	<script type="text/javascript"
		src="/main/resources/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="/main/resources/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="/main/resources/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="/main/resources/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="/main/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- slimscroll js -->
	<script src="/main/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

	<!-- menu js -->
	<script src="/main/resources/js/pcoded.min.js"></script>
	<script src="/main/resources/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="/main/resources/js/script.js "></script>

</body>
</html>






