<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 .trans-btn {
   position: absolute;
   width: 200px;
   height: 50px;
 }
 .cancel-btn{
 	display: none;
 }
 .content-list {
   display : block;
   width: 100%;
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

/* drop메뉴 사용 css
 .question-section .drop-category ul.active {
    display: block;
 }
 .question-write .select-category{
 	display: inline-block;
 	text-align : left; 
 	margin: 10px 0px 10px 60px; 
	width: 80%;	
 }
 .drop-category {
     position: relative;
 }
 .drop-category ul {
 	display:none;
 	position: absolute;
  	background: #fff;
	padding: 0 50px;
    height: 50px;
    line-height: 50px;
 }
 .drop-category ul li{
  	background: #fff;
 	width: 100%;
  }
.list-group-item{
    position: static;
    display: block;
    padding: 0 20em 0 5em;
    margin-bottom: -1px;
} */

</style>
<script>

	/* function inquiryType(val){
		console.log(val);
		$('input[name="contact_us_type"]').val(val);
	}

	$(document).ready(function(){
		//문의버튼 클릭시 문의입력메뉴 드롭다운
		$('.trans-btn').click(function(){
			console.log($(this));
			if($(this).siblings('.question-title').hasClass('active')){
				console.log("active 있음");			
				console.log("ajax전달");			
			} else {
				console.log("active 없음");	
		        $(this).siblings('.question-section').slideDown(300);
		        $(this).siblings('.question-title').addClass('active');
		        console.log($(this));
		        console.log($(this).siblings('.question-title').children(":last"));
		        //취소버튼 안보이다가 보이게 처리
		        $(this).siblings('.question-title').children(":last").addClass('active');
		        if($(this).siblings('.question-title').children(":last").hasClass('active')){
		        	console.log($(this));
		        	console.log($(this).siblings('.question-title').children(":last"));
		        	$(this).siblings('.question-title').children(":last").css('display', 'block');
		        }
			}
	    });
		//문의입력 취소버튼
		$('.question-title .cancel-btn').click(function(){
			console.log($(this));
			console.log("취소버튼 클릭");		
	        $(this).parent().siblings('.question-section').slideUp(300);
	        $(this).parent().removeClass('active');
	        //취소버튼 안보이게 처리
	        if($(this).hasClass('active')){
	        	$(this).css('display','none');
	        	$(this).removeClass('active');
	        }
	    });
		//카테고리 선택 클릭시 카테고리 drop
	    /* $('.drop-category').click(function(){
	        $(this).children('ul').toggleClass('active');
	        $(this).children('img').toggleClass('active');
	    }); */
		//drop된 카테고리 클릭시 span에 입력
		/*  $('.drop-category ul li').click(function(){
	        var category = $(this).text();
	        $(this).parent('ul').siblings('span').text(category);
	    }); */
	}); */
	
</script>
</head>

<body>

    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-main-container navbar-wrapper">
        <!-- 헤더 -->
		<%-- <tiles:insertAttribute name="header" /> --%>
		<%@include file="/common/header.jsp" %>
		
		<div class="pcoded-main-container">
			<div class="pcoded-wrapper">
			<!-- 좌측메뉴바 -->
			<%-- <tiles:insertAttribute name="menubar"/> --%>
			<%@include file="/common/myPageMenuBar.jsp" %>
	
		<!-- Main-body start 본문 시작 -->
		<div class="main-body">
	    <div class="page-wrapper">
		        <!-- Page-body start -->
					<div class="page-body">
						<div class="my-inquiry">
							<div class="question-write">
								<div class="question-title">
							     	<h2>고객님의 문의사항을 해결해드리겠습니다.</h2>
							     	<input type="button" class="cancel-btn" value="취소">
						     	</div>
							    <div class="question-section" id="question-section">
							    	<input type="text" name="inquiryTitle" placeholder="제목을 입력하세요">
							    	<div class="drop-category">
							    		<input type="hidden" name="contact_us_type" value="">
							    		<select class="form-select form-select-lg mb-3" aria-label="문의유형선택">
										  <option selected>문의 유형 선택</option>
										  <option value="1" onclick="inquiryType('contactUs')">이용문의</option>
										  <option value="2" onclick="inquiryType('buy')">구매문의</option>
										  <option value="3" onclick="inquiryType('delivery')">배송문의</option>
										  <option value="4" onclick="inquiryType('etc')">기타문의</option>
										</select>
							    		<!--
							    		<span class="select-category">카테고리 선택</span>
							    		<ul class="list-group">
							    			<li class="list-group-item list-group-item-light"onclick="inquiryType('contactUs')">이용문의</li>
							    			<li class="list-group-item list-group-item-light"onclick="inquiryType('buy')">구매문의</li>
							    			<li class="list-group-item list-group-item-light"onclick="inquiryType('delivery')">배송문의</li>
							    			<li class="list-group-item list-group-item-light"onclick="inquiryType('etc')">기타</li>
							    		</ul> -->
							    	</div>
							    	<textarea name="inquiryContent" placeholder="질문을 입력하세요!"></textarea>
								    <div class="upload-file">
								    	<div class="upload-file-content">
									    	<input type="file" class="upload-file" id="contactUsImage" name="contactUsImage" accept="image/*">
								    	</div>
								    </div>
							    </div>
							    <input type="button" class="trans-btn" value="문의하기" >	
							</div>
							
							<div class="content-list">
						     	<table>
									<tr>
										<th width="200">제목</th>
										<th width="150">작성자</th>
										<th width="150">작성일</th>
									</tr>
									
								<c:if test="${empty inquiryList }">
									<tr>
										<td colspan="5" class="center">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${not empty inquiryList }">	
									<c:forEach var="inquiry" items="${inquiryList }">
									<tr>
										<td>
											<a href="myInquiryDetail.do?seq=${inquiry.seq }">
												${inquiry.title }</a>
										</td>
										<td>${inquiry.writer }</td>
										<td>${inquiry.regdate }</td>
									</tr>
									</c:forEach>
								</c:if>
								</table>
								<form action="getInquiryTypeList.do" method="post">
									<table class="border-none">
										<tr>
											<td class="input-group">
											    <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon">
											      <option selected>전체보기</option>
											      <option value="1">이용문의</option>
											      <option value="2">구매문의</option>
											      <option value="3">배송문의</option>
											      <option value="4">기타문의</option>
											    </select>
												<input type="button" class="btn btn-outline-secondary" value="검색">
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
	<%-- <tiles:insertAttribute name="footer" /> --%>
	<%@include file="/common/footer.jsp" %>
	<!-- footer 푸터 끝부분-->
    </div>
</div>
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