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
<style>
  .featured__item__text { width: 150px; }
  
  .input-content .input-wrap {
	margin-bottom: 15px;
	position: relative;
}
 .input-content .input-wrap:last-of-type {
	margin-bottom: 0;
}

 .input-content .input-wrap input {
	width: 100%;
	height: 50px;
	border-radius: 10px;
	color: #48484d;
	font-size: 15px;
	font-weight: 700;
	padding: 14px 20px;
	border: 1px solid #e4e4e4;
	padding-right: 50px;
}

</style>
</head>

<body>
    
    
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-main-container navbar-wrapper">
            
		<!-- 헤더 -->
		<%-- <tiles:insertAttribute name="header" /> --%>
		<!-- 좌측메뉴바 -->
		<%-- <tiles:insertAttribute name="menubar"/> --%>
                    
			<div class="pcoded-content">
				<div class="pcoded-inner-content">
					<!-- Main-body start 본문 시작 -->
					<div class="main-body">
						<div class="page-wrapper">
	                                
							<!-- Page-body start -->
							<div class="page-body">
											
								<!-- 여기서 회원정보 수정하겠습니다~~~ -->
								<div class="content-list">
						     	<table>
									<tr>
										<th width="200">추가일</th>
										<th width="150">추가포인트</th>
										<th width="150">누적포인트</th>
									</tr>
									
								<c:if test="${empty pointList }">
									<tr>
										<td colspan="5" class="center">데이터가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${not empty pointList }">	
									<c:forEach var="point" items="${pointList }">
									<tr>
										<td>${point.addDate }</td>
										<td>${point.addPoint }</td>
										<td>${point.totalPoint }</td>
									</tr>
									</c:forEach>
								</c:if>
								</table>
						     </div>
											
							</div>
								<!-- Page-body end -->
						</div>
						<div id="styleSelector"> </div>
					</div>
					<!-- Main-body start 본문 끝 -->
				</div>
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
	<!-- footer 푸터 끝부분-->

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