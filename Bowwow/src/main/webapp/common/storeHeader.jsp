<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<style>
 .searchArea{
      width:250px !important;
      height:40px !important;
      border:none !important;
      font-size:1em !important;
      padding-left: 5px !important;
      font-style: oblique !important;
      display:inline !important;
      outline:none !important;
      box-sizing: border-box !important;
      color:black !important;
}


input[type="submit"] {
	font-family: FontAwesome;
	background-color: #f7b5b7;
	border: none;
	color: #fff;
}
</style>

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
											class="form-control searchArea" placeholder="Enter Keyword"> <span
											class="input-group-append search-btn"><i
											class="ti-search input-group-text"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="storeMain"
							style="text-align: center; font-weight: bold; font-size: 30px; margin-top: 7px;">BOW-WOW</a>

						<a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
						</a>
					</div>
					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>-
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li><a href="/community/main"> 커뮤니티 </a></li>
							<li><a href="/store/storeMain"> 스토어 </a></li>
						</ul>
						<form action="/store/searchProd" method="POST">
						<ul class="nav-right">
							<li class="form-group form-primary">
								<input type="text" class="form-control searchArea" name="keyword" autocomplete="off" placeholder="검색창"> 
								<span class="form-bar"></span>
							</li>
							<li>
								<input type="submit" name="search" style="cursor: pointer;" value="&#xf002;">
							</li>
							<li class="header-notification">
								<a href="/store/cartList" class="waves-effect waves-light"> 
									<i class="fa fa-shopping-cart" aria-hidden="true" ></i> 
								</a>
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
										href="/getPetInfoList?member_serial=${sessionScope.userDTO.member_serial }">프로필 </a></li>
									<li class="waves-effect waves-light"><a
										href="email-inbox.html">반려동물 </a></li>
									<li class="waves-effect waves-light"><a
										href="/mypage/myPoint">포인트 내역 </a></li>
									<li class="waves-effect waves-light"><a
										href="/store/storeOrderList">나의 쇼핑 </a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html">로그아웃 </a></li>
								</ul></li>
						</ul>
						</form>
					</div>
				</div>
			</nav>