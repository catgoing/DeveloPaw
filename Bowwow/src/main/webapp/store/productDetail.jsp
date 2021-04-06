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

	<script type="text/javascript" src="/resources/js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/js/ajax.js"></script>
	
<style>
.featured__item__text {
	width: 150px;
}

.detailProduct {
	display: block;
	margin: auto;
}
</style>

<script type="text/javascript">

		var sell_price;
		var amount;
		
		$(function init () {
			sell_price = document.getElementById('sell_price').value;
			document.getElementById('sum').value = sell_price
			sell_price = document.form.sell_price.value;
			amount = document.form.amount.value;
			document.form.sum.value = sell_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		});
		
		function add () {
			hm = document.form.amount;
			sum = document.form.sum;
			
			hm.value ++ ;
			
			var temp = parseInt(hm.value) * sell_price
		
			document.getElementById('sum').value = temp;
			document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			
		}
		
		function del () {
			hm = document.form.amount;
			sum = document.form.sum;
				if (hm.value > 1) {
					hm.value -- ;
					var temp = parseInt(hm.value) * sell_price
					
					document.getElementById('sum').value = temp;
					document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
				
		}
		
		function changeValue(){
			hm = document.form.amount;
			sum = document.form.sum;
			
			var temp = parseInt(hm.value) * sell_price
		
			document.getElementById('sum').value = temp;
			document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		
		// 숫자만 들어오도록 체크
		function onlyNumber(e) {
			var reg = /[^0-9]{1,100}$/g;
			var value = $(e).val();	// $(e) : 선택자, jQuery에서 매개변수로 받은 Object를 지칭함
			
			if (reg.test(value)) { // 숫자만 들어오도록 test()로 체크
				$(e).val(value.replace(reg, ""));
				return false;
			}
		}
		
		function cartList(frm) {
			var param = $("form[name=form]").serialize();
			var tUrl = '/store/addCart';
			var result;
			
			result = callAjax(tUrl, 'post', param, 'data');
		
	       	   	if (result.code == "0000") {
	       		  	var chk = confirm(result.msg);
	       		  
	       		  	if (chk) {
	         			location.href="/store/cartList";
	       	   		}
	       		  	
				} else {
	       		  	var chk = confirm(result.msg);
       		  
	       		 	if (chk) {
	         			location.href="/store/cartList";
	         		} 
       	    	}
         		
		}
		
		function insertReview(p_id) {
         	console.log('상품번호 : ' + p_id);
         	var getMemValue = $('#member_serial').val();
         	var getTitleValue = $('#review_title').val();
         	var getContentValue = $('#review_content').val();

         	var data = {'p_id' : p_id, 'member_serial' : getMemValue, 'review_title' : getTitleValue, 'review_content' : getContentValue};

         	$.ajax({
         		url : '/store/insertReview',
         		type: 'POST',
                 data: data,
                 success: function(data){
						console.log(data)
						 if(data) {
							/* $('#tabs-3').append('<table>'+
													'<tr><th>리뷰번호</th><td>${rList.review_id}</td></tr>'+
												'</table>'); */
						}
             	}
         	});
         }

         function deleteReview(review_id) {
         	console.log('리뷰아이디 : ' + review_id);
         	var data = {"r_id": review_id};
         	$.ajax({
                 url: '/store/deleteReview',
                 type: 'POST',
                 data: data,
                 success: function(data){
						console.log('?? ' + data)
						if(data == "success") {
							$('#rList_' + review_id).remove();
						}
             	}
         	});
         }
		
		function storeOrder(frm) {
			frm.action="/store/storeOrder";
			frm.submit();
		}
		
		
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

							<!-- Product Details Section Begin -->
							<section class="product-details spad">
								<div class="container" style="border: 2px solid white;">
									<br>
									<c:choose>
										<c:when test="${p.p_type == 'dog'}">
											<c:set var="imgDir" value="dogImg" />
										</c:when>
										<c:when test="${p.p_type == 'cat'}">
											<c:set var="imgDir" value="catImg" />
										</c:when>
									</c:choose>
									<div class="row">
										<div class="col-lg-6">
											<div class="product__details__pic">
												<div class="product__details__slider__content">
													<div class="details_pic">
														<img
															src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${p.s_image }">
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="details_text">
												<form name="form" onsubmit="return false;" method="POST">
													<h4 style="color: #000">${p.p_name }</h4>
													<input type="hidden" name="p_id" value="${p.p_id }">
													<input type="hidden" name="stock" value="${p.stock }">
													<div class="product__details__button">
														<div class="product__details__widget">
															<ul>
																<li>
																	<h4>
																		판매금액 <fmt:formatNumber value="${p.price }" pattern="#,###" /> 원
																	</h4>
																</li>
															</ul>
														</div>
														<div class="quantity">
															<div class="pro-qty">
																<h5>상품 수량
															      	 <input type="hidden" id="sell_price" name="price" value="${p.price }"> 
																	 <input type="button" class="store_btn2" value=" - " onclick="del();">
																	 <input type="text" class="store_input" onkeyup="onlyNumber(this);" maxlength="2" autocomplete="off" 
																	 	min="1" name="amount" value="1" size="3" onchange="changeValue();"> 
																	 <input type="button" id="addBtn" class="store_btn2" value=" + " onclick="add();">
																</h5>
															</div>
															<br>
														</div>
														<div class="product__details__widget">
															<ul>
																<li>
																	<h3>
																		총 상품금액 <input type="text" class="store_input2"
																			size="9" id="sum" readonly>원
																	</h3>
																</li>
															</ul>
														</div>
														<ul>
															<li><a href="#"><span class="icon_heart_alt"></span></a></li>
															<li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
														</ul>
													</div>
													<div class="btn_area">
														<button class="store_btn" onclick="cartList(this.form)">장바구니</button>
														<button class="store_btn" onclick="storeOrder(this.form)">바로구매</button>
													</div>
													<ul>
														<li><a href="#"><span class="icon_heart_alt"></span></a></li>
														<li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
													</ul>
												</form>
											</div>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="product__details__tab" style="margin: 30px;">
											<ul class="nav nav-tabs" role="tablist">
												<li class="nav-item"><a class="nav-link active"
													data-toggle="tab" href="#tabs-1" role="tab">상세 정보</a></li>
												<li class="nav-item"><a class="nav-link"
													data-toggle="tab" href="#tabs-2" role="tab">리뷰 남기기</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" id="tabs-1" role="tabpanel"
													style="margin: 30px;">
													<img class="detailProduct"
														src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${p.l_image }"
														alt="">
												</div>
												<div class="tab-pane" id="tabs-2" role="tabpanel"
													style="margin: 30px;">
													<h2>상품에 대한 후기를 자유롭게 남겨주세요!</h2>
													<br>
													<div class="tab-pane fade show active" id="review"
														role="tabpanel" aria-labelledby="review-tab">
														<div class="row">
															<div class="col-lg-6">
																<div class="review_list">
																	<c:forEach var="rList" items="${reviewList}">
																		<div id="rList_${rList.review_id}" class="review_box"
																			style="border: 1px solid lightgray; margin-bottom: 10px; padding: 10px;">
																			<h4>작성된 리뷰</h4>
																			<form class="row contact_form" id="contactForm"
																				onsubmit="return false;">
																				<div class="col-md-12">
																					<div class="form-group">
																						<input type="text" class="form-control"
																							value="${rList.review_title }" readonly />
																					</div>
																				</div>
																				<div class="col-md-6">
																					<div class="form-group">
																						<input type="text" class="form-control" value=999
																							readonly />
																					</div>
																				</div>
																				<div class="col-md-6">
																					<div class="form-group">
																						<input type="text" class="form-control"
																							value="${rList.review_regdate }" readonly />
																					</div>
																				</div>
																				<div class="col-md-12">
																					<div class="form-group">
																						<textarea class="form-control"
																							style="resize: none;" rows="2" readonly>${rList.review_content }</textarea>
																					</div>
																					<button class="store_btn"
																						onclick="deleteReview(${rList.review_id})"
																						style="float: right;">삭제</button>
																				</div>
																			</form>
																		</div>
																	</c:forEach>
																</div>
															</div>
															<div class="col-lg-6">
																<div class="review_box">
																	<h4>리뷰 작성하기</h4>
																	<form class="row contact_form" id="contactForm">
																		<div class="col-md-6">
																			<div class="form-group">
																				<span>상품 번호</span> <input type="text"
																					class="form-control" id="p_id" name="p_id"
																					value="${p.p_id}" />
																			</div>
																		</div>
																		<div class="col-md-6">
																			<div class="form-group">
																				<span>작성자</span> <input type="text"
																					class="form-control" id="member_serial"
																					name="member_serial" value=999 />
																			</div>
																		</div>
																		<div class="col-md-12">
																			<div class="form-group">
																				<span>후기 제목</span> <input type="text"
																					class="form-control" id="review_title"
																					name="review_title" placeholder="후기 제목을 입력하세요" />
																			</div>
																		</div>
																		<div class="col-md-12">
																			<div class="form-group">
																				<span>후기 내용</span>
																				<textarea class="form-control" style="resize: none;"
																					name="review_content" id="review_content" rows="2"
																					placeholder="후기 내용을 입력하세요"></textarea>
																			</div>
																		</div>
																		<div class="col-md-12 text-right">
																			<button onclick="insertReview(${p.p_id})"
																				class="store_btn">작성</button>
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
							</section>
						</div>
					</div>
				</div>
				<br> <br>
			</div>
			<!-- Product Details Section End -->
			<div id="styleSelector"></div>
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

	<script type="text/javascript" src="/resources/js/script.js "></script>

</body>

</html>
