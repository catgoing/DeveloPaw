<%@page import="ga.bowwow.service.user.VO.UserDTO"%>
<%@page import="ga.bowwow.service.user.VO.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int member_serial = 999;
	//String id = 
	//String nickname="황소";
	UserDTO user = new UserDTO();
	user.setMember_serial(member_serial);
	session.setAttribute("userDTO", user);
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
  .myPageInfo-header{ text-align : center;}
  .container h3{ text-align: center;}
  .div-center { margin: 0 auto;}
  .text-center {
  	text-align : center;
  	margin: 0 auto;
  	color : #ff6347;
  }
 .petImg-container{
  	margin: 0 auto;
  }
</style>
<script>
/* (function(member_serial) {
	이거어떻게하지??
}('${sessoionScope.userDTO.member_serial}'); */
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
						<div class="myPageInfo-header">
							<h2> ${sessionScope.userDTO.nickname} 님의 페이지</h2>
						</div>

						<div class="mypage_main_content">

							<div class="container mypage_main_content mypointlist">
								<h3>누적 적립금</h3>
								<div class="container point">
									
									<c:if test="${empty myHomePointList }">
										<div >
											<h5 class="text-center">적립된 포인트가 없습니다.</h5>
										</div>
									</c:if>
									<table class="table table-sm">
									<c:if test="${not empty myHomePointList }">	
										<h5 class="text-center">상품 구매 후 적립된 포인트 내역을 보여드립니다.</h5>
										<tr>
											<th width="200">추가일</th>
											<th width="150">추가포인트</th>
											<th width="150">현재 총 포인트</th>
										</tr>
										<c:forEach var="point" items="${myHomePointList }">
										<tr>
											<td>${point.order_date }</td>
											<td>${point.order_point }</td>
											<td>${point.point }</td>
										</tr>
										</c:forEach>
									</c:if>
									</table>
									</div>
								</div>
							</div>
							<br>
							<hr>
							<div class="container petlist">
							  	<h3>반려동물 리스트</h3>
								<div class="row">
							  	<c:if test="${not empty myHomepetList }">
                       			<c:forEach var="petList" items="${myHomepetList }">
								    <div class="col-md-4" style="margin-bottom : 40px;">
		                                <div class="list-inner">
								      		<h5 class="text-center">${petList.pet_name }</h5>
									    	<div class="card petImg-container" style="width: 250px; height: 200px;">
												<img src="${petList.image_source_oriname }" class="card-img-top" alt="..." style="width: 250px; height: 200px;">
											</div>
								   		</div>
								    </div>
							    </c:forEach>
							    <div class="div-center">
							    	<h5 class="text-center">현재 페이지에서는 6마리까지 보여집니다.</h5>
							    </div>
							    </c:if>
							    <c:if test="${empty myHomepetList }">
							    	<div class="col-md-6 div-center">
		                               	<h3 class="text-center">등록된 반려동물이 없습니다.</h3>
	                            	</div>
							    </c:if>
							  </div>
							</div>
							<br>
						</div>
					</div>
					<!-- Page-body end -->
					</div>
					<div id="styleSelector"> </div>
	               	</div>
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
