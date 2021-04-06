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

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

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
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">

<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>

<style type="text/css">
section.replyForm { padding:30px 0; }
		section.reviewForm div.input_area { margin:10px 0; }
		section.reviewForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }
		section.reviewForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
		


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

	function cartList(frm) {
		console.log('frm 함수');
		var param = $("form[name=form]").serialize();

		$.ajax({
			url : '/store/addCart',
			type : 'post',
			data : param,
			dataType : 'json',
			success : function(data) {

				if (data.result == "code") {
					var chk = confirm(data.msg);

					if (chk) {
						location.href = "/store/cartList";
					} else {
						return;
					}

				} else if (data.result == "error") {
					var chk = confirm(data.msg);

					if (chk) {
						location.href = "/store/cartList";
					} else {
						return;
					}
				}
			}
		});
	}


	function insertOrder(frm) {
		console.log('order 함수');
		var p_id = $('#product_id').val();
		var p_count = $('#product_count').val();
		var sum = $('#sum').val();
		
		location.href = "/store/storeOrder?p_id=" + p_id + "&p_count=" + p_count + "&sum=" + sum;
	}

	function deleteReview(review_id) {
		console.log('리뷰아이디 : ' + review_id);
		var data = {
			"r_id" : review_id
		};
		$.ajax({
			url : '/store/deleteReview',
			type : 'POST',
			data : data,
			success : function(data) {
				console.log('?? ' + data)
				if (data == "success") {
					$('.rev_'+review_id).remove();
				}
			}
		});
	}

	function chkRev() {
		if (document.getElementById('review_title').value == "") {
			alert("제목을 입력해 주세요.");
			return false;
		} else if (document.getElementById('review_content').value == "") {
			alert("내용을 입력해주세요");
			return false;
		} else
			return true;

	}
	
	function reviewInsert() {
		
		var formObj = $("#reviewForm").serialize();
		/* var formdata = new FormData();
		formdata.append(); */
		$.ajax({
			url : "/store/insertReview",
			type : "post",
			data : formObj,
			dataType : 'json',
			success : function(data){
				if(data) {
					$('.reviewList').prepend(
							'<li class="rev_'+data.revId+'">'+
							'<div class="userInfo">'+
							'<span class="userName">'+data.revTitle +'</span>'+
							'<span class="date">'+data.revContent +'</span>'+
							'<div class="reviewContent">'+data.revRegdate + '</div>'+
							'<button class="store_btn" onclick="deleteReview("'+data.revId+'")>삭제</button>'+
							'</div>'+
							'</li>'
					);
				}
				
	            
				if(data.code == '0000') {
					alert(data.msg);
				} else {
					alert(data.msg);
				}
			}
		});
	 }
	
	function reviewList() {
		
		var pId = ${p.p_id};
		
		$.getJSON("/store/reviewList" + "?p_id=" + pId, function(data){
			var str = "";
			
			$(data).each(function(){
				
				console.log(data);
				
				var reviewDate = new Date(this.review_regdate);
				reviewDate = reviewDate.toLocaleDateString("ko-US")
								
				// HTML코드 조립
				str += '<li class="rev_'+this.review_id+'">'
					 + '<div class="userInfo">'
					 + '<span class="userName">'+this.review_title+'</span>'
					 + '<span class="date">' + reviewDate + '</span>'
					 + '<div class="reviewContent">'+this.review_content+'</div>'
					 + '<button class="store_btn" onclick="deleteReview('+this.review_id+')">삭제</button>'
					 + '</div>'
					 + "</li>";											
			});
			
			// 조립한 HTML코드를 추가
			$("section.reviewList ol").html(str);
		});
		
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
													<input type="hidden" id="product_id" name="p_id"
														value="${p.p_id }"> <input type="hidden"
														name="stock" value="${p.stock }">
													<div class="product__details__button">
														<div class="product__details__widget">
															<ul>
																<li>
																	<h4>
																		판매금액:
																		<fmt:formatNumber value="${p.price }" pattern="#,###" />
																		원
																	</h4>
																</li>
															</ul>
														</div>
														<div class="quantity">
															<div class="pro-qty">
																<h5>
																	상품 수량     <input type="hidden" id="sell_price" name="price" value="${p.price }"> 
																			<input type="button" class="store_btn2" value=" - " onclick="del()"> 
																			<input type="text" id="product_count" class="store_input" autocomplete="off" min="1" name="amount" value="1" size="3" onchange="changeValue();"> 
																			<input type="button" class="store_btn2" value=" + " onclick="add()">
																</h5>
															</div>
															<br>
														</div>
														<div class="product__details__widget">
															<ul>
																<li>
																	<h3>
																		총 상품금액: <input type="text" class="store_input2"
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
														<c:if test="${p.stock != 0 }">
															<button class="store_btn" onclick="cartList(this.form)">장바구니</button>
															<button class="store_btn"
																onclick="insertOrder(this.form)">바로구매</button>
														</c:if>
														<c:if test="${p.stock == 0 }">
															<h4>품절된 상품입니다.</h4>
														</c:if>
													</div>
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
												<div class="tab-pane active" id="tabs-1" role="tabpanel" style="margin: 30px;">
													<img class="detailProduct" src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${p.l_image }" alt="">
												</div>
												<div class="tab-pane" id="tabs-2" role="tabpanel"
													style="margin: 30px;">
													<h2>상품에 대한 후기를 자유롭게 남겨주세요!</h2>
													<br>
													<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
														<div id="reply">
															<section class="reviewForm">
																<form name="reviewForm" id="reviewForm" method="post" autocomplete="off">
																	<input type="hidden" name="p_id" value="${p.p_id}">
																	<input type="hidden" name="member_serial" value="999">
																	<div class="input_area">
																		<input type="text" id="revTitle" name="review_title"
																			placeholder="후기 제목">
																		<textarea name="review_content" style="resize: none;" placeholder="후기 내용" ></textarea>
																	</div>
																	<div class="input_area">
																		<button type="button" onclick="reviewInsert()">후기 작성</button>
																	</div>
																</form>
															</section>
															<section class="reviewList">
																<ol>
																<%-- 	<li>
																		<div class="userInfo">
																			<span class="userName">${rList.member_serial}</span>
																			<span class="date">${rList.review_regdate}"</span>
																		</div>
																		<div class="reviewContent">${rList.review_content}</div>
																	</li> --%>
																</ol>
																<script>
																	reviewList();
																</script>	
															</section>
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

	<%@include file="/common/storeFoot.jsp"%>

	<!-- Required Jquery -->
	<script type="text/javascript"
		src="/resources/js/jquery/jquery.min.js "></script>
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