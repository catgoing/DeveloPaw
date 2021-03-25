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
						<div class="myPageInfo-header">
							<h2> 뫄뫄님의 페이지</h2>
						</div>
						<div class="myPageInfo-wrapper">
							
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
									<div class="input-content">
									<div class="side-content">
										<div class="my-area">
											<div class="side-profile-img">프로필사진영역</div>
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
										
										<div class="input-label">아이디 
											<div class="input-wrap">
												<input type="text" name="id" value="sunsetar" disabled>
											</div>
											<label class="col-sm-2 col-form-label">아이디</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control form-control-round" placeholder=".form-control-round">
                                            </div>
											<p></p>												
										</div>
										
										<div class="input-label">비밀번호
											<div class="input-wrap">
												<input type="password" name="password" placeholder="비밀번호 입력">
											</div>
											<p>비밀번호는 이만~~~~~큼 입력해야합니다.</p>
										</div>
													
										<div class="input-label">비밀번호 확인
											<div class="input-wrap">
												<input type="password" placeholder="비밀번호 재입력">
											</div>
											<p>비밀번호를 또 입력해야합니다 -- 비밀번호 입력 안하고 수정해도 수정됨?</p>
										</div>
													
										<div class="input-label">이름
											<div class="input-wrap">
												<input type="text" name="name" value="${name }">
											</div>
											<p></p>
										</div>
													
										<div class="input-label">닉네임
											<div class="input-wrap">
												<input type="text" name="nickname" value="${nickname }">
											</div>
											<p></p>
										</div>
													
										<div class="input-label">이메일
											<div class="input-wrap">
												<input type="text" name="email" value="${email }">
											</div>
											<p></p>
										</div>
										
										<div class="input-label">전화번호
											<div class="input-wrap">
												<input type="text" name="phone" value="${phone }">
											</div>
											<p></p>
										</div>
										
										<div class="input-label">주소
											<div></div>
											<p></p>
										</div>
										
										<div class="input-label">생일
											<div class="input-wrap">
												<%-- <input type="text" name="birthday" value="${birthday }">
												<input type="text" name="birthday" value="${birthday }">
												<input type="text" name="birthday" value="${birthday }"> --%>
											</div>
											<p></p>
										</div>
										
										<div class="input-label">성별
											<div class="input-wrap">
												<span class="radio-gender">
													<input type="radio" name="gender" value="female" id="genderF">
													<label for="genderF">여자</label>
												</span>
												<span class="radio-gender">
       												<input type="radio" name="gender" value="male" id="genderM">
       												<label for="genderM">남자</label>
												</span>
											</div>
											<p>설정한 정보로 checked하기??</p>
										</div>
										
										<div class="input-label">
											<div class="input-wrap">
												<div class="my-profile">
													<label for="uploadImage" id="imageview">
														<img src="" class="thumb">
													</label>
													<input type="file" id="uploadImage" accept="image/gif, image/jpeg, image/jpg, image/png" name="uploadImage" onchange="readURL(this);">		
												</div>
											</div>
											<p></p>
										</div>
										
										<div class="action_btn">
											<input type="button" value="정보수정test" onclick="javascript:goDetail();">							    
										</div>																    
	
									</form>
									</div>
									</div>
								</div>
										
							</div>
						</div>
					</div>
				</div>
			</div>
							
					<!-- 레이어팝업테스트 -->
							
					<div id="mask"></div>
					
					<div id="layerbox" class="layerpop" style="width: 300px; height: 300px;">
						<div class="layerbox-content">
							<article class="layerpop_area">
								<!-- ajax로 입력한 정보 보내서 수정 후 완료처리-_-;; -->팝업 테스트
								<form>
									<input type="button" value="정보수정 완료~" onclick="javascript:closePopup();" class="layerpop_close">
								</form>
							</article>
						</div>
					</div>
					
					
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
	<%@include file="/common/footer.jsp" %>
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