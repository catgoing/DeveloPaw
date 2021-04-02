<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- Favicon icon -->
<link rel="icon" href="/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="/resources/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/cartStyle.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">
<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>

<script type="text/javascript">
	var sell_price;
	var amount;

	$(function init() {
		sell_price = document.getElementById('sell_price').value;
		document.getElementById('sum').value = sell_price.replace(
				/\B(?=(\d{3})+(?!\d))/g, ",");
		sell_price = document.form.sell_price.value;
		amount = document.form.amount.value;
		document.form.sum.value = sell_price;
	});

	function add() {
		hm = document.form.amount;
		sum = document.form.sum;
		hm.value++;

		var temp = parseInt(hm.value) * sell_price

		document.getElementById('sum').value = temp;
		document.getElementById('sum').value = document.getElementById('sum').value
				.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	function del() {
		hm = document.form.amount;
		sum = document.form.sum;
		if (hm.value > 1) {
			hm.value--;
			var temp = parseInt(hm.value) * sell_price

			document.getElementById('sum').value = temp;
			document.getElementById('sum').value = document
					.getElementById('sum').value.replace(
					/\B(?=(\d{3})+(?!\d))/g, ",");
		}

	}

	function changeValue() {
		hm = document.form.amount;
		sum = document.form.sum;

		var temp = parseInt(hm.value) * sell_price

		document.getElementById('sum').value = temp;
		document.getElementById('sum').value = document.getElementById('sum').value
				.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
</script>

</head>

<body>
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- header 헤더 영역 -->
			<%@ include file="/common/storeHeader.jsp"%>
			<!-- header 헤더 영역 -->

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					
					<!-- sidebar 좌측메뉴바 -->
					<%@ include file="/common/storeMenubar.jsp"%>
					<!-- sidebar 좌측메뉴바 -->
					
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
															<th>번호</th>
															<th class="p-name" colspan="2">상품명</th>
															<th>판매가</th>
															<th>수량</th>
															<th>주문금액</th>
															<th>주문관리</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="cart-pic first-row"><img
																src="img/cart-page/product-1.jpg" alt=""></td>
															<td class="cart-title first-row">
																<h5>Pure Pineapple</h5>
															</td>
															<td class="p-price first-row">$60.00</td>
															<td class="qua-col first-row">
																<div class="quantity">
																	<div class="pro-qty">
																		<input type="text" value="1">
																	</div>
																</div>
															</td>
															<td class="total-price first-row">$60.00</td>
															<td class="close-td first-row"><i class="ti-close"></i></td>
														</tr>
														<tr>
															<td class="cart-pic"><img
																src="img/cart-page/product-2.jpg" alt=""></td>
															<td class="cart-title">
																<h5>American lobster</h5>
															</td>
															<td class="p-price">$60.00</td>
															<td class="qua-col">
																<div class="quantity">
																	<div class="pro-qty">
																		<input type="text" value="1">
																	</div>
																</div>
															</td>
															<td class="total-price">$60.00</td>
															<td class="close-td"><i class="ti-close"></i></td>
														</tr>
														<tr>
															<td class="cart-pic"><img
																src="img/cart-page/product-3.jpg" alt=""></td>
															<td class="cart-title">
																<h5>Guangzhou sweater</h5>
															</td>
															<td class="p-price">$60.00</td>
															<td class="qua-col">
																<div class="quantity">
																	<div class="pro-qty">
																		<input type="text" value="1">
																	</div>
																</div>
															</td>
															<td class="total-price">$60.00</td>
															<td class="close-td"><i class="ti-close"></i></td>
														</tr>
													</tbody>
												</table>
											</div>
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

							<!-- Product Details Section End -->
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="/common/storeFooter.jsp" %>

	<!-- Warning Section Ends -->

	<!-- Required Jquery -->
	<script type="text/javascript"
		src="/resources/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="/resources/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="/resources/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="/resources/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- slimscroll js -->
	<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

	<!-- menu js -->
	<script src="/resources/js/pcoded.min.js"></script>
	<script src="/resources/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="/resources/js/script.js "></script>
</body>


</html>
