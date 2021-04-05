<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
    <link rel="icon" href="/main/resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="/main/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="/main/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="/main/resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="/main/resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/main/resources/css/test.css">
    <!-- 개별CSS -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/myinfo.css">
<style>
  .featured__item__text { width: 150px; }
</style>
</head>

<body>    
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
							<h2> 뫄뫄님의 페이지</h2>
						</div>
<<<<<<< HEAD
						
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
						<%@include file="/common/footer.jsp" %>
						<!-- footer 푸터 끝부분-->
								</div>
							</div>
=======
						<div class="container reason_one">
							<
						</div>						
						<div class="container reason_two">
						
						</div>
							</div>
							</div>
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
						</div>
					</div>
				</div>
			</div>
		</div>
<<<<<<< HEAD
=======
		<!-- footer 푸터 시작부분-->
		<%@include file="/common/footer.jsp" %>
		<!-- footer 푸터 끝부분-->
>>>>>>> parent of d5ef625 (문의 추가, 반려동물crud수정(file))
	</div>
</div>

    <!-- Required Jquery -->
    <script type="text/javascript" src="/main/resources/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="/main/resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="/main/resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="/main/resources/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="/main/resources/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="/main/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="/main/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="/main/resources/js/pcoded.min.js"></script>
    <script src="/main/resources/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="/main/resources/js/script.js "></script>
</body>
</html>