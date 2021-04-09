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
	var totalSum;
	var stock;
	
	$(function init () {
	   sell_price = document.getElementById('sell_price').value;
	   document.getElementById('sum').value = sell_price;
	   sell_price = document.form.sell_price.value;
	   document.getElementById('totalSum').value = sell_price;
	   amount = document.form.amount.value;
	   document.form.sum.value = sell_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	   stock = document.getElementById('stock').value;
	   
	});
	
	function add () {
	   hm = document.form.amount;
	   sum = document.form.sum;
	   
	   hm.value ++;
	   
	   if(parseInt(hm.value) > stock) {
		    console.log("hm : " + hm.value);
		    console.log("stock : " + stock);
	   		alert("재고가 부족합니다, 해당 상품의 재고는 총" + stock + "개 입니다.");
	   	    hm.value --;
	   } else {
		   var temp = parseInt(hm.value) * sell_price
		
		   document.getElementById('totalSum').value = temp;
		   document.getElementById('sum').value = temp;
		   document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		   
	   }
		   
	}
	
	function del () {
	   hm = document.form.amount;
	   sum = document.form.sum;
	   
	      if (hm.value > 1) {
	         hm.value -- ;
	         var temp = parseInt(hm.value) * sell_price
	         
	         document.getElementById('totalSum').value = temp;
	         document.getElementById('sum').value = temp;
	         document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	      }
	      
	}
	
	function changeValue(){
	   hm = document.form.amount;
	   sum = document.form.sum;
	   
	   if(parseInt(hm.value) > stock) {
		    console.log("hm : " + hm.value);
		    console.log("stock : " + stock);
		    alert("재고가 부족합니다, 해당 상품의 재고는 총 " + stock + "개 입니다.");
	   		hm.value = 1;
	   } else {
		   var temp = parseInt(hm.value) * sell_price
		
		   document.getElementById('totalSum').value = temp; 
		   document.getElementById('sum').value = temp;
		   document.getElementById('sum').value = document.getElementById('sum').value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	   }
	   
	}
	
	// 수량에 숫자만 들어오도록 체크
	function onlyNumber(e) {
	   var reg = /[^0-9]{1,100}$/g;
	   var value = $(e).val();   // $(e) : 선택자, jQuery에서 매개변수로 받은 Object를 지칭함
	   
	   if (reg.test(value)) { // 숫자만 들어오도록 test()로 체크
	      $(e).val(value.replace(reg, ""));
	      return false;
	   } 
	  
	}
	
	// 수량에 빈문자열이나 0이 들어오면 1반환
	function amountChk(e) {
		var reg = /[0-9]{1,100}$/g;
		var value = $(e).val();
		
		if (value == '' || value == 0) {
			$(e).val(1);
		} else {
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

	function insertOrder(frm) {
		console.log('order 함수');
		var p_id = $('#product_id').val();
		var p_count = $('#product_count').val();
		var sum = $('#totalSum').val();
		var pName = $("input:hidden[name='p_name']").val();

		location.href = "/store/storeOrder?p_id=" + p_id + "&p_count=" + p_count + 
				"&totalSum=" + sum + "&p_name=" + pName;
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
			async : false,
			success : function(data){
				if(data) {
					$('.appendReview').prepend(
							'<li class="rev_'+data.revId+'">'+
							'<hr>'+
							'<div class="comment-body">'+
							'<div class="comment-img">'+
							'<img src="/resources/images/reviewImage.jpg" />'+
							'</div>'+
							'<div class="comment-text">'+
							'<h3>'+data.member_serial+'</h3>'+
							'<span>'+data.revRegdate+'</span>'+
							'<label for="name">후기 제목</label>'+ 
							'<p>'+data.revTitle+'</p>'+
							'<label for="message">후기 내용</label>'+
							'<p>'+data.revContent+'</p>'+
							'<button class="btn custom-btn" onclick="deleteReview('+data.revId+')">삭제</button>'+
							'</div>'+
							'</div>'+
							'<hr>'+
							'</li>'	 
							
					); 
				}
				

				if(data.code == '0000') {
					alert(data.msg);
					reviewList();
				} else {
					alert(data.msg);
				}
			}
		});
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
	
	
	 function reviewList() {
	 
		var pId = ${p.p_id};
		$.getJSON("/store/reviewList" + "?p_id=" + pId, function(data){
			var str = "";

			$(data).each(function(){

				console.log(data);

				/* var reviewDate = new Date(this.review_regdate);
				reviewDate = reviewDate.toLocaleDateString("ko-US") */
					 
				str += '<li class="rev_'+this.review_id+'">'
					 + '<hr>'
					 + '<div class="comment-body">'
					 + '<div class="comment-img">'
					 + '<img src="/resources/images/reviewImage.jpg" />'
					 + '</div>'
					 + '<div class="comment-text">'
					 + '<h3>'+this.member_serial+'</h3>'
					 + '<span>'+this.review_regdate+'</span>'
					 + '<label for="name">후기 제목</label>'
					 + '<p>'+this.review_title+'</p>'
					 + '<label for="message">후기 내용</label>'
					 + '<p>'+this.review_content+'</p>'
					 + '<button class="btn custom-btn" onclick="deleteReview('+this.review_id+')">삭제</button>'
					 + '</div>'
					 + '</div>'
					 + '<hr>'
					 + '</li>';	 
					 
				
			});
	
			// 조립한 HTML코드를 추가
			$("section.reviewList ol").html(str);
		});
	 } // end of reviewList()
	
	 function storeOrder(frm) {
	 	frm.action="/store/storeOrder";
	  	frm.submit();
     }
	 
	 function toMyPage() {
		 var p_id = $("input:hidden[name='p_id']").val();
		 
		 location.href="/getUserInquiryList?p_id=" + p_id;
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
												<form name="form" method="POST" >
													<h4 style="color: #000; font-weight: 600;">${p.p_name }</h4>
													<input type="hidden" name="p_name" value="${p.p_name }">
													<input type="hidden" id="product_id" name="p_id" value="${p.p_id }"> 
													<input type="hidden" id="stock" name="stock" value="${p.stock }">
													<div class="product__details__button">
														<div class="product__details__widget">
															<ul>
																<li>
																	<h4>
																		판매금액&nbsp; <fmt:formatNumber value="${p.price }" pattern="#,###" />원
																	</h4>
																</li>
															</ul>
														</div>
														<div class="quantity">
															<div class="pro-qty">
																<h5>상품 수량
															      	 <input type="hidden" id="sell_price" name="price" value="${p.price }"> 
																	 <input type="button" class="store_btn2" value=" - " onclick="del();">
																	 <input type="text" id="product_count" class="store_input" onkeyup="onlyNumber(this); amountChk(this); changeValue();" maxlength="3" autocomplete="off" 
																	 	min="1" name="amount" value="1" size="3">
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
														<c:if test="${p.stock != 0 }">
															<input type="button" class="store_btn" value="장바구니" onclick="cartList(this.form)">
															<input type="button" class="store_btn" value="바로구매" onclick="insertOrder(this.form)">
															<input type="hidden" id="totalSum" name="totalSum">
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
													
													<br>
													<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab" style="border : 2px solid #666666;">
														<div id="reply" >
															<section class="reviewForm">
																<form name="reviewForm" id="reviewForm" method="post" autocomplete="off" >
																	<div style="padding : 70px;">
																		<h2>상품에 대한 후기를 자유롭게 남겨주세요!</h2>
																		<div style="background-color : white;">
																			<c:choose>
																				<c:when test="${p.p_type == 'dog'}">
																					<c:set var="imgDir" value="dogImg" />
																				</c:when>
																				<c:when test="${p.p_type == 'cat'}">
																					<c:set var="imgDir" value="catImg" />
																				</c:when>
																			</c:choose>
																			<div class="col-lg-3" style="display: inline-block">
																				<div class="product__details__smallpic">
																					<div class="product__details__slider__content">
																						<div class="details_smallpic" style="padding : 10px;">
																							<img style="width:120px; height:120px;" src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${p.s_image }">
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-lg-6" style="display: inline-block;" >
																				<div class="details_text" style="padding : 10px;">
																					<h6 style="color: #000">${p.p_name }</h6>
																					<div class="product__details__widget">
																						<ul>
																							<li>
																								<h5>
																									<fmt:formatNumber value="${p.price }" pattern="#,###" />
																									원
																								</h5>
																							</li>
																						</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																		<hr>
																			<div class="field">
																				<label for="name">후기 제목</label> <input type="text"
																					class="form-control" id="revTitle"
																					name="review_title" placeholder="후기 제목">
																			</div>
																			<div class="form-group">
																				<label for="message">후기 내용</label>
																				<textarea id="message" class="form-control"
																					cols="20" rows="2" name="review_content"
																					style="resize: none;" placeholder="후기 내용"></textarea>
																			</div>
																			<div class="form-group">
																				<input type="button" onclick="reviewInsert()" value="리뷰 등록"
																					class="btn custom-btn" style="float: right;">
																				<input type="button" onclick="toMyPage()" value="상품 문의하기"
																					class="btn custom-btn">
																				<input type="hidden" name="p_id" value="${p.p_id}">
																				<input type="hidden" name="member_serial" value="999">
																			</div>
																		</div>
																</form>
															</section>
															<br><br>
															<section class="reviewList">
																<ol class="appendReview">
																	<%-- <li class="rev_${rList.review_id }">
																		 <hr>
																		 <div class="comment-body">
																		 <div class="comment-img">
																		 <img src="img/user.jpg" />
																		 </div>
																		 <div class="comment-text">
																		 <h3>${rList.nickname }</h3>
																		 <span>${rList.review_id }</span>
																		 <p>${rList.review_id }</p>
																		 <p>${rList.review_id }</p>
																		 <button class="store_btn" onclick="deleteReview(${rList.review_id })">삭제</button>
																		 </div>
																		 </div>
																		 <hr>
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

	<%@include file="/common/storeFoot.jsp" %>

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
	<script>
	</script>

</body>

</html>
