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
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%@ include file="/common/import.jsp"%>

<title>BOWWOW 커뮤니티</title>
<style>

.pcoded-navbar{ z-index:99999;}

footer.footer.navbar-wrapper {
    z-index: 3;
}

.block-item:hover{
	cursor:pointer;
}
.side_active {
	background-color : #f7b5b7;
    -webkit-box-shadow: 0 15px 8px -11px rgba(0, 0, 0, 0.25);
    box-shadow: 0 15px 8px -11px rgba(0, 0, 0, 0.25);
}
.b_title{
	font-size:22px; display:inline-block; width:200px; background-color:transparent; border:none;
}

.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  border-radius:10px;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 10px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}

</style>
<script>
	$(function (){
		var board_idx = ${board_idx};
		board_idx = board_idx + 3;
		$(".pcoded-inner-navbar>ul:nth-child(" + board_idx + ")>li>a").addClass("side_active");
	});
</script>
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
											<div class="container-main" style="background-color:#f9f9f9; border-radius:10px">
												<div class="row">
													<div class="col-lg-12" style="width:1400px; height:70px">
														<div class="section-title">
															<h3 style="margin: 20px 0 0 20px">펫 다이어리</h3>
															<span style="float:right; margin-right:20px"><a href="/community/diary_board">더 보기</a></span>
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>
														<c:forEach var="diaryList" items="${ diaryList}">
															<li style="background-color : #ece4e4; margin:5px; border-radius:10px">
																<div class="block-item default-item col-lg-3 col-md-4 col-sm-6" onclick="location.href='/community/detail?board_idx=1&board_no=${diaryList.board_no}'">
																	<div class="best-label"><br></div>
																	<div class="img-area" style="width:300px; height:300px;">
																		<div class="imgItem" style="width:300px; height:300px;">
																			<img src='https://projectbit.s3.us-east-2.amazonaws.com/${diaryList.img1 }' onerror='this.src="/resources/images/alt_img.png"' width="100%" height="100%">
																		</div>
																	</div>
																	<br>
																	<div class="text-area">
																		<div class="item-title" style="width:300px; color:black;">
																			<a href="/community/detail?board_idx=1&board_no=${diaryList.board_no}">
																			</a>
																			<input type="text" class="b_title" maxlength="15" value="${diaryList.board_title }" style="text-overflow: ellipsis" >
																			<%-- <span style="font-size:22px;  display:inline-block; width:200px;" >${list.board_title }</span> --%>
																			<span style="postion:inline-block;float:right; margin-top:8px">${diaryList.regdate }</span>
																		</div>
																		<div class="item-items">
																			<div class="profile" style="width:300px;">
																				<span style="margin-left:2px">${diaryList.nickname }</span>
																				<span style="float:right">조회수 ${diaryList.hits }</span>
																				<br>
																				<br>
																			</div>
																			<div class="profile" style="margin-right:0">
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</c:forEach>
													</ul>
												</div>
												<br>
												<div>
												</div>
											</div>
											<div class="container-main" style="background-color:#f9f9f9; border-radius:10px">
												<div class="row">
													<div class="col-lg-12" style="width:1400px; height:70px">
														<div class="section-title">
															<h3 style="margin: 20px 0 0 20px">펫 소개</h3>
															<span style="float:right; margin-right:20px"><a href="/community/intro_board">더 보기</a></span>
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>
														<c:forEach var="introList" items="${ introList}">
															<li style="background-color : #ece4e4; margin:5px; border-radius:10px">
																<div class="block-item default-item col-lg-3 col-md-4 col-sm-6" onclick="location.href='/community/detail?board_idx=2&board_no=${introList.board_no}'">
																	<div class="best-label"><br></div>
																	<div class="img-area" style="width:300px; height:300px;">
																		<div class="imgItem" style="width:300px; height:300px;">
																			<img src='https://projectbit.s3.us-east-2.amazonaws.com/${introList.img1 }' onerror='this.src="/resources/images/alt_img.png"' width="100%" height="100%">
																		</div>
																	</div>
																	<br>
																	<div class="text-area">
																		<div class="item-title" style="width:300px; color:black;">
																			<a href="/community/detail?board_idx=2&board_no=${introList.board_no}">
																			</a>
																			<input type="text" class="b_title" maxlength="15" value="${introList.board_title }" style="text-overflow: ellipsis" >
																			<%-- <span style="font-size:22px;  display:inline-block; width:200px;" >${list.board_title }</span> --%>
																			<span style="postion:inline-block;float:right; margin-top:8px">${introList.regdate }</span>
																		</div>
																		<div class="item-items">
																			<div class="profile" style="width:300px;">
																				<span style="margin-left:2px">${introList.nickname }</span>
																				<span style="float:right">조회수 ${introList.hits }</span>
																				<br>
																				<br>
																			</div>
																			<div class="profile" style="margin-right:0">
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</c:forEach>
													</ul>
												</div>
												<br>
												<div>
												</div>
											</div>
											<div class="container-main" style="background-color:#f9f9f9; border-radius:10px">
												<div class="row">
													<div class="col-lg-12" style="width:1400px; height:70px">
														<div class="section-title">
															<h3 style="margin: 20px 0 0 20px">펫 노하우</h3>
															<span style="float:right; margin-right:20px"><a href="/community/knowhow_board">더 보기</a></span>
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>
														<c:forEach var="knowhowList" items="${ knowhowList}">
															<li style="background-color : #ece4e4; margin:5px; border-radius:10px">
																<div class="block-item default-item col-lg-3 col-md-4 col-sm-6" onclick="location.href='/community/detail?board_idx=3&board_no=${knowhowList.board_no}'">
																	<div class="best-label"><br></div>
																	<div class="img-area" style="width:300px; height:300px;">
																		<div class="imgItem" style="width:300px; height:300px;">
																			<img src='https://projectbit.s3.us-east-2.amazonaws.com/${knowhowList.img1 }' onerror='this.src="/resources/images/alt_img.png"' width="100%" height="100%">
																		</div>
																	</div>
																	<br>
																	<div class="text-area">
																		<div class="item-title" style="width:300px; color:black;">
																			<a href="/community/detail?board_idx=3&board_no=${knowhowList.board_no}">
																			</a>
																			<input type="text" class="b_title" maxlength="15" value="${knowhowList.board_title }" style="text-overflow: ellipsis" >
																			<%-- <span style="font-size:22px;  display:inline-block; width:200px;" >${list.board_title }</span> --%>
																			<span style="postion:inline-block;float:right; margin-top:8px">${knowhowList.regdate }</span>
																		</div>
																		<div class="item-items">
																			<div class="profile" style="width:300px;">
																				<span style="margin-left:2px">${knowhowList.nickname }</span>
																				<span style="float:right">조회수 ${knowhowList.hits }</span>
																				<br>
																				<br>
																			</div>
																			<div class="profile" style="margin-right:0">
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</c:forEach>
													</ul>
												</div>
												<br>
												<div>
												</div>
											</div>
											<div class="container-main" style="background-color:#f9f9f9; border-radius:10px">
												<div class="row">
													<div class="col-lg-12" style="width:1400px; height:70px">
														<div class="section-title">
															<h3 style="margin: 20px 0 0 20px">잃어버린 반려동물 찾아요</h3>
															<span style="float:right; margin-right:20px"><a href="/community/missing_board">더 보기</a></span>
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>
														<c:forEach var="missingList" items="${ missingList}">
															<li style="background-color : #ece4e4; margin:5px; border-radius:10px">
																<div class="block-item default-item col-lg-3 col-md-4 col-sm-6" onclick="location.href='/community/detail?board_idx=4&board_no=${missingList.board_no}'">
																	<div class="best-label"><br></div>
																	<div class="img-area" style="width:300px; height:300px;">
																		<div class="imgItem" style="width:300px; height:300px;">
																			<img src='https://projectbit.s3.us-east-2.amazonaws.com/${missingList.img1 }' onerror='this.src="/resources/images/alt_img.png"' width="100%" height="100%">
																		</div>
																	</div>
																	<br>
																	<div class="text-area">
																		<div class="item-title" style="width:300px; color:black;">
																			<a href="/community/detail?board_idx=4&board_no=${missingList.board_no}">
																			</a>
																			<input type="text" maxlength="15" class="b_title" value="${missingList.board_title }" style="text-overflow: ellipsis" >
																			<%-- <span style="font-size:22px;  display:inline-block; width:200px;" >${list.board_title }</span> --%>
																			<span style="postion:inline-block;float:right; margin-top:8px">${missingList.regdate }</span>
																		</div>
																		<div class="item-items">
																			<div class="profile" style="width:300px;">
																				<span style="margin-left:2px">${missingList.nickname }</span>
																				<span style="float:right">조회수 ${missingList.hits }</span>
																				<br>
																				<br>
																			</div>
																			<div class="profile" style="margin-right:0">
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</c:forEach>
													</ul>
												</div>
												<br>
												<div>
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
<!-- 		<button class="scroll-top" id="js-button"
			style="margin-bottom: 190px; margin-right: 30px; font: 'Jua'">
			<i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
		</button> -->
		
		<!-- footer 푸터 영역 -->
		<%@ include file="/common/storeFoot.jsp"%>
		<!-- footer 푸터 영역 -->
		<div class="fixed-button2 active dropdown">
		
			<c:if test="${sessionScope.userDTO != null }">
				<a class="btn2 btn-md btn-primary"> 글쓰기</a> 
			</c:if>
			
		
		 <div class="dropdown-content" style="right:5px;bottom:10px">
			  <a href="/community/write?board_idx=1">펫 다이어리</a>
			  <a href="/community/write?board_idx=2">펫 소개</a>
			  <a href="/community/write?board_idx=3">펫 노하우</a>
			  <a href="/community/write?board_idx=4">잃어버린 반려동물</a>
			  </div>
			</div>
		

	</div>

	<!-- Required Jquery -->
	<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>
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






																			