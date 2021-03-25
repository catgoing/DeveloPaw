<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>개발바닥</title>
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

	function inquiryType(val){
		console.log(val);
		$('input[name="contact_us_type"]').val(val);
	}
	$(document).ready(function(){
		$('.contact-btn').click(function(){
			console.log($(this));			
			console.log("ajax전달");		
		});
		
		$('.cancel-btn').click(function(){
			console.log($(this));
			$('input[type="text"]').val('');
			$('#textbox').val('');
		});
	});
	
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
			<!-- 좌측 메뉴바 시작 -->
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<nav class="pcoded-navbar">
			<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
				<div class="pcoded-inner-navbar main-menu">
			    <div class="p-15 p-b-0">
			         <form class="form-material">
						<!-- 이부분 form을 없애면 좌측메뉴 시작부분이 위쪽으로 조금 올라감 -->
			         </form>
			     </div>
			  
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPageMain.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
			                 <span class="pcoded-mtext">마이 홈</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			          <!-- 회원번호(memberSerial)을 이용해서 내 정보 출력 -->
			             <a href="myInfo.do" class="waves-effect waves-dark">
			             <%-- <a href="myInfo.do?memberSerial=${memberSerial }" class="waves-effect waves-dark"> --%>
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">프로필</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPetInfoList.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">반려동물</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPostList.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">게시글</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPoint.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">적립금(?)</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myInquiry.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">1:1문의</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
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
						<div class="my-inquiry">
							<div class="question-write">
								<div class="question-title">
							     	<!-- <h2>고객님의 문의사항을 해결해드리겠습니다.</h2> -->
							     	<!-- <input type="button" class="cancel-btn" value="취소"> -->
						     	</div>
						     	
						     	<div class="card-block accordion-block">
                                   <div id="accordion" role="tablist" aria-multiselectable="true">
                                       <div class="accordion-panel">
                                           <div class="accordion-heading" role="tab" id="headingOne">
                                               <h2 class="card-title accordion-title">고객님의 문의사항을 해결해드리겠습니다.</h2>
                                                   <a id="tt" class="accordion-msg waves-effect waves-dark" data-toggle="collapse"
                                                   data-parent="#accordion" href="#collapseOne"
                                                   aria-expanded="true" aria-controls="collapseOne"></a>
										</div>
                                       <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                           <div class="accordion-content accordion-desc">
                                               <div class="form-group row" id="question-section">
							    	<input type="text" name="inquiryTitle" placeholder="제목을 입력하세요">
							    	<div class="col-sm-10">
							    		<input type="hidden" name="contact_us_type" value="">
							    		<select class="form-control" aria-label="문의유형선택">
										  <option selected>문의 유형 선택</option>
										  <option value="1" onclick="inquiryType('contactUs')">이용문의</option>
										  <option value="2" onclick="inquiryType('buy')">구매문의</option>
										  <option value="3" onclick="inquiryType('delivery')">배송문의</option>
										  <option value="4" onclick="inquiryType('etc')">기타문의</option>
										</select>
							    	</div>
							    	<textarea id="textbox" name="inquiryContent" placeholder="질문을 입력하세요!"></textarea>
								    <div class="upload-file">
								    	<div class="upload-file-content">
									    	<input type="file" class="form-control" id="contactUsImage" name="contactUsImage" accept="image/*">
								    	</div>
								    </div>
							    </div>
                                           </div>
                                           <input type="button" class="contact-btn" value="문의하기" >	
							    <input type="button" class="cancel-btn" value="취소">
                                       </div>
                                   </div>
                               </div>
                           </div>
						     	
							    <!-- <input type="button" class="trans-btn" value="문의하기" >	
							    <input type="button" class="cancel-btn" value="취소"> -->
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
											    <select class="form-control" id="inputGroupSelect04" aria-label="Example select with button addon">
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