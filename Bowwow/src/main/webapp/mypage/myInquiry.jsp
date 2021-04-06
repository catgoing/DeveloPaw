<%@page import="ga.bowwow.service.user.VO.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//임시 로그인처리
	int memberSerial = 1;
	String id = "z";
	UserAccount user= new UserAccount();
	user.setId(id);
	user.setMemberSerial(memberSerial);
	session.setAttribute("user", user);
%>
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
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!--Jua 폰트 import-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <!-- Dohyeon 폰트 import-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Favicon icon -->
    <link rel="icon" href="../resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="../resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="../resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="../resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="../resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="../resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/test.css">
<style>
 table { border-collapse: collapse; }
 th, td {
	border: 1px solid black;
	margin: 0 auto;
 }
 th { background-color: orange; }
 .center { text-align: center; }
 .border-none, .border-none td { border: none; }
 td .input-group{
 	width : 100%;
 }
 .my-inquiry{
	position: relative;
 }
 .question-write, .content-list, table{
	padding-bottom: 30px;
	text-align:center;
	margin : 50px;
	width: 80%;	
 }
 .question-write div, .question-write input[type="text"], 
 .question-write textarea, .question-write select{
	margin: 5px 0px; 
	width: 100%;
	font-size: 20px;
 }
 .textarea {
 	height: 200px;
 }
 .question-section {
  	width : 700px;
  	display : none;
  	overflow: hidden;
  	padding: 20px;
  	margin: 20px;
 }
 .question-title {
 	width : 100%;	
    font-size: 25px;
    font-weight: 700;
    line-height: 37px;
    float: left;
 }
 .question-title .cancel-btn{
	float: right;
    line-height: 37px;
 }
 .question-write{
	position: relative;
	width : 80%;
 }
 .write-question .question-section ul {
   border: 1px solid #e4e4e4;
   border-radius: 10px;
   background: #fff;
   width: 100%;
 }   

 .content-list {
   display : block;
   width: 80%;
    margin-bottom: 50px;
 } 
 
 .select-category{
 	width : 100%;	
    font-size: 25px;
    font-weight: 700;
    line-height: 37px;
    float: left;
 }
 .drop-category{
 	width: 100%;
 }
 input[type='text'],.question-write textarea, .select-category{
 	border: 1px solid #e4e4e4;
    border-radius: 10px;
 }
 .form-select form-select-lg mb-3 {
	width: 100%;
}
</style>
<script>

function inquiryType(val){
	console.log(val);
	$('input[name="contact_us_type"]').val(val);
}

$(document).ready(function(){
	$('#inquiry_type').on("change", function(){
		var checked = $("#inquiry_type>option:selected").val();
		console.log(checked);
	});
	
	$('.cancel-btn').click(function(){
		console.log($(this));
		$('input[type="text"]').val('');
		$('form-control fill').removeAttr("selected");
		$('textarea').val('');
	});
});

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
			<!-- header -->
			<%@include file="/common/header.jsp" %>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

				<!-- 좌측 메뉴바 시작 -->
				<%@include file="/common/myPageMenuBar.jsp" %>

<div class="pcoded-content">
	<div class="pcoded-inner-content">
		<!-- Main-body start 본문 시작 -->
		<div class="main-body">
	    <div class="page-wrapper">
		        <!-- Page-body start -->
					<div class="page-body">
						<div class="my-inquiry">
							<div class="question-write">
								<div class="question-title">
							    	<h2>고객문의</h2>
						     	</div>
						     	
						     	<div class="card-block accordion-block">
                                   <div id="accordion" role="tablist" aria-multiselectable="true">
                                       <div class="accordion-panel">
                                           <div class="accordion-heading" role="tab" id="headingOne">
                                                   <a class="accordion-msg waves-effect waves-dark card-title accordion-title" data-toggle="collapse"
                                                   data-parent="#accordion" href="#collapseOne"
                                                   aria-expanded="true" aria-controls="collapseOne"><i class="fas fa-chevron-down"></i> 고객님의 문의사항을 해결해드리겠습니다. <i class="fas fa-chevron-down"></i></a>
										  </div>
                                      	  <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                           <div class="accordion-content accordion-desc">
                                           <form id="inquiry_form" action="/insertUserInquiry" method="post" >
                                               <div class="form-group row" id="question-section">
                                              		<input type="text" class="form-control" name="inquiry_title" placeholder="제목을 입력하세요">
							    					<div class="col-sm-10">
							    					<input type="hidden" value="">
											    		<select class="form-control" id="inquiry_type" aria-label="문의유형선택" name="inquiry_type">
														  <option disabled>문의 유형 선택</option>
														  <option value="contactUs" onclick="inquiryType('contactUs')">이용문의</option>
														  <option value="buy" onclick="inquiryType('buy')">구매문의</option>
														  <option value="delivery" onclick="inquiryType('delivery')">배송문의</option>
														  <option value="etc" onclick="inquiryType('etc')">기타문의</option>
														</select>
							    					</div>
							    					<textarea class="form-control" name="inquiry_content" rows="5" placeholder="질문을 입력하세요!"></textarea>
								  					</div>
							    				<input type="hidden" name="nickname" value="${user.nickname }">
							    				<input type="hidden" name="member_serial" value="${user.memberSerial }">
	                                           <input type="submit" class="contact-btn" value="문의하기" >	
							    			   <input type="button" class="cancel-btn" value="취소">
                                           </form>
                                           	</div>
                                         </div>
	                                  </div>
	                                </div>
	                              </div>
								</div>
							
							<div class="content-list">
						     	<table>
									<tr>
										<th width="100">문의유형</th>
										<th width="200">제목</th>
										<th width="150">작성자</th>
										<th width="150">작성일</th>
										<th width="150">답변유무</th>
									</tr>
								<c:if test="${empty userinquiryList }">
									<tr>
										<td colspan="5" class="center">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${not empty userinquiryList }">	
									<c:forEach var="inquiry" items="${userinquiryList }">
									<tr>
										<td>${inquiry.inquiry_type }</td>
										<td>
											<a href="/myInquiryDetail?inquiry_serial=${inquiry.inquiry_serial }">
												${inquiry.inquiry_title }</a>
										</td>
										<td>${inquiry.nickname }</td>
										<td>${inquiry.inquiry_writedate }</td>
										<td>${inquiry.have_answer }</td>
									</tr>
									</c:forEach>
								</c:if>
								</table>
								<form action="/getInquiryTypeList" method="post">
								<table class="border-none">
									<tr>
										<td class="input-group">
										    <select class="form-control" id="inputGroupSelect04" name="typeSelect" aria-label="Example select with button addon">
										      <option value="0" selected>전체보기</option>
										      <option value="contactUs">이용문의</option>
										      <option value="buy">구매문의</option>
										      <option value="delivery">배송문의</option>
										      <option value="etc">기타문의</option>
										    </select>
											<input type="submit" class="btn btn-outline-secondary" value="검색">
										</td>
									</tr>
								</table>
								</form>
						     </div>
					    </div>
				    </div>
					<!-- Page-body end -->
            	</div>
	            <div id="styleSelector"> </div>
	        </div>
	      </div>
	      
	<button class="scroll-top" id="js-button" style="margin-bottom: 190px; margin-right: 30px;">
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
        </script>
        
	<!-- footer 푸터 시작부분-->
            <div style="display: block;">
                <footer class="footer navbar-wrapper">
                    <div class="footer-wrapper navbar-wrapper">
                        <div class="footer-box" style="height: 100px; text-align: center;">
                            푸터
                        </div>
                    </div>
                </footer>
         	 </div>
     <!-- footer 푸터 끝부분-->
        </div>
      </div>
    </div></div></div>
	<!-- Required Jquery -->
    <script type="text/javascript" src="../resources/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="../resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="../resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="../resources/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="../resources/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="../resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="../resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="../resources/js/pcoded.min.js"></script>
    <script src="../resources/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="../resources/js/script.js "></script>
</body>
</html>