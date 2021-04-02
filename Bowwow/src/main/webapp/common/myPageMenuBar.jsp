<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 좌측 메뉴바 시작 -->
<nav class="pcoded-navbar">
	<div class="sidebar_toggle">
		<a href="#"><i class="icon-close icons"></i></a>
	</div>
	<div class="pcoded-inner-navbar main-menu">
		<div class="p-15 p-b-0">
			<form class="form-material">
				<!-- 이부분 form을 없애면 좌측메뉴 시작부분이 위쪽으로 조금 올라감 -->
			</form>
		</div>

		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="/mypage/myPageMain"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
				<i class="ti-layers"></i><b>FC</b></span> 
				<span class="pcoded-mtext">마이홈</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>

		<ul class="pcoded-item pcoded-left-item">
			<li class="">
				<!-- 회원번호(memberSerial)을 이용해서 내 정보 출력 --> 
				<a href="/mypage/myInfo"
				 class="waves-effect waves-dark"> <%-- <a href="myInfo.do?memberSerial=${memberSerial }" class="waves-effect waves-dark"> --%>
					<span class="pcoded-micon"> <!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">프로필</span> <span class="pcoded-mcaret"></span>
			</a>
			</li>
		</ul>
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="/getPetInfoList"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">반려동물</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="/mypage/myPostList"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">게시글</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="/mypage/myPoint"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">적립금(?)</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="/mypage/myInquiry2"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">1:1문의</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>
	</div>
</nav>
<!-- 좌측 메뉴바 끝 -->