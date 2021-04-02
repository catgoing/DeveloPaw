<%@page import="ga.bowwow.service.user.VO.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
	//임시 로그인처리
	int memberSerial = 1;
	String id = "z";
	UserAccount user= new UserAccount();
	user.setId(id);
	user.setMemberSerial(memberSerial);
	session.setAttribute("user", user);
%> --%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- 다음 주소찾기 API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	<!-- 개별css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/myinfo.css">
<style>

</style>
<script>

(function(name){
	console.log('my name is '+ name);
})('??')
 function goModify(form){
	 var idCheck = form.id.value;
	 var emailCheck = form.email.value;
	 var phoneCheck = form.phone.value;

	//아이디 검증=_=
   	if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/.test(idCheck)){
   		console.log(idCheck);
   		alert("아이디 안에 한글은 포함될 수 없습니다.");
   	}
     //email 검증=_=
	 if(!/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test(emailCheck)) {
		console.log(emailCheck);
		alert("이메일 형식을 지켜주세요.");
	 }
	//휴대폰번호 검증=_=
   	 var cellPhoneRule = /^\d{3}-\d{3,4}-\d{4}$/;
	if(!/01[01689]-[1-9]{1}[0-9]{2,3}-[0-9]{4}$/.test(phoneCheck) ||
   		 !/01[01689][1-9]{1}[0-9]{2,3}[0-9]{4}$/.test(phoneCheck)){
		console.log(phoneCheck);
		alert("전화번호 형식을 지켜주세요.");
	}

 }

 function sample4_execDaumPostcode() {
     new daum.Postcode({
         oncomplete: function(data) {
             // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

             // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
             var roadAddr = data.roadAddress; // 도로명 주소 변수
             var extraRoadAddr = ''; // 참고 항목 변수

             // 법정동명이 있을 경우 추가한다. (법정리는 제외)
             // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
             if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                 extraRoadAddr += data.bname;
             }
             // 건물명이 있고, 공동주택일 경우 추가한다.
             if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
             }
             // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
             if(extraRoadAddr !== ''){
                 extraRoadAddr = ' (' + extraRoadAddr + ')';
             }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
             document.getElementById('sample4_postcode').value = data.zonecode;
             document.getElementById("sample4_roadAddress").value = roadAddr;
             document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

             // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
             if(roadAddr !== ''){
                 document.getElementById("sample4_extraAddress").value = extraRoadAddr;
             } else {
                 document.getElementById("sample4_extraAddress").value = '';
             }

             var guideTextBox = document.getElementById("guide");
             // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
             if(data.autoRoadAddress) {
                 var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                 guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                 guideTextBox.style.display = 'block';

             } else if(data.autoJibunAddress) {
                 var expJibunAddr = data.autoJibunAddress;
                 guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                 guideTextBox.style.display = 'block';
             } else {
                 guideTextBox.innerHTML = '';
                 guideTextBox.style.display = 'none';
             }
         }
     }).open();
 }


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
			<nav class="navbar header-navbar pcoded-header">
				<div class="navbar-wrapper" style="color: red;">
					<div class="navbar-logo">
						<a class="mobile-menu waves-effect waves-light"
							id="mobile-collapse" href="#!"> <i class="ti-menu"></i>
						</a>
						<div class="mobile-search waves-effect waves-light">
							<div class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-prepend search-close"><i
											class="ti-close input-group-text"></i></span> <input type="text"
											class="form-control" placeholder="Enter Keyword"> <span
											class="input-group-append search-btn"><i
											class="ti-search input-group-text"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="storeMain.html"
							style="text-align: center; font-weight: bold; font-size: 30px; margin-top: 7px;">BOW-WOW</a>

						<a class="mobile-options waves-effect waves-light"> <i class="ti-more"></i>
						</a>
					</div>
					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li><a href="index.html"> 커뮤니티 </a></li>
							<li><a href="storeMain.do"> 스토어 </a></li>
						</ul>
						<ul class="nav-right">
							<li class="form-group form-primary"><input type="text"
								name="footer-email" style="margin-top: 12px; width: 250px;"
								class="form-control" placeholder="검색창"> <span
								class="form-bar"></span></li>
							<li class="header-notification"><a href="#!"
								class="waves-effect waves-light"> <i class="ti-bell"></i> <span
									class="badge bg-c-red"></span>
							</a>
								<ul class="show-notification">
									<li>
										<h6>Notifications</h6> <label class="label label-danger">New</label>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-2.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">John Doe</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Joseph William</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Sara Soudein</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="header-notification"><a href="#!"
								class="waves-effect waves-light"> <i
									class="fa fa-shopping-cart" aria-hidden="true"></i> <span
									class="badge bg-c-red"></span>
							</a>
								<ul class="show-notification">
									<li>
										<h6>Notifications</h6> <label class="label label-danger">New</label>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-2.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">John Doe</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Joseph William</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="../resources/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body">
												<h5 class="notification-user">Sara Soudein</h5>
												<p class="notification-msg">Lorem ipsum dolor sit amet,
													consectetuer elit.</p>
												<span class="notification-time">30 minutes ago</span>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <img
									src="../resources/images/avatar-4.jpg" class="img-radius"
									alt="User-Profile-Image"> <i class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">
									<li class="waves-effect waves-light"><a href="#!">마이홈
									</a></li>
									<li class="waves-effect waves-light"><a
										href="user-profile.html">프로필 </a></li>
									<li class="waves-effect waves-light"><a
										href="email-inbox.html">반려동물 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-lock-screen.html">게시글</a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">포인트 내역 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">나의 쇼핑 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">로그아웃 </a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<!-- 좌측 메뉴바 시작 -->
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<%@include file="/common/myPageMenuBar.jsp" %>

<!-- 좌측 메뉴바 끝 -->

				<!-- Main-body start 본문 시작 -->
					<div class="main-body">
					<div class="page-wrapper">

						<!-- Page-body start -->
						<div class="page-body">
						<div class="myPageInfo-header">
							<h2> ${user.id }님의 페이지</h2>
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
										<a href="withdrawl">회원탈퇴</a>
									</div>
									<form>
									<%-- <input type="text" value="${id }" readonly> --%>

										<div class="input-label">아이디
											<div class="input-wrap">
												<input type="text" name="id" value="${user.id }" disabled>
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
												<input type="text" name="name">
												<%-- <input type="text" name="name" value="${user.name }"> --%>
											</div>
											<p></p>
										</div>

										<div class="input-label">닉네임
											<div class="input-wrap">
												<input type="text" name="nickname">
												<%-- <input type="text" name="nickname" value="${user.nickname }"> --%>
											</div>
											<p></p>
										</div>

										<div class="input-label">이메일
											<div class="input-wrap">
												<%-- <input type="text" name="email" value="${user.email }"> --%>
											</div>
											<p></p>
										</div>

										<div class="input-label">전화번호
											<div class="input-wrap">
												<input type="text" name="phone">
												<%-- <input type="text" name="phone" value="${user.phone }"> --%>
											</div>
											<p></p>
										</div>

										<div class="input-label">주소
											<div>
												<input type="text" id="sample4_postcode" placeholder="우편번호">
												<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
												<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
												<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
												<span id="guide" style="color:#999;display:none"></span>
												<input type="text" id="sample4_detailAddress" placeholder="상세주소">
												<input type="text" id="sample4_extraAddress" placeholder="참고항목">
											</div>
											<p></p>
										</div>

										<div class="input-label">생일
											<div class="input-wrap">
											<input type="text" name="birthday">
											<%-- <input type="text" name="birthday" value='${user.birthday }'> --%>
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
											<input type="button" value="정보수정" onclick="javascript:goModify(this.form);">
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

	<!-- footer 푸터 시작부분-->
	<%@include file="/common/footer.jsp" %>
	<!-- footer 푸터 끝부분-->

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
