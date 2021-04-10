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
        <!-- Dohyeon 폰트 import-->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">

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
        <link rel="stylesheet" type="text/css" href="/resources/css/cartStyle.css">
        <link rel="stylesheet" type="text/css" href="/resources/css/test.css">
       <script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>
       <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
       <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
       <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5c1b87a3ea48432cd965082eccebcd8"></script>

    <style>

    .featured__item__text {
        width: 150px;
    }

    .cart-product-title{
        width: 33%;
    }
    .cart-product-value{
        width: 33%;
    }


    </style>
    <script type="text/javascript">

       function execMap(){
            new daum.Postcode({
                oncomplete: function(data) {
                    var fullAddr = '';
                    var extraAddr = '';
                    var zoneCode = '';

                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.roadAddress;
                        zoneCode = data.zonecode;
                    } else {
                        fullAddr = data.roadAddress;
                        zoneCode = data.zonecode;
                    }
                    if(data.userSelectedType === 'R'){
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }



                    document.getElementById("userAddress").value = fullAddr;
                    document.getElementById("userZonecode").value = zoneCode;
                }
            }).open();
        }


    function chkBtn(){
       if(document.getElementById('userZonecode').value == ""){
            alert("주소를 입력해 주세요.");
            checkout.userZonecode.focus();
            return false;
        }  
       
       if(document.getElementById('phone').value == ""){
            alert("핸드폰 번호를 입력해주세요");
            checkout.phone.focus();
            return false;
        }  

       if ($("input:checkbox[name='chk_1']").is(":checked") == false || $("input:checkbox[name='chk_2']").is(":checked") == false){
            alert("동의 버튼을 눌러주셔야 결제가 진행됩니다.");
            checkout.chk_1.focus();
            checkout.chk_2.focus();
            return false;
        } else return true;         
       
       
    }


    function order_check(){
        if(document.getElementById('userZonecode').value == ""){
            alert("주소를 입력해 주세요.");
            checkout.userZonecode.focus();
            return false;
        }  else if(document.getElementByClassName('phone').value == ""){
            alert("핸드폰 번호를 입력해주세요");
            checkout.phone.focus();
            return false;
        }

        else return true;

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
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<!-- Shopping Cart Section Begin -->
							<section class="shopping-cart spad">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
										<c:choose>
											<c:when test="${order.p_type == 'dog'}">
												<c:set var="imgDir" value="dogImg" />
											</c:when>
											<c:when test="${order.p_type == 'cat'}">
												<c:set var="imgDir" value="catImg" />
											</c:when>
										</c:choose>
											<div class="cart-table" style="background-color: white;">
												<table>
													<thead>
														<tr>
															<th>상품정보</th>
															<th class="p-name">상품명</th>
															<th>수량</th>
															<th>주문금액</th>
														</tr>
													</thead>
													<tbody>
														<tr style="border-bottom: 1px solid #ddd;">
															<td class="cart-pic first-row">
															<img style="width: 100px; height: 100px;"
																src="https://projectbit.s3.us-east-2.amazonaws.com/${imgDir }/${order.s_image }">
															<td class="cart-title first-row">
																<p>
																	<a href="detail?p_id=${order.p_id }">${order.p_name }</a>
																</p>
															</td>
															<td class="qua-col first-row">
																<div class="quantity">
																	<div class="top__text cart-product-value">x${order.amount }</div>
																</div>
															</td>
															<td class="total-price first-row">
																<div class="top__text cart-product-value">${order.sum }원</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</section>
							<section class="checkout spad">
								<div class="container" style="background-color: white;">
								<form action="insertOrder" onsubmit="return chkBtn();"
										method="POST" name="checkout" class="checkout__form"
										accept-charset="UTF-8">
										<div class="row">
											<div class="col-lg-8">
												<div class="checkout__order"
													style="background-color: white;">
													<h5>주문 상세 정보</h5>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-6">
															<div class="checkout__form__input">
																<p>
																	주문자 성명 <span>* (*)항목은 필수 입력 항목입니다.</span>
																</p>
																<input type="text" name="member_serial" value=999>
																<input type="hidden" id="p_id" name="p_id">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-6">
															<div class="checkout__form__input">
																<p>
																	핸드폰 <span>*</span>
																</p>
																<input type="text" id="phone" name="phone">
															</div>
														</div>
														<div class="col-lg-12">
															<div class="checkout__form__input">
																<p>
																	받으실 주소 <span>*</span><input type="button"
																		style="margin-left: 20px; width: 120px; text-align: center"
																		class="searchAddress" onclick="execMap()" value="주소찾기">
																</p>

																<input type="text" id="userZonecode" name="zip" readonly
																	placeholder="우편번호"> <input type="text"
																	id="userAddress" name="address" placeholder="주소"
																	readonly> <input type="text"
																	name="address_detail" placeholder="동,호수 등 상세 주소를 입력하세요">
															</div>
														</div>
														<div class="col-lg-12">
															<div class="checkout__form__checkbox"></div>
															<div class="checkout__form__input"></div>
															<div class="checkout__form__checkbox"></div>
															<div class="checkout__form__input">
																<p>배송 메모</p>
																<input type="text" id="memo" name="memo"
																	placeholder="ex) 부재시 경비실에 맡겨주세요.">
															</div>
															<div class="checkout__form__input">
																<input type="hidden" id="order_status"
																	name="order_status" value="주문 완료"> <input
																	type="hidden" id="pCount" name="amount"> <input
																	type="hidden" id="pSum" name="totalSum"> <input
																	type="hidden" id="pName" name="p_name"> <input
																	type="hidden" id="orderPoint" name="order_point">
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="checkout__order"
													style="background-color: white;">
													<h5>총 주문 내역</h5>
													<div class="checkout__order__total">
														<ul>
															<li>사용 적립금 <span>무료</span></li>
															<li>총 결제금액 <span>${order.totalSum }원</span></li>
														</ul>
													</div>
													<div class="checkout__order__widget">
														<label for="o-acc"> 개인정보 제3자 공유 동의(필수) <input
															type="checkbox" name="chk_1" id="o-acc"> <span
															class="checkmark"></span>
														</label>
														<p>Bowwow는 귀하께서 Bowwow 판매자로부터 상품 및 서비스를 구매하고자 할 경우,
															정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 24조의 2(개인정보 공유동의 등)에 따라 귀하의
															동의를 받아 귀하의 개인정보를 판매자에게 공유합니다. "개인정보 제3자 공유 동의"를 체크하실 경우
															개인정보 공유에 대해 동의한 것으로 간주합니다. 만약 본 개인정보 공유에 동의하지 않으신다면 동의를
															거부할 수 있으며, 이 경우 거래가 제한됩니다.</p>
														<label for="check-payment"> 위 상품 정보 및 거래 조건을
															확인하였으며, 구매 진행에 동의합니다.(필수) <input type="checkbox"
															name="chk_2" id="check-payment"> <span
															class="checkmark"></span>
														</label>
													</div>
													<button type="submit" class="site-btn"
														style="font-size: 1.5em;">결제하기</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</section>
							<!-- Shopping Cart Section End -->
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
    <script type="text/javascript">

            
    </script>    
</body>


</html>