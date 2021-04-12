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
<%@ include file="/common/import.jsp"%>

<title>펫 다이어리</title>
<style>

footer.footer.navbar-wrapper {
    z-index: 3;
}

.button {
	box-shadow:inset 0px 1px 0px 0px #f7c5c0;
	background:linear-gradient(to bottom, #fc8d83 5%, #e4685d 100%);
	background-color:#fc8d83;
	border-radius:6px;
	border:1px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;	
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
}

.buttonsmbt {
	padding:4px 16px;

}

.buttonbig {
	padding:6px 24px;

}

.button:hover, .buttonsm:hover {
	background:linear-gradient(to bottom, #e4685d 5%, #fc8d83 100%);
	background-color:#e4685d;
}
.button:active, .buttonsm:hover  {
	position:relative;
	top:1px;
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

.nonbutton{
	border:none;
	
}

.nonbutton:hover{
	cursor:pointer;
	
}

.c_hidden { display: none; }

.side_active {
	background-color : #f7b5b7;
    -webkit-box-shadow: 0 15px 8px -11px rgba(0, 0, 0, 0.25);
    box-shadow: 0 15px 8px -11px rgba(0, 0, 0, 0.25);
}

.product-title {
    text-align:center;
    display:table;
    width:860px;
}

.product-img-div {
    display:table-cell;
    vertical-align:middle;
}

.product-img-div > span > p > img {
    max-width:860px;
}

.tag-item > img {
    max-width:860px;
}

</style>
<!-- 신고하기  -->
	<script>
	$(function (){
		var board_idx = ${board_idx};
		board_idx = board_idx + 3;
		$(".pcoded-inner-navbar>ul:nth-child(" + board_idx + ")>li>a").addClass("side_active");
	});

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
        
		//답글(대댓글) 토글식 구현
 		$(function(){
	        $(".comment2Click").on("click", function(){
	        	var idx = $(".comment2Click").index(this);
	        	$(".comment2Box").eq(idx).toggleClass("c_hidden");
	        });
		}); 

		
		$(function(){
			$(".autosize").on('keydown keyup', function () {
				 $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
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
														
														</div>
														<br>
													</div>
												</div>
												<form method="post">
												<div class="monthly-products" style="background-color:white; width:900px; margin:auto; padding:15px">
														<div style="background-color : #f7f2f2; margin:5px; border-radius:10px">
														<c:set var="a_class" value="${vo.animal_class }"/>
														<c:if test="${a_class eq 1 }">
															<div style="margin-left:20px; margin-top:50px; color:green">
																강아지
															
														</c:if>
														<c:if test="${a_class eq 2 }">
															<div style="margin-left:20px; margin-top:50px; color:green">
																고양이
															
														</c:if>
														<c:if test="${a_class eq 3 }">
															<div style="margin-left:20px; margin-top:50px; color:green">
																자유
															
														</c:if>
														<c:if test="${a_class eq null }">
															<br>
														</c:if>
														<c:set var="sub_class" value="${vo.sub_class }"/>
														<c:if test="${sub_class eq 0 }">
																<span style="color : #ff0000;">															
																&nbsp&nbsp&nbsp교육/훈련
																</span>
														</c:if>
														<c:if test="${sub_class eq 1 }">
																<span style="color : #ff0000;">															
																&nbsp&nbsp&nbsp급여/식이
																</span>
														</c:if>
														<c:if test="${sub_class eq 2 }">
																<span style="color : #ff0000;">															
																&nbsp&nbsp&nbsp건강
																</span>
														</c:if>
														<c:if test="${sub_class eq 3 }">
																<span style="color : #ff0000;">
																&nbsp&nbsp&nbsp생활꿀팁
																</span>
														</c:if>
														<c:if test="${sub_class eq null }">
															
														</c:if>
														</div>
															<div class="title">
															<h3 class="join_title" style="margin-left:20px; margin-top:10px">
																<label for="id" style="color:black;">${vo.board_title }</label>
															</h3>
															</div>
															<div class="nickname hits" style="margin:10px">
															<h6 class="join_title" style="text-align:right">
																<label style="color:black;"> ${vo.regdate }</label>
															</h6>
															<h6 class="join_title" style="text-align:right">
																<label style="color:black;">${vo.nickname }</label>
																<label style="color:black;">조회 ${vo.hits }</label>
															</h6>
															</div>
														</div>															
														<hr>
													
													<!-- 여기에 회원정보(사진, 닉네임 등) 출력 -->

																<div class="product-title" style="background-color : #f7f2f2; margin:5px; border-radius:10px">
																	<div class="product-img-div">
																		<span class="box int_id" style="color:black; text-align:center; width:100%;"> ${vo.board_content } </span>
																		<!-- 수정하기 -->
																		<div style="text-align:right; margin-right:10px">
																			<input type="hidden" name="board_idx" value="${board_idx }">
																			<input type="hidden" name="board_no" value="${vo.board_no }">
																			<input type="submit" class="button buttonbig" value="수정" formaction="/community/update/board" >
																			<input type="submit" class="button buttonbig" value="삭제 " formaction="/community/boardDelete">
																		</div>
																	</div>
																</div>
														</form>

														<hr>
															
													<div style="border: solid 1px lightgray; border-radius : 5px; margin : 10px">
													<form action="/community/comment" method="GET">												
													<div style="padding:20px; position:relative">
													추후 닉네임 출력	
													<br>							
															<textarea placeholder="댓글 입력" class="autosize" name="comment_content" id="comment_content" 
															style="border:none; width:800px; min-height: 50px; resize:none;"></textarea>
															<br>
															<input type="hidden" name="board_no" value=${board_no }>											
															<input type="hidden" name="board_idx" value=${board_idx }>
															<div class="clearfix">
																<input type="submit" class="button buttonsmbt" value="등록" style=" float: right;">
															</div>
														</div>
													</form>
													</div>
														<div class="comments_div" style="margin:20px">
															<c:forEach var="comvo" items="${commentList }">
															<form action="commentDelete">
															<div>
																${comvo.nickname }
																<ul style="float:right">
																<li>
																	${comvo.regdate }
																</li>
																</ul>
															</div>
															<p style="color:black; font-size:1.2em">${comvo.comment_content } </p>
															<div style="float:right">
															<button class="nonbutton" id="comment" name="comment" value="${comvo.comment_no },${tempMemberSerial}	">신고</button>
															
															<!-- 댓글 삭제하기 -->
																<input type="hidden" name="board_no" value=${board_no }>		
																<input type="hidden" name="board_idx" value=${board_idx }>									
																<input type="hidden" name="comment_no" value=${comvo.comment_no }>
																<input class="nonbutton" type="submit" value="삭제">
																</div>
															</form>
															
															<div class="comment2Click">
																<button class="nonbutton" id =comment2_insert name = "comment2_insert" >답글</button>											
															</div>
															<div class="comment2Box c_hidden" style="boarder-bottom:2px dotted silver;">													
																<form action="/community/comment2" method="GET">												
																	<div>
																		<textarea name="comment_content" id="comment_content" placeholder="댓글 입력" class="autosize" 
																					style="border:none; width:800px; min-height: 50px; resize:none;"></textarea>
																	</div>
																	<input type="hidden" name="comment_no" value=${comvo.comment_no }>											
																	<input type="hidden" name="board_idx" value=${board_idx }>	
																	<input type="hidden" name="board_no" value=${board_no }>
																	<div class="clearfix">
																		<input type="submit" class="button" style="float:right" value="등록">
																	</div>
																</form>
															</div>
														

															<c:set var="com1" value="${comvo.comment_no }" />
															<hr>
															
															<c:forEach var="com2vo" items="${comment2List }">
																<c:set var="com2" value="${com2vo.comment_no }" />
																<c:if test="${com1 == com2}">
																	<div >
																	대댓글<br>
																	${com2vo.comment_content } // ${com2vo.nickname } // ${com2vo.regdate }
																<!-- 대댓글 삭제하기 -->
																	<form action="commentDelete2">
																		<input type="hidden" name="board_no" value=${board_no }>		
																		<input type="hidden" name="board_idx" value=${board_idx }>									
																		<input type="hidden" name="comment_no" value=${com2vo.comment_no }>
																		<input type="submit" value="삭제하기" >
																	</form>
																	</div>
																<hr>
																</c:if>
															</c:forEach>
														</c:forEach>			
													</div>
													<br>
												</div>
										</section>
										</div>
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

		<!-- footer 푸터 영역 -->
		<%@ include file="/common/storeFoot.jsp"%>
		<!-- footer 푸터 영역 -->
		<div class="fixed-button active"><a href="/community/write_knowhow_board.jsp" class="btn btn-md btn-primary"> 글쓰기</a> </div>
		

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






