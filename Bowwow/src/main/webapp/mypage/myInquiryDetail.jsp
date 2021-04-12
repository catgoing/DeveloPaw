<%@page import="ga.bowwow.service.user.VO.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%-- <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="/resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/test.css">
<style>
/*  table, th, td{
 	border : 1px solid black;
 } */
 .inquiry-detail{
 	width: 80%;
 	margin:0 auto;
 }
 .inquiry_th {
	width : 15%;
 }
 .inquiry_td {
 	widgh : 30%;
 }
 pre{
	overflow: auto;
	white-space: pre-wrap;
	word-break: break-all;
}
</style>
<script>
function goback(member_serial){
	 var frm =document.goBackUserInquiryList;  //폼 name
	  frm.member_serial.value = member_serial;  //POST방식으로 넘기고 싶은 값
	  frm.action="/getUserInquiryList";  //이동할 페이지
	  frm.method="post";  //POST방식
	  frm.submit()
}
</script>
</head>

<body>
    
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            
		<!-- 헤더 -->
		<%-- <tiles:insertAttribute name="header" /> --%>
		<%@include file="/common/header.jsp" %>
		
		<div class="pcoded-main-container">
			<div class="pcoded-wrapper">
				<!-- 좌측메뉴바 -->
				<%@include file="/common/myPageMenuBar.jsp" %>

<div class="pcoded-content">
	<div class="pcoded-inner-content">
		<div class="main-body">
	    	<div class="page-wrapper">
				<!-- Main-body start 본문 시작 -->
				<%-- <tiles:insertAttribute name="body" /> --%>
				<div class="page-body">
					<div class="inquiry-detail">
						<div class="question-title">
					    	<h3 style="text-align:center;">문의목록</h3>
				     	</div>
						<div class="table-container">
							<table class="table table-sm">
								<tr>
									<th class="inquiry_th">제목</th>
									<td>${uiqDetail.inquiry_title }</td>
									<th class="inquiry_th">작성일시</th>
									<td>${uiqDetail.inquiry_writedate }</td>
								</tr>
								<tr>							
									<th class="inquiry_th">문의내용</th>
									<td colspan="3">
									<pre>${uiqDetail.inquiry_content }</pre>
									</td>
								</tr>
								<c:if test="${empty targetProduct }">
								</c:if>
								<c:if test="${not empty targetProduct}">
								<tr>
									<th>문의상품</th>
									<td colspan="3"><a href="detail?p_id=${targetProduct.p_id }">${targetProduct.p_name}</a><br>
									<fmt:formatNumber value="${targetProduct.price}" pattern="#,###"/> 원</td>
								</tr>
								</c:if>		
							</table>
							<hr>
							<c:if test="${empty inquiryAnswer }">
							</c:if>
							<c:if test="${not empty inquiryAnswer }">
							<table class="table table-sm">
								<tr>
									<th class="inquiry_th">관리자 답변</th>
									<td>
									<pre><c:out value="${inquiryAnswer.inquiry_re_content} " /></pre>
									</td>
								</tr>
								<tr>
									<th class="inquiry_th">등록일</th>
									<td>${inquiryAnswer.inquiry_re_date} </td>
								</tr>
							</table>
							</c:if>
						</div>  	
						<form name="goBackUserInquiryList">
						<div class="btn-container">
							<input type="hidden" name="member_serial" value="${sessionScope.userDTO.member_serial }">
							<button type="button" class="btn btn-outline-secondary" onclick="javascript:goback(${sessionScope.userDTO.member_serial})">돌아가기</button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div></div></div>
	
	<!-- footer 푸터 시작부분-->
	<%-- <tiles:insertAttribute name="footer" /> --%>
	<%@include file="/common/footer.jsp" %>
	<!-- footer 푸터 끝부분-->
</div></div>

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