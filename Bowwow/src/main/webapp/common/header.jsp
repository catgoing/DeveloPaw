<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<li><a href="storeMain.html"> 스토어 </a></li>
			</ul>
			<form action="search">
			<ul class="nav-right">
				<li class="form-group form-primary">
					<input type="text"
					name="keyword" style="margin-top: 12px; width: 250px;"
					class="form-control" placeholder="검색창">

					<span class="form-bar"></span>
				</li>
				<li>
				<button style = "margin-top: 5px; width: 100px" type="submit"><i class="fas fa-search"></i></button>
				</li>

				
				
				<li class="user-profile header-notification"><a href="#!"
					class="waves-effect waves-light"> <img
						src="../resources/images/logo.png" class="img-radius"
						alt="User-Profile-Image"> <i class="ti-angle-down"></i>
				</a>
					<ul class="show-notification profile-notification">
						<li class="waves-effect waves-light"><a href="/mypage/myPageMain">마이홈
						</a></li>
						<li class="waves-effect waves-light"><a
							href="/mypage/myInfo">프로필 </a></li>
						<li class="waves-effect waves-light"><a
							href="/getPetInfoList?member_serial=${sessionScope.userDTO.member_serial }">반려동물 </a></li>
						<li class="waves-effect waves-light"><a
							href="/mypage/myPostList">내 게시글</a></li>
						<li class="waves-effect waves-light"><a
							href="/mypage/myPoint">포인트 내역 </a></li>
<!-- 						로그아웃 시, 헤더의 목록을 동적으로 바꿔야 함->로그인 시 헤더목록을 동적으로 출력해야 함  -->
						<li class="waves-effect waves-light"><a
							href="/getUserInquiryList?member_serial=${sessionScope.userDTO.member_serial }">나의 쇼핑 </a></li>
						<li class="waves-effect waves-light"><a
							href="/user/login">로그인 </a></li>
						<li class="waves-effect waves-light"><a
							href="/user/logout">로그아웃 </a></li>
					</ul></li>
				</ul>
			</form>
		</div>
	</div>
</nav>
