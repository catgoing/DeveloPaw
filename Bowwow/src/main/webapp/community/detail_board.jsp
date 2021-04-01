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
	<script type="text/javascript"
		src="/resources/js/jquery/jquery.min.js "></script>
<!-- Style.css -->
<!-- <link rel="stylesheet" type="text/css" href="/Bowwow/src/main/webapp/resources/css/style.css"> -->

<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">

<title>펫 다이어리</title>
<style>
</style>
<!-- 신고하기  -->
	<script>
        $(function (){
        	$('.readonly').prop('readonly', true);
            $('.report_class').click(function(){
                var class_no = $('input[name="report_class"]:checked').val();
                if(class_no == 5) {
                    $('.readonly').prop('readonly', false);
                } else {
                    $('.readonly').prop('readonly', true);
                    $('.readonly').val("");
                }
            });
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
													<!-- 주문번호 -->
													<div>
														<h3 class="join_title">
															<label for="id">제목</label>
														</h3>
														<span class="box int_id"> ${vo.board_title } </span>
													</div>
													

													<!-- NAME -->
													<div>
														<h3 class="join_title">
															<label for="id">내용</label>
														</h3>
														<span class="box int_id"> ${vo.board_content } </span>
													</div>
													<input type="button" onclick="location.href=/community/updateBoard">
													
													<hr>
													댓글
													


													<br>
													<div class="comments_div">
														<c:forEach var="comvo" items="${commentList }">
															<h4>${comvo.comment_content } // ${comvo.nickname } // ${comvo.regdate }</h4>
															<button name = "comment" value="${comvo.comment_no },${tempMemberSerial}" onclikck="">신고</button>
															<c:set var="com1" value="${comvo.comment_no }" />
															<hr>
															
															<c:forEach var="com2vo" items="${comment2List }">
																<c:set var="com2" value="${com2vo.comment_no }" />
																<c:if test="${com1 == com2}">
																	<div >
																	대댓글<br>
																	${com2vo.comment_content } // ${com2vo.nickname } // ${com2vo.regdate }
																	</div>
																<hr>
																</c:if>
															</c:forEach>
														</c:forEach>			
													</div>
													<br>
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
<!-- 
	<form action="~~~" method="POST">
           <div style="text-align: left; margin-left:50px;">
           <input type="radio" class="report_class" name="report_class" value="1"> 저작권 침해 및 불법자료<br>
           <input type="radio" class="report_class" name="report_class" value="2"> 도배성 게시글<br>
           <input type="radio" class="report_class" name="report_class" value="3"> 허위사실<br>
           <input type="radio" class="report_class" name="report_class" value="4"> 불법 광고<br>
           <input type="radio" class="report_class" name="report_class" value="5"> 기타 <br>
           <input type="textarea" class="readonly" name="content"> 
           </div>
           <br>
           <input type="submit" value="확인" >
       </form>
	 -->
	

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






