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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%@ include file="/common/import.jsp"%>

<title>게시판 검색 결과</title>
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
									
									<c:if test="${empty diarylist }">
											<a>검색결과가 없습니다.</a>
									</c:if>									
									<c:if test="${not empty diarylist }">
										<h2>{펫일기장}</h2>
										<c:forEach var="diarylist" items="${diarylist }">
											<div class="card-deck">
											  <div class="card">
											    <img class="card-img-top" src=".../100px180/" alt="Card image cap">
											    <div class="card-body">
											      <h5 class="card-title">제목 :${diarylist.board_title }</h5>
											      <p class="card-text">내용 :${diarylist.board_scontent}</p>
											    </div>
											    <div class="card-footer">
											      <small class="text-muted">닉네임</small>
											    </div>
											  </div>				 
											</div>
										</c:forEach>
									</c:if>	
									
									<c:if test="${empty introlist }">
											<a>검색결과가 없습니다.</a>
									</c:if>									
									<c:if test="${not empty introlist }">
										<h2>{펫 소개}</h2>
										<c:forEach var="introlist" items="${introlist }">
											<div class="card-deck">
											  <div class="card">
											    <img class="card-img-top" src=".../100px180/" alt="Card image cap">
											    <div class="card-body">
											      <h5 class="card-title">제목 :${introlist.board_title }</h5>
											      <p class="card-text">내용 :${introlist.board_scontent}</p>
											    </div>
											    <div class="card-footer">
											      <small class="text-muted">닉네임</small>
											    </div>
											  </div>				 
											</div>
										</c:forEach>
									</c:if>	
									
									<c:if test="${empty knowhowlist }">
											<a>검색결과가 없습니다.</a>
									</c:if>									
									<c:if test="${not empty knowhowlist }">
										<h2>{펫 노하우}</h2>
										<c:forEach var="knowhowlist" items="${knowhowlist }">
											<div class="card-deck">
											  <div class="card">
											    <img class="card-img-top" src=".../100px180/" alt="Card image cap">
											    <div class="card-body">
											      <h5 class="card-title">제목 :${knowhowlist.board_title }</h5>
											      <p class="card-text">내용 :${knowhowlist.board_scontent}</p>
											    </div>
											    <div class="card-footer">
											      <small class="text-muted">닉네임</small>
											    </div>
											  </div>				 
											</div>
										</c:forEach>
									</c:if>	
				
							
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
			scrollTop('js-button', 100);
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



<form action="search">
				<input type="text" name="keyword" />
				<input type="submit" value="검색"/> 
			</form>
			
			
			
