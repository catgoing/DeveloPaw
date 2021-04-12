<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
.carousel-inner>.carousel-item>a img {  width: 300px; height: 400px; 
}


.featured__item__text {
	width: 150px;
}
</style>
</head>
<body>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"></script>
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
   <script> $('.carousel').carousel({ interval: 2000  }) </script>

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<%@include file="/common/header.jsp"%>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<%@include file="/common/storeMenuBar.jsp"%>
					<div class="pcoded-content">
						<div class="pcoded-inner-content">
                     		<!-- body 본문 영역 -->
							<div id="demo" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<!-- 슬라이드 쇼 -->
									<div class="carousel-item active">
										<a href="/account/signup"><img class="d-block w-100" src="/resources/images/storeBanner1.jpg" alt="Second slide"></a>
									</div>
									<div class="carousel-item">
										<a href="/account/signup"><img class="d-block w-100" src="/resources/images/storeBanner2.jpg" alt="Third slide"></a>
									</div>
									<!-- / 슬라이드 쇼 끝 -->
									<!-- 왼쪽 오른쪽 화살표 버튼 -->
									<a class="carousel-control-prev" href="#demo" data-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<!-- <span>Previous</span> -->
									</a> <a class="carousel-control-next" href="#demo"
										data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<!-- <span>Next</span> -->
									</a>
									<!-- / 화살표 버튼 끝 -->
									<!-- 인디케이터 -->
									<ul class="carousel-indicators">
										<li data-target="#demo" data-slide-to="0" class="active"></li>
										<!--0번부터시작-->
										<li data-target="#demo" data-slide-to="1"></li>
									</ul>
									<!-- 인디케이터 끝 -->
								</div>
							</div>
							<section class="shopping-cart spad" style="margin : 20px;">
								<div class="container">
									<div class="row">
									</div>
								</div>
							</section>
						</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@include file="/common/storeFoot.jsp"%>
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
