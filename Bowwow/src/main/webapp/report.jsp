<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="ga.bowwow.service.board.impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <meta name="viewport"
		content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="keywords"
			content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
		<meta name="author" content="Codedthemes" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
        <meta charset="utf-8">

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
<!-- <link rel="stylesheet" type="text/css" href="/main/resources/css/style.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="../resources/css/style.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/resources/css/style.css"> -->
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">
        
    </head>
    <script>
        $(function (){
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
        
        $(document).on('click','#comment', function () {

            alert("댓번호 : "+$(this).attr("value"));	
        });
        
        
    </script>
    <body id="page-top">
        	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- header 헤더 영역 -->
			<%@ include file="/common/header.jsp"%>
			<!-- header 헤더 영역 -->


			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<!-- sidebar 좌측메뉴바 -->
					<nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
					

							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">커뮤니티</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>

							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">펫
											다이어리</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">펫
											소개</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>

						</div>
					</nav>
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
															<label for="buylist_no">글번호</label>
														</h3>
														<span class="box int_buylist_no"> <input
															type="text" id="buylist_no" name="buylist_no" class="int"
															readonly value="${vo.board_no }" maxlength="20">
														</span>
													</div>

													<!-- NAME -->
													<div>
														<h3 class="join_title">
															<label for="id">내용</label>
														</h3>
														<span class="box int_id"> ${vo.board_content } </span>
													</div>
													
													<hr>
													댓글
													<br>
													<div class="comments_div">
														<c:forEach var="comvo" items="${commentList }">
															<h4>${comvo.comment_content } // ${comvo.nickname } // ${comvo.regdate }</h4>
															<button  id = comment name = "comment" value="${comvo.comment_no }	">신고</button>
															<c:set var="com1" value="${comvo.comment_no }" />
															<hr>
															
															<c:forEach var="com2vo" items="${comment2List }">
																<c:set var="com2" value="${com2vo.comment_no }" />
																<c:if test="${com1 == com2}">
																대댓글<br>
																${com2vo.comment_content } // ${com2vo.nickname } // ${com2vo.regdate }
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
		<%-- <%@ include file="/common/footer.jsp"%>  --%>
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

        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">신고하기 버튼</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->

                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/report.png" alt="" />
                        </div>
                    </div>
                   
                </div>
            </div>
        </section>
 
         <!-- Portfolio Modals-->
        <!-- Portfolio Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">신고하기</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                    <hr>
                                    </div>
                                   
                                    <!-- Portfolio Modal - Text-->
                                    <form action="report1" method="POST">
                                    <div style="text-align: left; margin-left:50px;">
                                    <input type="radio" class="report_class" name="report_class" value="1"> 저작권 침해 및 불법자료<br>
                                    <input type="radio" class="report_class" name="report_class" value="2"> 도배성 게시글<br>
                                    <input type="radio" class="report_class" name="report_class" value="3"> 허위사실<br>
                                    <input type="radio" class="report_class" name="report_class" value="4"> 불법 광고<br>
                                    <input type="radio" class="report_class" name="report_class" value="5"> 기타 <br>
                                    <input type="hidden" name="board_no" value=${vo.board_no }>
                                    <input type="textarea" class="readonly" name="content"> 
                                    <input type="hidden" name="accused_serial" value=${tempMemberSerial }>
                                    <!-- <input type="hidden" name="comments_no" value=${commentList.coments_no }> --> 
                                    </div>
                                    <br>
                                    <input type="submit" value="확인" >
                               		</form>
                               		</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        
    </body>
</html>
