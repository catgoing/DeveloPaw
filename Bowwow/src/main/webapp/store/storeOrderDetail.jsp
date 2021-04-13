<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"rel="stylesheet">

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
<link rel="stylesheet" type="text/css" href="/resources/css/storeStyle.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">
<style>
.featured__item__text {
	width: 150px;
}

</style>
</head>
<script>


function delOrder(){
	if(document.getElementById('orderStatus').value == "주문 완료"){
		alert("주문이 취소되었습니다.");
		return true;
		

	} else {
		console.log(document.getElementById('orderStatus').value);
		alert("배송이 시작된 상품입니다. 고객센터에 문의해 주세요.");
		return false;		
	}
}	


function deleteOrder(frm) {
	frm.action="/store/deleteOrder";
	frm.submit();
} 

</script>
<body>
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<%@include file="/common/storeHeader.jsp"%>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<%@include file="/common/storeMenuBar.jsp"%>

					<div class="pcoded-content">
						<div class="pcoded-inner-content">
							<!-- Main-body start -->


							<!--================Order Details Area =================-->
							<section class="order_details section_gap">
								<div class="container" style="background-color: white;">
									<form action="deleteOrder" onsubmit="return delOrder();"
										method="POST"
										style="border: 2px solid #eee; margin: 60px; padding: 30px;">
										<br>
										<h2 class="title_confirmation">주문 상세 내역</h2>
										<hr>
										<div class="row order_d_inner">
											<div class="col-lg-4">
												<div class="details_item">
													<h4>Order Info</h4>
													<br>
													<ul class="list">
														<li><span>주문번호</span> : ${o.order_id}</li>
														<li><span>주문자 성명</span> : ${o.realname}</li>
														<li><span>주문자 전화번호</span> : ${o.phone}</li>
													</ul>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="details_item">
													<h4>주문인 주소</h4>
													<br>
													<ul class="list">
														<li><span>우편번호 </span>${o.zip }</li>
														<li><span>주소</span> : ${o.address }
															${o.address_detail }</li>
													</ul>
												</div>
											</div>
										</div>
										<br>
										<div class="order_details_table">
											<h2>주문한 상품 목록</h2>
											<br>
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">상품명</th>
															<th scope="col">상품 수량</th>
															<th scope="col">결제 금액</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="od" items="${od }">
															<tr>
																<td>
																	<p>${od.p_name }</p>
																</td>
																<td>
																	<h5>x ${od.amount }</h5>
																</td>
																<td>
																	<p>
																		<fmt:formatNumber value="${od.sum }" pattern="#,###" />
																		원
																	</p>
																</td>
															</tr>
														</c:forEach>
														<tr>
															<td>
																<h4>배송비</h4>
															</td>
															<td>
																<h5></h5>
															</td>
															<td>
																<p>무료</p>
															</td>
														</tr>
														<tr>
															<td>
																<h4>총 결제금액</h4>
															</td>
															<td>
																<h5></h5>
															</td>
															<td>
																<p>
																	<fmt:formatNumber value="${o.totalSum}" pattern="#,###" />
																	원
																</p>
															</td>
														</tr>
													</tbody>
												</table>
												<input type="submit" class="orderBtn" value="주문 취소">
												<input type="hidden" name="order_id" value="${o.order_id} ">
												<input type="hidden" id="orderStatus" name="order_status" value="${o.order_status}">
											</div>
										</div>
									</form>
								</div>
							</section>
							<br> <br>
							<!--================End Order Details Area =================-->
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/common/storeFoot.jsp" %>
		
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

		<script type="text/javascript" src="/resources/js/script2.js "></script>
</body>


</html>
