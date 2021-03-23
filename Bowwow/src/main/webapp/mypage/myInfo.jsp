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
  .featured__item__text { width: 150px; }
  
  .form-group .input_content .input_label{
  	font-size : 20px;
  }
  
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

 .side-content .my-area{
	padding : 30px;
	float: left;
}

 .side-content .my-area .side-profile-img{
	/* float: left; */
    background-size: cover;
    width: 140px;
    height: 140px;
    border-radius: 70px;
    margin: 0 auto 10px;
}

 .side-content .my-area .side-profile-img{
    border: 1px solid rgba(228, 228, 228, 0.5);
    border-radius: 10px;
}

 .side-content .my-area p{
    text-align: center;
    font-size: 20px;
    font-weight: 700;
    line-height: 29px;
}

 .mainMypage-content {
    width: calc( 100% - 280px);
    float: right;
    margin-bottom: 50px;
}

 .block-title a{
    line-height: 28px;
    color: #b0b0b0;
    font-size: 10px;
    font-weight: 300;
    /* display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center; */
    border: 0;
    background: none;
    float: right;
 }

.block-title h3{
	font-size: 1.5em;
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
        <div class="pcoded-main-container navbar-wrapper">
            
		<!-- 헤더 -->
		<%-- <tiles:insertAttribute name="header" /> --%>
		<!-- 좌측메뉴바 -->
		<%-- <tiles:insertAttribute name="menubar"/> --%>
                    
			<div class="pcoded-content">
				<div class="pcoded-inner-content">
					<!-- 페이지 제목 -->
					<h2>(pcoded-inner-content) 뫄뫄님의 페이지</h2>
					<!-- Main-body start 본문 시작 -->
					<div class="main-body">
					<div class="page-wrapper">
                                
						<!-- Page-body start -->
						<div class="page-body">
							<!-- <section class="featured spad">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="section-title">
												<h2>(section-title)뫄뫄님의 페이지</h2>
											</div>
											<br>
 										</div>
									</div>
								</div>
							</section> -->
								<!-- 회원정보수정 부분 -->
								<div class="form-group">
									<div class="input_content">
									<div class="side-content">
										<div class="my-area">
											<div class="side-profile-img">으아아</div>
											<p>닉네임</p>
										</div>
									</div>
									
									<div class="mainMypage-content">
									<div class="block-title">
										<h3>정보수정</h3>
										<a href="#">회원탈퇴</a>
									</div>
									<form>
									<%-- <input type="text" value="${id }" readonly> --%>
										
										<div class="input_label">아이디 
											<div>
												<input type="text" value="sunsetar" disabled>												
											</div>
										</div>
										
										<div class="input_label">비밀번호
											<div>
												<input type="password" placeholder="비밀번호 입력">
											</div>
											<p>비밀번호는 이만~~~~~큼 입력해야합니다.</p>
										</div>
													
										<div class="input_label">비밀번호 확인
											<div>
												<input type="password" placeholder="비밀번호 재입력">
											</div>
											<p>비밀번호를 또 입력해야합니다</p>
										</div>
													
										<div class="input_label">이름
											<div class="input_wrap">
												<input type="text" value="${name }">
											</div>
										</div>
													
										<div class="input_label">닉네임
											<div class="input_wrap">
												<input type="text" value="${nickname }">
											</div>	
										</div>
													
										<div class="input_label">이메일
											<div class="input_wrap">
												<input type="text" value="${email }">
											</div>
										</div>
										
										<div class="input_label">전화번호
											<div class="input_wrap">
												<input type="text" value="${phone }">
											</div>
										</div>
										
										<div class="input_label">주소
											
										</div>
										
										<div class="input_label">생일
											<div class="input_wrap">
												<input type="text" value="${birthday }">
											</div>
										</div>
										
										<div class="input_label">성별
											<div class="input_wrap">
												<input type="text" value="${gender }">
											</div>
										</div>
										
										<div class="input_label">
											<div class="input_wrap">
												<input type="file" value="${IMAGE_SOURCE }">		
											</div>
										</div>
										
										<div class="action_btn">
											<input type="button" value="정보수정">							    
										</div>																    
	
									</form>
									</div>
									</div>
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