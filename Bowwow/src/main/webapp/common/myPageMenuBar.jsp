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
		<form name="goLinkPetList">
		<input type="hidden" name="member_serial" value="${sessionScope.userDTO.member_serial }" >
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="javascript:page_move_petList('${sessionScope.userDTO.member_serial }');"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">반려동물</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		</form>
		<script>
		//a태그 POST방식으로 넘기기!
		function page_move_petList(member_serial){ 
			  var frm =document.goLinkPetList;  //폼 name
			  frm.member_serial.value = member_serial;  //POST방식으로 넘기고 싶은 값
			  frm.action="/getPetInfoList";  //이동할 페이지
			  frm.method="post";  //POST방식
			  frm.submit();
		}
		</script>
		<form name="goLinkPointList">
		<input type="hidden" name="member_serial" value="${sessionScope.userDTO.member_serial }" >
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="javascript:page_move_pointList('${sessionScope.userDTO.member_serial }');"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">포인트</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		</form>
		<script>
		//a태그 POST방식으로 넘기기!
		function page_move_pointList(member_serial){ 
			  var frm =document.goLinkPetList;  //폼 name
			  frm.member_serial.value = member_serial;  //POST방식으로 넘기고 싶은 값
			  frm.action="/getMyPointList";  //이동할 페이지
			  frm.method="post";  //POST방식
			  frm.submit();
		}
		</script>
		<form name="goLinkInquiryList">
		<input type="hidden" name="member_serial" value="${sessionScope.userDTO.member_serial }" >
		<ul class="pcoded-item pcoded-left-item">
			<li class="">
			<a href="javascript:page_move_inquiryList('${sessionScope.userDTO.member_serial }');"
				class="waves-effect waves-dark"> <span class="pcoded-micon">
						<!-- <i class="ti-id-badge"></i><b>A</b> -->
				</span> <span class="pcoded-mtext">1:1문의</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		</form>
		<script>
		//a태그 POST방식으로 넘기기!
		function page_move_inquiryList(member_serial){ 
			  var frm =document.goLinkPetList;  //폼 name
			  frm.member_serial.value = member_serial;  //POST방식으로 넘기고 싶은 값
			  frm.action="/getUserInquiryList";  //이동할 페이지
			  frm.method="post";  //POST방식
			  frm.submit();
		}
		</script>
	</div>
</nav>
<!-- 좌측 메뉴바 끝 -->