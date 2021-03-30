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
<style>
  .form-group .input-content .input-label{
  	font-size : 20px;
  }
  .myPageInfo-header {
  	text-align: center;
  }
  .myPageInfo-wrapper {
	display: flex;
	justify-content: center;
  }

  .myPageInfo-header {
  	text-align: center;
  }
  .myPageInfo-wrapper {
	display: flex;
	justify-content: center;
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

.input-wrap>.radio-gender>#genderF, .input-wrap>.radio-gender>#genderM{
	width: 15px;
	height: 10px;

}
.side-content {
	position: relative;
	display: inline-block;
	float: left;
}
 .side-content .my-area {
    border-radius: 70px;
    margin: 30px;
    border: 1px solid rgba(228, 228, 228, 0.5);
    border-radius: 10px;

 }
 .side-content .my-area .side-profile-img{
	/* float: left; */
    background-size: cover;
    width: 140px;
    height: 140px;
    border-radius: 70px;
    margin: 0 auto 10px;
}

  .side-content .my-area p{
    text-align: center;
    font-size: 20px;
    font-weight: 700;
    line-height: 29px;
}

 .mainMypage-content {
 	display: inline-block;
    width: calc( 100% - 280px);
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
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
		<!-- 헤더 -->
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
										<a href="withdrawl.do">회원탈퇴</a>
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
