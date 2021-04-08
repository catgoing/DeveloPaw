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
<!-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"> -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">

<title>펫 다이어리</title>
<style>
</style>
</head>
<body>

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- header 헤더 영역 -->
			<%@ include file="/common/header.jsp"%>
			<!-- header 헤더 영역 -->


			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<!-- sidebar 좌측메뉴바 -->
					<%@ include file="/common/communityMenuBar.jsp"%>
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
																<div class="block-item default-item"
																	onclick="location.href='/community/detail?board_idx=${board_idx }&board_no=${list.board_no}'">
																	<div class="best-label">${list.board_no }</div>
																	<div class="bookmark_btn click-btn">
																		<div class="scrap" id="scrapBtn_311"
																			onclick="WitCommon.boardScrap('knowhow', '311')">
																			<img style="width: 200px" id="scrapImg_311"
																				src='https://projectbit.s3.us-east-2.amazonaws.com/${list.img1 }'
																				alt="썸네일이 없음ㅁ">
																		</div>
																	</div>
																	<div class="img-area"
																		onclick="location.href='/board/knowhow/311'">
																		<div class="imgItem"
																			style="background: url('https://web-wit.s3.ap-northeast-2.amazonaws.com/images/boardKnowhow/311/knowhow_1609169403_0.gif') center center no-repeat; background-size: cover;">
																		</div>
																	</div>
																	<div class="text-area">
																		<div class="item-title">
																			<a
																				href="/community/detail?board_idx=${board_idx }&board_no=${list.board_no}">${list.board_title }</a>
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
																		<img id="scrapImg_311" src="/resources/images/dog.jpg"
																			alt="">
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


		<div class="fixed-button active">
			<a href="javascript:void(0)" class="btn btn-md btn-primary pcoded-item pcoded-left-item pcoded-hasmenu"> 
			<span class="pcoded-mtext">글쓰기</span></a>
			<ul class="pcoded-submenu">
				<li class=""><a href="productList?p_type=dog"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext">상품
							전체보기</span> <span class="pcoded-mcaret"></span>
				</a></li>
				<li class=""><a href="productList?p_type=dog&p_category=food"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext">사료</span>
						<span class="pcoded-mcaret"></span>
				</a></li>
				<li class=""><a href="productList?p_type=dog&p_category=snack"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext">간식</span>
						<span class="pcoded-mcaret"></span>
				</a></li>
				<li class=""><a href="productList?p_type=dog&p_category=care"
					class="waves-effect waves-dark"> <span class="pcoded-micon"><i
							class="ti-angle-right"></i></span> <span class="pcoded-mtext">케어</span>
						<span class="pcoded-mcaret"></span>
				</a></li>
			</ul>
		</div>



		<!-- footer 푸터 영역 -->
		<%@ include file="/common/footer.jsp"%>
		<!-- footer 푸터 영역 -->

	</div>

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






