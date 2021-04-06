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
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- Meta -->
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

<!-- Dohyeon 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- Favicon icon -->
<link rel="icon" href="/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet"
	href="/resources/pages/waves/css/waves.min.css" type="text/css"
	media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet"
	href="/resources/pages/waves/css/waves.min.css" type="text/css"
	media="all">
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
<link rel="stylesheet" type="text/css"
	href="/resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/test.css">

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
  .content-list {
   display : block;
   width: 80%;
    margin-bottom: 50px;
 } 
 

</style>
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

				<!-- 본문 시작 -->
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<section class="featured spad">
											<div class="container">
												<div class="row">
													<div class="col-lg-12">
														<div class="section-title">
															<h2>게시물 출력</h2>
														</div>
														<br>
													</div>
												</div>
												<div class="content-list">
											     	<table>
														<tr>
															<th width="200">제목</th>
															<th width="150">작성자</th>
															<th width="150">작성일</th>
														</tr>
													<c:if test="${empty PostList }">
														<tr>
															<td colspan="5" class="center">데이터가 없습니다.</td>
														</tr>
													</c:if>
													<c:if test="${not empty PostList }">	
														<c:forEach var="post" items="${PostList }">
														<tr>
															<td>
																<a href="myInquiryDetail.jsp?seq=${post.seq }">
																	${post.title }</a>
															</td>
															<td>${post.writer }</td>
															<td>${post.regdate }</td>
														</tr>
														</c:forEach>
													</c:if>
													</table>
													<form action="/getPostList" method="post">
													<table class="border-none">
														<tr>
															<td class="input-group">
															    <select class="form-control" id="inputGroupSelect04" aria-label="Example select with button addon">
															      <option selected>전체보기</option>
															      <option value="1">펫 일기</option>
															      <option value="2">노하우</option>
															      <option value="3">중고마켓</option>
															      <option value="4">반려동물찾기</option>
															    </select>
																<input type="button" class="btn btn-outline-secondary" value="검색">
															</td>
														</tr>
													</table>
													</form>
											     </div>
											</div>
										</section>
									</div>

								</div>
								<!-- Page-body end -->
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer 푸터 시작부분-->
			<%@include file="/common/footer.jsp" %>
			<!-- footer 푸터 끝부분-->
		</div>
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
