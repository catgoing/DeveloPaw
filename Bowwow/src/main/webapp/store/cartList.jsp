<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <title>개발바닥</title>
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	
	<meta name="keywords"
		content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
	<meta name="author" content="Codedthemes" />
	<!--Jua 폰트 import-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
		rel="stylesheet">
	
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
    <link rel="stylesheet" type="text/css" href="/resources/css/cartStyle.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/test.css">
	<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>
	<script type="text/javascript" src="/resources/js/ajax.js"></script>
	
<script type="text/javascript">
	
	$(function() {
		var sell_price = $("input:hidden[name='price']");
		var amount = $("input:text[name='amount']");
		var prodSum = $("input:text[name='sum']");
		var sum;
		
		for (var i=0; i<sell_price.length; i++) {
			sum = sell_price.eq(i).val() * amount.eq(i).val();
			prodSum.eq(i).val(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
		}
		
	});
	
	function delCart(pId, userId) {
		
		var chk = confirm("상품을 삭제하시겠습니까?");
		
		if (chk) {
			var tUrl = '/store/deleteCart';
			var result;
			var param = {
					p_id : pId, 
					id : userId
			}
		
			result = callAjax(tUrl, 'post', param, 'data');
			
			if (result.code == '0000') {
				alert(result.msg);
				location.reload();
			} else {
				alert(result.msg);
			}
		}
	}
	
/* 	$(function() {
		var price = $("td:nth-child(6)").text();
		$("td:nth-child(1)").on("click", function() {
			alert(price);
		});
		
		 var pId = $("input:checkbox[name='p_id']");
		
		for (var i=0; i < pId.length; i++) {
			alert(pId.eq(i).val());
		 }
	}); end of function */

</script>
	
</head>

<body>
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<%@include file="/common/storeHeader.jsp"%>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<%@include file="/common/storeMenuBar.jsp"%>

					<div class="pcoded-content">
						<!-- Page-header start -->

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->

							<!-- Shopping Cart Section Begin -->
							<section class="shopping-cart spad">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="cart-table" style="background-color: white;">
												<table>
													<thead>
														<tr>
															<th><a onclick="multiTotalPrice();">check</a></th>
															<th></th>
															<th class="p-name" colspan="2">상품명</th>
															<th>판매가</th>
															<th>수량</th>
															<th>주문금액</th>
															<th>주문관리</th>
														</tr>
													</thead>
													<tbody>
														<c:if test="${empty cart}">
															<tr class="gift-division">
																<td colspan="6"></td>
															</tr>
															<tr>
																<td colspan="2">장바구니에 상품이 없습니다.</td>
															</tr>
														</c:if>
														<c:if test="${!empty cart}">
														<form id="listForm" >
															<c:forEach var="cart" items="${cart }">
																<c:choose>
																	<c:when test="${cart.p_type == 'dog'}">
																		<c:set var="imgDir" value="dogImg" />
																	</c:when>
																	<c:when test="${cart.p_type == 'cat'}">
																		<c:set var="imgDir" value="catImg" />
																	</c:when>
																</c:choose>
																<tr style="border-bottom: 1px solid #ddd;">
																	<td><input id="check" type="checkbox" name="p_id" value="${cart.p_id }"></td>
																	<td class="cart-pic first-row"><a
																		href="detail?p_id=${cart.p_id }"> <img
																			src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${cart.s_image }"
																			alt="">
																	</a></td>
																	<td class="cart-title first-row" colspan="2">
																		<p>
																			<a href="detail?p_id=${cart.p_id }">${cart.p_name }</a>
																		</p>
																	</td>
																	<td class="p-price first-row">
																		<input type="hidden" name="price" value="${cart.price}">
																		<fmt:formatNumber value="${cart.price }" pattern="#,###" />원</td>
																	<td class="qua-col first-row">
																		<div class="quantity">
																			<div class="cartList_amount">
																				<input type="button" class="store_btn2" value=" - " onclick="add()"> 
																				<input type="text" name="amount" value="${cart.amount }" size="3" readonly> 
																				<input type="button" class="store_btn2" value=" + " onclick=>
																			</div>
																		</div>
																	</td>
																	<td class="total-price first-row">
																		<input type="text" class="store_input3" size="9" name="sum" readonly>원
																	</td>
																	<td class="close-td first-row">
																		<a onclick="delCart('${cart.p_id}', '${cart.id }')"><i class="ti-close"></i></a>
																	</td>
																</tr>
															</c:forEach>
														</form>
														</c:if>
													</tbody>
												</table>
											</div>
											<form name="cartform" method="POST">
												<input type="hidden" name="p_id" value="">
												<input type="hidden" name="id" value="">
											</form>
											<div class="row">
												<div class="col-lg-4">
													<div class="cart-buttons">
														<a href="#" class="primary-btn continue-shop">계속 쇼핑하기</a>
														<a href="#" class="primary-btn up-cart">선택 삭제</a>
													</div>
													<div class="discount-coupon">
														<h6>적립금 사용</h6>
														<form action="#" class="coupon-form">
															<input type="text" placeholder="사용 가능 포인트 : ${p.p}원">
															<button type="submit" class="site-btn coupon-btn">사용</button>
														</form>
													</div>
												</div>
												<div class="col-lg-4 offset-lg-4">
													<div class="proceed-checkout"
														style="background-color: white;">
														<ul>
															<li class="subtotal">상품 금액 <span>$240.00</span></li>
															<li class="subtotal">할인 금액 <span>$240.00</span></li>
															<li class="cart-total">최종 결제 금액 <span>$240.00</span></li>
														</ul>
														<a href="#" class="proceed-btn">주문하기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<!-- Shopping Cart Section End -->

							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/common/storeFoot.jsp" %>

    <!-- Required Jquery -->
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
