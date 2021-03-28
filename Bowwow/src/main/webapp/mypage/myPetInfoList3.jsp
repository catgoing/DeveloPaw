<%@page import="ga.bowwow.service.user.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	//임시 로그인처리
	String memberSerial = "1";
	String id = "z";
	UserAccount user= new UserAccount();
	user.setId(id);
	user.setMemberSerial(memberSerial);
	session.setAttribute("user", user);
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
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
.insert-title{
	width : 15%;
}   
/* 반려동물 정보 출력영역 설정*/
.col-md-4 .list-inner{
	text-align : center;
	margin: 10px 0px 0px 0px; 
}
.action-button{
	display : flex;
	justify-content: center;
}
.action-button-inner{
	margin : 20px 0 0 0 ;
}
</style>
<script>
$().ready(function(){
	$("#newPetInsert").on("click", function(frm){
	var $base = $("#insertPetInfo");
	var frm = $base.serializeArray();
	console.log(frm);
	
	console.log("구분");
	var newPet = new FormData($base[0]);
	console.log(newPet);
	
	/* $.ajax('insertPetInfo',{
		enctype: 'multipart/form-data',
		processData: false,
		type : "POST",
		data : newPet,
		async : false,
		success : function(result){
			console.log(result);
 			if(result > 0){
			}
				alert("반려동물 정보를 등록했습니다.");
		}, error: function(){
			alert("등록 실패ㅜㅜ");
		}
	 }); */
   });
}); 
 function modiPetInfo(frm) {
	/* ajax update 처리 */
	var pSerial = frm.pet_serial.value;
	/* var dataString = $("form[name=updatePetInfo]").serialize(); */
	console.log(pSerial);
	/* console.log(dataString);
	
	fetch("updatePetInfo",{
		method : "post",
		header :{
			"Content-Type": "application/json"
		},
		body : dataString
	}); */
	
	/* $.ajax({
		url : "updatePetInfo",
		type : "fetch",
		data : dataString ,
		async : false,
		success : function(result){
			console.log(result);
			if(result > 0){
				alert("정보를 수정하였습니다.");				
			}
		}, error : function(){
			alert("정보수정실패!");
		}
	}); */
 }
 
/*  $().ready(function(){
	 $("#deletePetData").on("click", function(){ */
 function deletePetInfo(frm){
	 console.log("deletePetInfo 실행");
	 var mSerial = frm.pet-detail-form.detail_member_serial.value;
	 var pSerial = frm.pet-detail-form.detail_pet_serial.value;

	 //var mSerial = $("#pet-detail-form #detail_member_serial").val();
	 //var pSerial = $("#pet-detail-form #detail_pet_serial").val();
	 console.log(mSerial);
	 console.log(pSerial);
	 
	 $.ajax({
		url : "/ajaxDeletePetInfo", 
		type : "get",
		data : { 'pet_serial' : pSerial },
		async : "false",
		dataType : "text",
		success : function(result){
			console.log(result);
			/* result = result * 1; */
			/* if(result > 0){
				alert(result);	
				console.log(result);				
			} */
		}, error : function(){
			alert("삭제를 실패했습니다.");
			location.href="getPetInfoList3?member_serial=" + mSerial;
		}
	});
 } 
/* });
 }); */


function getPetInfo(frm){	
		console.log("getPetInfo 시작");
		var mSerial = frm.member_serial.value;
		console.log(mSerial);
		
		var pSerial = frm.pet_serial.value;
		console.log(pSerial);
		
		var serialData =  { 'pet_serial' : pSerial }
		console.log(serialData);
		
		$.ajax("/ajaxGetPetInfo", { 
			type : "get",
			data : serialData ,
			async : "false",
			dataType: "json",
			success : function(petDetail){
				console.log("성공");
				console.log(petDetail);
				
				console.log(petDetail.tnr);
				console.log(petDetail.animal_type);
				console.log(petDetail.pet_etc);
				if(petDetail.pet_birth === undefined || petDetail.pet_birth === null){
					petDetail.pet_birth = "-/-/-";
				}
				
				$("#detail-petname").html(petDetail.pet_name);
				$("#detail_gender").html(petDetail.pet_gender);
				$("#detail_pet_serial").val(petDetail.pet_serial); 
				$("#detail_variety").html(petDetail.pet_variety);
				$("#detail_birth").html(petDetail.pet_birth);
				$("#detail_age").html(petDetail.pet_age);
				$("#detail_size").html(petDetail.pet_size);
				$("#detail_weight").html(petDetail.pet_weight + " kg");
				$("#detail_neck").html(petDetail.neck_length + " cm");
				$("#detail_back").html(petDetail.back_length + " cm");
				$("#detail_chest").html(petDetail.chest_length + " cm");
				$("#detail_etc").html(petDetail.pet_etc);
				
				$("#detail_member_serial").val(mSerial);
				
				$("#petDetail").modal('show'); //모달창 오픈
				
			}, error : function(){
				console.log("에러발생");
			}
		});
}

 function transferType(){
	 console.log("test");	 
	 var type = $("input[type='radio'][name='animal_type']:checked").val();
	 $("#animal_type").val(type);
	 console.log($("#animal_type").val());	 
 }
 
 function inputMemberSerial(){
	 var mSerial = ${user.memberSerial };
	 console.log(mSerial);
	
	 $("#insertPetInfo #member_serial").val(mSerial);
 }
 
$(function(){
	$(".numberonly").keyup(function(){
		$(this).val($(this).val().replace(/[^0-9]/gi,"") );
	});
});
 
 
function clearInput(){
	/* 정보입력하다가 취소하면 입력했던 것 지우기 */
	var inputText = $(".pet-form input[type='text']");
	console.log(inputText);
	for(var i = 0; i < inputText.length; i++){
		inputText[i].value = "";
	}
	var inputSelect = $(".pet-form input[type='select']");
	console.log(inputSelect);
	for(var i = 0; i < inputSelect.length; i++){
		inputSelect[i].checked = false;
	}
	var typeCheck = $(".pet-form input[type='radio']");
	console.log(typeCheck);
	for(var i = 0; i < typeCheck.length; i++){
		typeCheck[i].checked = false;
	}
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

						<a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
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
			             <a href="myPageMain.jsp" class="waves-effect waves-dark">
			                 <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
			                 <span class="pcoded-mtext">마이 홈</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			          <!-- 회원번호(memberSerial)을 이용해서 내 정보 출력 -->
			             <a href="myInfo.jsp" class="waves-effect waves-dark">
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
			             <a href="getPetInfoList3?member_serial=${user.memberSerial }" class="waves-effect waves-dark">
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
			             <a href="myPostList.jsp" class="waves-effect waves-dark">
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
			             <a href="myPoint.jsp" class="waves-effect waves-dark">
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
			             <a href="myInquiry2.jsp" class="waves-effect waves-dark">
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
				<!-- 본문 시작 -->  
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
							<!-- Main-body start 본문 시작 -->
							<div class="main-body">
							<div class="page-wrapper">
		                        <!-- Page-body start -->
								<div class="page-body">
									<div class="myPageInfo-header">
										<h2> ${user_name }님의 페이지</h2>
									</div>
                                        <div class="row">
                                        <c:if test="${not empty petList }">
                                        <c:forEach var="petList" items="${petList }">
	                                        <div class="col-md-4">
		                                        <div class="list-inner">
			                                        <div class="pet-img"><img src="../resources/images/avatar-2.jpg" alt="이미지" class="img-circle img-thumbnail"></div>
			                                        <div class="pet-name">${petList.pet_name }</div>
			                                        <div class="pet-detail">
			                                        <form name="thisform">
				                                        <input type="hidden" id="pet_serial" name="thispetserial" value="${petList.pet_serial }">
				                                        <input type="hidden" id="member_serial" name="thismemberserial" value="${user.memberSerial }">
				                                        <input type="button" value="상세보기" data-toggle="modal" role="button" onclick="getPetInfo(this.form)">
			                                        </form>
			                                        </div>			                                        
		                                        </div>
	                                        </div>
                                        </c:forEach>
                                        </c:if>
                                        <c:if test="${empty petList }">
                                        	<div class="col-md-6">
	                                        <div class="list-inner">
		                                        	<h3>등록된 반려동물이 없습니다.</h3>
		                                        </div>
	                                        </div>
                                        </c:if>
                                       </div>
                                        <div class="action-button">
	                                        <div class="action-button-inner">
	                                        	<input type="hidden" id="member_serial" name="memberserialnewpet" value="${user.memberSerial }">
	                                        	<input type="button" value="반려동물 추가하기" data-toggle="modal" href="#petType" role="button" onclick="inputMemberSerial()">
	                                        </div>
                                        </div>
                                   </div>

<!-- Modal - 정보등록 -->
<!-- modal dialog : 타입고르기-->
<div class="modal" id="petType" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
	<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">강아지? 고양이?</h4>
		</div>
	    <form class="pet-form" name="petinform1">
          <div class="form-group">
          	<label class="radio-inline">
			  <input type="radio" name="animal_type" id="inlineRadio1" value="dog"> 강아지
			</label>
			<label class="radio-inline">
			  <input type="radio" name="animal_type" id="inlineRadio2" value="cat"> 고양이
			</label>
          </div>
	      <div class="modal-footer">
		    <button class="btn btn-primary" data-target="#newPet" data-toggle="modal" data-dismiss="modal" onclick="transferType()">선택</button>
	      	<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearInput()">Close</button>
	      </div>
        </form>
    </div>
  </div>
</div>


<!-- Modal - 새 정보 등록 -->
<div class="modal fade" id="newPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="max-width: 100%; width: auto; display: table;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabe2">반려동물 정보등록</h4>
      </div>
      	<form class="pet-form" name="insertPetInfo" id="insertPetInfo">
	      <div class="modal-body">
	       	<div class="form-group">
		        <table class="table table-bordered">
		        <tbody>
			        <tr>
						<td class="insert-title">이름</td>
						<td><input type="text" name="pet_name" ></td>
						<td class="insert-title">나이</td>
						<td><input type="text" name="pet_age" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
				        <td class="insert-title">성별</td>
						<td>
						<select name="pet_gender">
							<option value="girl">암</option>
							<option value="boy">수</option>
						</select>
						</td>
						<td class="insert-title">생일</td>
						<td class="insert-title"></td>
			        </tr>
			        <tr>
				        <td class="insert-title">품종</td>
						<td><input type="text" name="pet_variety" ></td>
						<td class="insert-title" >중성화여부</td>
						<td>
						<select name="tnr">
							<option value="yes">예</option>
							<option value="no">아니요</option>
						</select>
						</td>
			        </tr>
			        <tr>
				        <td class="insert-title">사이즈</td>
						<td>
						<select name="pet_size">
							<option value="s">소형</option>
							<option value="m">중형</option>
							<option value="l">대형</option>
						</select>
						</td>
						<td class="insert-title">체중</td>
						<td><input type="text" name="pet_weight"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
				        <td rowspan="3" colspan="2"><input type="file" accept="image/*" name="image_source"></td>
						<td class="insert-title">목둘레</td>
						<td><input type="text" name="neck_length"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
						<td class="insert-title">등길이</td>
						<td><input type="text" name="back_length" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
						<td class="insert-title">가슴둘레</td>
						<td><input type="text" name="chest_length" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
						<td class="insert-title">특이사항</td>
						<td colspan="3"><textarea name="pet_etc" ></textarea></td>
			        </tr>
		         </tbody>
	            </table>
	          </div>
	          <input type="hidden" id="animal_type" name="animal_type" value="">
	          <input type="hidden" id="member_serial" name="member_serial" value="">
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" id="newPetInsert" onclick="newPetInfo(this.form)">반려동물 정보저장</button>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeModalBtn" onclick="clearInput()">Close</button>
	      </div>
		</form>
    </div>
  </div>
</div>



<!-- First modal dialog : 상세보기-->
<div class="modal" id="petDetail" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
	<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">반려동물 상세보기</h4>
		</div>
	    <form class="pet-form" id="pet-detail-form" name="pet-detail-form">
			<div class="popup-inner img-pet" id="detail-petimg"><img src="" alt="이미지"></div>
			<div class="popup-inner text-pet">
			<div class="form-group-detail">
				<h2 id="detail-petname"></h2>
				<div class="textMain-wrap">
					<div class="box-detail">
						<h5>성별</h5>
						<p id="detail_gender"></p>
					</div>
					<div class="box-detail">
						<h5>품종</h5>
						<p id="detail_variety"></p>
					</div>
					<div class="box-detail">	
						<h5>생일</h5>
						<p id="detail_birth"></p>
					</div>
					<div class="box-detail">
						<h5>나이</h5>
						<p id="detail_age"></p>
					</div>
					<div class="box-detail">
						<h5>체형</h5>
						<p id="detail_size"></p>
					</div>
					<div class="box-detail">
						<h5>무게</h5>
						<p id="detail_weight"></p>
					</div>
					<div class="box-detail">
						<h5>목둘레</h5>
						<p id="detail_neck"></p>
					</div>
					<div class="box-detail">
						<h5>등길이</h5>
						<p id="detail_back"></p>
					</div>
					<div class="box-detail">
						<h5>가슴둘레</h5>
						<p id="detail_chest"></p>
					</div>
				</div>
				<div class="textSub-wrap">
					<div class="box-detail">
						<h5>특이사항</h5>
						<p id="detail_etc"></p>
					</div>
				</div>
			</div>
			</div>
	      <div class="modal-footer">
			<input type="hidden" id="detail_tnr" name="tnr" value="">
			<input type="hidden" id="detail_animal_type" name="animal_type" value="">
			<input type="hidden" id="detail_pet_serial" name="pet_serial" value="">
			<input type="hidden" id="detail_member_serial" name="member_serial" value="">
		    <button class="btn btn-primary" data-toggle="modal" data-dismiss="modal" onclick="modiPetInfo(this.form)">정보 수정</button>
		    <button class="btn btn-primary" id="deletePetData" onclick="deletePetInfo(this.form)">정보 삭제</button>
	      	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
		</form>
    </div>
  </div>
</div>

<!-- modal dialog : 정보수정 -->
<div class="modal fade" id="modiPetInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="max-width: 100%; width: auto; display: table;">
    <div class="modal-content">
      <div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">반려동물 정보수정</h4>
		</div>
      	<form class="pet-form" name="updatePetInfo" >
	      <div class="modal-body">
	       	<div class="form-group">
		        <table class="table table-bordered">
		        <tbody>
			        <tr>
						<td class="insert-title">이름</td>
						<td><input type="text" name="pet_name" ></td>
						<td class="insert-title">나이</td>
						<td><input type="text" name="pet_age" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
				        <td class="insert-title">성별</td>
						<td>
						<select name="pet_gender">
							<option value="girl">암</option>
							<option value="boy">수</option>
						</select>
						</td>
						<td class="insert-title">생일</td>
						<%-- <td value="${pet.pet_birth }">생일입력창</td> --%>
			        </tr>
			        <tr>
				        <td class="insert-title">품종</td>
						<td><input type="text" name="pet_variety" ></td>
						<td class="insert-title" >중성화여부</td>
						<td>
						<select name="tnr">
							<option value="yes">예</option>
							<option value="no">아니요</option>
						</select>
						</td>
			        </tr>
			        <tr>
				        <td class="insert-title">사이즈</td>
						<td>
						<select name="pet_size">
							<option value="s">소형</option>
							<option value="m">중형</option>
							<option value="l">대형</option>
						</select>
						</td>
						<td class="insert-title">체중</td>
						<td><input type="text" name="pet_weight"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
				        <td rowspan="3" colspan="2"><input type="file" accept="image/*" name="image_source"></td>
						<td class="insert-title">목둘레</td>
						<td><input type="text" name="neck_length"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
						<td class="insert-title">등길이</td>
						<td><input type="text" name="back_length"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
						<td class="insert-title">가슴둘레</td>
						<td><input type="text" name="chest_length"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
			        </tr>
			        <tr>
						<td class="insert-title">특이사항</td>
						<td colspan="3"><textarea name="pet_etc"oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></textarea></td>
			        </tr>
		         </tbody>
	            </table>
	          </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" onclick="modiPetInfo(this.form)">반려동물 정보수정</button>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeModalBtn">Close</button>
	      </div>
		</form>
    </div>
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
                
            </div>

        </div>
        
   	<!-- footer 푸터 시작부분-->
	<%-- <tiles:insertAttribute name="footer" /> --%>
	<%@include file="/common/footer.jsp" %>
	<!-- footer 푸터 끝부분-->
	</div>
</div>

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