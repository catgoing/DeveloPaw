<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="icon" href="../resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="../	resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="../resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="../resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="../resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="../resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/test.css">
<style>
  .featured__item__text { width: 150px; }
</style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<%@include file="../common/sidebar.jsp" %>
<div id="layout_body" class="layout_body">
						<script>
							var productNo = '3127';
							var productCategory = encodeUIRComponent(encodeUIRComponent("0011"));
							var productName = '배변패드';
							var productPrice = "15000".replace(/[^0-9]/g,'');
						</script>
						<script>
							dataLayer.push({
								'event': 'viewItem', 
								'ecommerce' : {
									'detail' : {
										'actionField' : {'list' : productCategory},
										'products' : [{
											'id' : productNo,
											'name' : productName,
											'price' : productPrice,
											'list' : productCategory,
											'category' : productCategory,
											
										}]
									}
								}
							});
						</script>
						<script>

						// 모바일 헤더 영역 제목변경
						$(".back_header h4").text("댕댕이");

					    function addToCart() {

					        var products = [];
					        var productTotalPrice = 0;
					        $('.goods_quantity_table .quanity_row.option_tr').each(function() {
					            // console.log($(this));

					            var productQuantity = $(this).find('.onlynumber.ea_change').val();
					            // console.log(productQuantity);
					            var price = $(this).find('.out_option_price').html();
					            price = parseInt(price.replace(/[^0-9]/g,''));

					            if(!isNaN(productPrice) && !isNaN(productQuantity)) {
					                products.push({
					                    'id': productNo,
					                    'name': productName,
					                    'category': productCategory,     // Product category (string).
					                    'price': parseInt(price / productQuantity),
					                    'quantity': productQuantity
					                });
					                productTotalPrice += price;
					            }
					        });

					        console.log(products);
					        console.log(productTotalPrice)


					        if(products.length > 0) {
					            dataLayer.push({
					                'event': 'addToCart',
					                'ecommerce': {
					                    'currencyCode': 'KRW',
					                    'add': {                                // 'add' actionFieldObject measures.
					                        'products': products
					                    }
					                }
					            });
					        }
					    }
					    </script>
					    <script type="text/javascript">
					    var addToCartSelector = '#addCart';
					    callbackIsVisible(addToCartSelector, function() {
					        $(addToCartSelector).click(function() {
					            addToCart()
					        })
					    })
					    </script>
					    <script>

						var gl_goods_price = 0;
						var gl_event_sale_unit = 0;
						var gl_cutting_sale_price = 0;
						var gl_cutting_sale_action = "dscending";
						var gl_multi_discount_use 	= "0";
						var gl_multi_discount_unit = "";
						var gl_multi_discount 		= 0;
						var gl_multi_discount_ea 	= 0;
						var gl_option_view_type = "divide";
						var gl_options_count = 1;
						var gl_opttag = '<tr class="quanity_row">';
						var gl_min_purchase_limit = 'unlimit';
						var gl_min_purchase_ea = 0;
						var gl_max_purchase_limit = 'unlimit';
						var gl_max_purchase_ea = 0;
						var gl_member_seq = "3149";
						var gl_request_uri = "%2Fgoods%2Fview%3Fno%3D4562";
						var gl_goods_seq = 0;
						var gl_option_divide_title_count = 0;
						var gl_skin = "responsive_pet_familiar_gl";
						var gl_string_price_use = "";
						var gl_string_button_use = "";

						var gl_option_n0 = [{"opt":"","stock":"99","price":88000,"consumer_price":"0.00","reservation":0,"infomation":"","color":"","zipcode":null,"address_type":null,"address":null,"addressdetail":null,"address_street":null,"newtype":null,"codedate":null,"sdayinput":null,"fdayinput":null,"dayauto_type":null,"sdayauto":null,"fdayauto":null,"dayauto_day":null,"biztel":null,"coupon_input":"0","package_option_seq1":"0","package_option_seq2":"0","package_option_seq3":"0","package_option_seq4":"0","package_option_seq5":"0","package_option1":"","package_option2":"","package_option3":"","package_option4":"","package_option5":"","option_seq":"62582","goods_seq":"4562","package_error":false,"chk_stock":true,"ori_price":88000,"opspecial_location":null,"ismobile":true}];


						gl_goods_price = 88000;
						gl_multi_discount 		= 0.00;
						gl_min_purchase_ea = 1;
						gl_goods_seq = 4562;


						/*
						var PlusMobileTaps = {};
						PlusMobileTaps.hiddenTab = $('<div>').appendTo(document.body).css({position:'fixed',top:0,left:0,width:'100%',height:0,zIndex:999});

						PlusMobileTaps.tabFlyingmode = function(type) {
							if( type && !$('#goods_contents_quick').hasClass('flyingMode') ){
								$('#goods_contents_quick').css('padding-top',$('#goods_title_bar').height()).addClass('flyingMode');
								$('#goods_tabs').css('top',$('#goods_title_bar').height()).appendTo(PlusMobileTaps.hiddenTab);
							}else if( !type && $('#goods_contents_quick').hasClass('flyingMode') ){
								$('#goods_contents_quick').removeClass('flyingMode').css('padding-top',0);
								$('#goods_contents_quick').prepend( $('#goods_tabs').css('top',$('#goods_title_bar').height()) );
							}
						}

						PlusMobileTaps.scrollTabsFunc = function() {
							var sc = $(window).scrollTop(),
								headerH = $('#goods_title_bar').height(),
								detailtabH = $('#goods_tabs').height(),
								contH = parseInt($('.event_datetime').height()+$('#goods_view_quick').height());
							if(sc == 0 && contH == 0)	$('#goods_tabs').hide();
							else						$('#goods_tabs').show();
							if( sc > headerH ){
								$('#goods_title_bar').addClass('flyingMode');
							}else{
								$('#goods_title_bar').removeClass('flyingMode');
							}

							if( sc < contH ){
								PlusMobileTaps.tabFlyingmode(false);//해더타이틀 숨김
							}else{
								PlusMobileTaps.tabFlyingmode(true);
							}
						}
						*/

						var get_preload_func = function(){
							$.ajax({
								url: "/goods/view_contents?no=4562&zoom=1&view_preload=1",
								type: "get",
								success : function(e){
									$('.goods_view_contents').html(e);
								}
							});
						};

						$(document).ready(function(){
							/*
							if	(window.location.hash == '#goods_review') {
								$('#goods_review_frame,#goods_qna_frame').load(function(){
									$('.goods_information_tabs li:eq(1)').click();
									$('html,body').animate({scrollTop:$('html,body').height()+500},'fast');
								});
							}
							*/

							setSlideSwipe('.slides_wrap', '.main_tabs_contents', 'resimg_num');


							$("select[name='viewOptions[]']").last().bind("change",function(){
								gl_opttag = '<td class="quantity_cell option_text">';
							});

							// 관련상품 옵션/수량변경 클릭시
							$("button.btn_option_modify").bind("click",function() {
								var id	= $(this).attr("id");
								option_open(id);
							});

							// 관련상품 장바구니 클릭시
							$("button.goodscart").bind("click",function() {
								var id	= $(this).attr("id");
								id = id.replace("goodscart_","");

								if($("div#optional_changes_area_"+id).html() == ""){
									option_open(id);
								}else{
									if(check_option(this)){
										$("#optional_changes_form_"+id).submit();
									}
								}
							});


							// 상품이미지 페이징
							if($("#goods_thumbs_paging").length){
								var thumbs_max_page = parseInt('1');
								$("#goods_thumbs_paging").customMobilePagination({
									'style' : 'paging_style_5',
									'now_page' : 1,
									'max_page' : thumbs_max_page,
									'btn_auto_hide' : false,
									'on_prev' : function(){
										var idx = parseInt($("#goods_thumbs_paging").attr('idx'));
										var newidx = idx==0?thumbs_max_page-1:idx-1;
										resimg_num(newidx);
									},
									'on_next' : function(){
										var idx = parseInt($("#goods_thumbs_paging").attr('idx'));
										var newidx = idx==thumbs_max_page-1?0:idx+1;
										resimg_num(newidx);
									},
								});
							}


							$("img[data-original]").lazyload();

							/* 상품상세 - 상품설명 탭(대쉬보드) */
							/*
							  $(document).on('on',PlusMobileTaps.scrollTabsFunc);
							  $(document).on('scroll',PlusMobileTaps.scrollTabsFunc);
							  $(document).on('touchmove',PlusMobileTaps.scrollTabsFunc);
							*/

							$(".set_preload").one('inview',get_preload_func);

							/* #20936 2018-09-27 ycg 네이버페이 배송옵션 변경 이벤트 수정 - 시작 */
							var npay =  $("select[name='shipping_method'] option:selected").attr('npay');
							if(npay=='Y'){
								$(".npay_area").show();
								$(".goods_npay").show();
							}else{
								$(".npay_area").hide();
								$(".goods_npay").hide();
							}
							/* #20936 2018-09-27 ycg 네이버페이 배송옵션 변경 이벤트 수정 - 종료 */

							/* 회원가 토글 brownai */
							$(".benifit_price").bind("click", function(){
								$(".group_table").toggle();
							});
						});

						// 티켓상품 지도변경 버튼 :: 2014-04-02 lwh
						function setMapajax(){
							var option_seq	= $("#option_location option:selected").val();
							var goods_seq	= $("#option_location option:selected").attr('goods_seq');

							$.ajax({
									type: "post",
									url: "../goods/coupon_location_ajax",
									data: {'option_seq':option_seq, 'goods_seq':goods_seq, 'width':'300'},
									success: function(result){
										$("#NaverMap").html('');
										$("#map_area").html(result);
									}
								});
						}

						function detail_contents_toggle(btn,contents){
							if($("#"+contents).is(":hidden")){
								$("#"+contents).show();
								if($(btn).is('.btn_open_small')) $(btn).addClass('btn_close_small');
							}else{
								$("#"+contents).hide();
								if($(btn).is('.btn_close_small')) $(btn).removeClass('btn_close_small');
							}
						}

						// 배송정보 변경 :: 2016-07-15 lwh
						function view_delivery_cost(){
							// 희망배송일 레이어 닫기 및 초기화
							$(".hopCalendarLayer").hide();
							$("#hop_select_date").val('');

							var set_seq = $("select[name='shipping_method']").val();
							var prepay_info = $("select[name='shipping_method'] option:selected").attr('prepay_info');
							var hop_date = $("select[name='shipping_method'] option:selected").attr('hop_date');

							// 배송비 결제 정보
							if(prepay_info == 'delivery' || prepay_info == 'all'){
								$("#shipping_prepay_info").val('delivery');
							}else{
								$("#shipping_prepay_info").val('postpaid');
							}
							if	(prepay_info)	chg_prepayinfo(prepay_info);			// 선착불 변경
							if	(hop_date)		$("#hop_select_date").val(hop_date);	// 희망배송일 자동지정

							$(".set_lay").hide();
							$(".shipping_set_area").find(".set_"+set_seq).show();

							/* #20936 2018-09-27 ycg 네이버페이 배송옵션 변경 이벤트 수정 - 시작 */
							var npay =  $("select[name='shipping_method'] option:selected").attr('npay');
							if(npay=='Y'){
								$(".npay_area").show();
								$(".goods_npay").show();
							}else{
								$(".npay_area").hide();
								$(".goods_npay").hide();
							}
							/* #20936 2018-09-27 ycg 네이버페이 배송옵션 변경 이벤트 수정 - 종료 */
						}

						// 자세히보기 배송비 안내에서 배송정보 변경 :: 2016-08-10 lwh
						function chg_delivery_info(ship_set_seq,store_seq,prepay_info){
							$("select[name='shipping_method']").val(ship_set_seq).trigger('change');
							if (prepay_info){
								$("#shipping_prepay_info").val(prepay_info);
								chg_prepayinfo(prepay_info);
							}
							if(store_seq)		$("#shipping_store_seq").val(store_seq);
							closeDialog('shipping_detail_lay');
						}

						// 선착불 여부 변경
						function chg_prepayinfo(prepay_info){
							// 배송비 결제 정보
							var res_msg	= '';
							var msg		= getAlert('sy004') == undefined ? '선불' : getAlert('sy004');
							var msg2	= getAlert('sy003') == undefined ? '착불' : getAlert('sy003');

							if			(prepay_info == 'all'){
								$("#shipping_prepay_info").val('delivery'); // 선불
								res_msg = msg;
							}else if	(prepay_info == 'delivery'){
								$("#shipping_prepay_info").val('delivery'); // 선불
								res_msg = msg;
							}else if	(prepay_info == 'postpaid'){
								$("#shipping_prepay_info").val('postpaid'); // 착불
								res_msg = msg2;
							}

							var selected_method = $("select[name='shipping_method'] option:selected").attr('prepay_info');
							if(selected_method == 'all'){
								// 선택 배송 결제 방법 색상 처리 :: 2019-01-30 lwh
								var sel_prepay_info = $("#shipping_prepay_info").val();
								$('.prepay_info_area').removeClass('on');
								$('.prepay_info_'+sel_prepay_info).addClass('on');
								$("#shipping_prepay_txt").html('('+res_msg+')');
							}else{
								$("#shipping_prepay_txt").html('');
							}

							var shipping_set_code = $("select[name='shipping_method'] option:selected").attr('shipping_set_code');
							if(shipping_set_code == 'direct_store'){
								$("#shipping_prepay_txt").html('');
							}
						}

						// 컬러 옵션 클릭시 상품상세컷 연결 leewh
						function clickSelectColor(color) {
							$("img[id^=dot_]").each(function(){
								if ($(this).attr('color')==color) {
										$(this).trigger("click");
										return false;
								}
							});
						}

						function resimg_num(i){
							var slide_current = $(".slides_wrap").data('slide_current');
							$('.main_tabs_contents').eq(slide_current).removeClass('active');
							$('.main_tabs_contents').eq(i).addClass('active').show();
							var k=0;
							$('.main_tabs_contents').each(function(){
								if(i == k) $(this).show();
								else $(this).hide();
								k = k + 1;
							});
							$(".slides_wrap").data('slide_current',i);

							$("#goods_thumbs_paging").attr('idx',i);
							$("#goods_thumbs_paging .paging_btn_num_now").html(parseInt(i)+1);
						}

						var old_id = "";
						function option_open(id){
							var url = "recently_option?no="+id;
							var area_obj = $("div#optional_changes_area_"+id);

							// 닫기 옵션
							if(old_id == id){ $(".optional_area").slideUp(500); old_id = ""; $(".optional_area").html(""); return; }
							else			{ $(".optional_area").slideUp(500);…
					    </script>
					    <script type="text/javascript" src="/data/skin/responsive_pet_familiar_gl/common/minishop.js"></script>
					    <script type="text/javascript" src="/app/javascript/js/goods-view.js?dummy=20210325101624"></script>
					    <script type="text/javascript" src="/app/javascript/plugin/lazy/jquery.lazyload.min.js"></script>
					    <script type="text/javascript" src="/app/javascript/plugin/jquery.inview.js"></script>
					    <style type="text/css">
							@media only screen and (max-width:767px) {
								/* 플로팅 - BACK/TOP(대쉬보드) */
								#floating_over .ico_floating_back {bottom:73px !important;}
								#floating_over .ico_floating_top {bottom:73px !important;}
								#floating_over .ico_floating_foward {bottom:73px !important;}
								#floating_over .ico_floating_zoom {bottom:115px !important;}
							}
					    </style>
					    <div class="ajaxLineMap search_nav">
					    	<a class="home" href="/main">홈</a>
					    	<div class="navi_linemap2" catecode="0010" >
					    		<span class="selected_cate">댕댕이</span>
					    		<ul class="navi_linemap_sub" style="display:none;"></ul>
					    	</div>
					    	<div class="navi_linemap2" catecode="00100001">
					    		::before
					    		<span class="selected_cate">사료</span>
					    		<ul class="navi_linemap_sub" style="display:none;"></ul>
					    	</div>
					    	<div class="navi_linemap2" catecode="001000010001">
					    		::before
					    		<span class="selected_cate">퍼피</span>
					    		<ul class="navi_linemap_sub" style="display:none;"></ul>
					    	</div>					    	
					    </div>
					    
					    <script type="text/javascript">
						$(function() {
							$('.ajaxLineMap .navi_linemap2').on('click', function() {
								var catecode = $(this).attr('catecode');
								var that = $(this).find('.navi_linemap_sub');

								if ( $(that).is(':hidden') ) {
									if($(that).html()){
										$('.ajaxLineMap .navi_linemap_sub').hide();
										$(that).show();
									}else{
										$(that).empty();
										// 데이터 동적 호출
										$.getJSON('category_depth?code='+catecode, function(data) {
											$(data).each(function(idx, val){
												if(val.category_code == catecode){
													$(that).append('<li class="on"><a href="/goods/catalog?code=' + val.category_code + '">' + val.title + '</a></li>');
												}else{
													$(that).append('<li><a href="/goods/catalog?code=' + val.category_code + '">' + val.title + '</a></li>');
												}
											});
											$('.ajaxLineMap .navi_linemap_sub').hide();
											$(that).show();
										});
									}
								} else {
									$(that).hide();
								}
							});
						});
					    </script>
					    
					    <div id="goods_view">
					    	<div class="goods_thumbs_spec">
					    		<style>
								/*#goods_thumbs { width:560px; }*/
								#goods_thumbs {width:670px;}
					    		</style>
					    		<div id="goods_thumbs" class="bd_bottom">
					    			<div class="slides_container hide" style="position: relative; display: block;">
					    				<div class="viewImgWrap" >
					    					<img src="" onerror="this.src='/data/skin/responsive_pet_familiar_gl/images/common/noimage_wide.gif'"
					    					title alt="위트,메라독 익스클루시브(칠면조&쌀) 퍼피 대용량 15kg" >
					    				</div>
					    				<a id="btn_zoom_view" href="javascript:popup('zoom?no=4562&popup=1',577, document.body.clientHeight,'yes')">
					    				확대보기</a>
					    			</div>
					    			<script type="text/javascript">

									//$("#goods_thumbs .pagination").hide().width('500').show();
									var setGoodsThumbsPaginationScroll = function(){
										var paginationWidth = $("#goods_thumbs .pagination").width();
										var currentWidth = $("#goods_thumbs .pagination>li.current").outerWidth();
										var currentLeft = $("#goods_thumbs .pagination>li.current").position().left;

										var gap = ($("#goods_thumbs .pagination").scrollLeft()+currentLeft+(currentWidth/2))-(paginationWidth/2);

										$("#goods_thumbs .pagination").stop(true,true).animate({'scrollLeft':gap});
									};
									$("#goods_thumbs .slides_container>.viewImgWrap:gt(0)").hide();
									$("#goods_thumbs .pagination>li:eq(0)").addClass('current');
									$("#goods_thumbs .slides_container").show();
									$("#goods_thumbs .pagination>li").bind('click',function(){
										var i = $("#goods_thumbs .pagination>li").index(this);
										$("#goods_thumbs .slides_container>.viewImgWrap").hide().eq(i).show();
										$("#goods_thumbs .pagination>li").removeClass('current').eq(i).addClass('current');
										setGoodsThumbsPaginationScroll();
										return false;
									});
									$("#goods_thumbs .prev").bind('click',function(){
										var i = $("#goods_thumbs .slides_container>.viewImgWrap").index($("#goods_thumbs .slides_container>.viewImgWrap:visible"));
										if(i<=0) i = $("#goods_thumbs .slides_container>.viewImgWrap").length-1;
										else i--;
										$("#goods_thumbs .slides_container>.viewImgWrap").hide().eq(i).show();
										$("#goods_thumbs .pagination>li").removeClass('current').eq(i).addClass('current');
										setGoodsThumbsPaginationScroll();
										return false;
									});
									$("#goods_thumbs .next").bind('click',function(){
										var i = $("#goods_thumbs .slides_container>.viewImgWrap").index($("#goods_thumbs .slides_container>.viewImgWrap:visible"));
										if(i>=$("#goods_thumbs .slides_container>.viewImgWrap").length-1) i = 0;
										else i++;
										$("#goods_thumbs .slides_container>.viewImgWrap").hide().eq(i).show();
										$("#goods_thumbs .pagination>li").removeClass('current').eq(i).addClass('current');
										setGoodsThumbsPaginationScroll();
										return false;
									});
					    			</script>
					    		</div>
					    		<div id="goods_spec">
					    			<!-- 업체명 -->
					    			<div class="provider_area">
					    				<p class="name">비본듀드</p>
					    			</div>
					    			<!-- 타이틀 -->
					    			<div class="detail_title_area">
					    				<h3 class="name">메라독 익스클루시브(칠면조&쌀) 퍼피 대용량 15kg</h3>
					    				<p class="seq_num Hide">상품번호 : 4562</p>
					    			</div>
					    			<div class="detail_txt_area">
					    				<p class="summary"></p>
					    				<ul class="hashtag_ul">
					    				
					    				</ul>
					    			</div>
					    			<form name="goodsForm" method="post" enctype="multipart/form-data" action="../order/add" target="actionFrame">
					    				<input type="hidden" name="goodsSeq" value="4562">
					    				<div class="sns_wish">
					    					<a href="javascript:void(0)" id="btnSnsShare" class="btn_sns_share" title="SNS 공유">
					    						<span designelement="text" textindex="1" texttemplatepath="cmVzcG9uc2l2ZV9wZXRfZmFtaWxpYXJfZ2wvZ29vZHMvdmlldy5odG1s">
					    						공유
					    						</span>
					    					</a>
					    					<div id="snsListDetail" class="snsbox_area" style="display:none;">
					    						<ul class="snsbox clearbox">
					    							<li>
					    								<img src="/data/skin/responsive_pet_familiar_gl/images/board/icon/sns_f0.gif" alt="페이스북" title="페이스북" width="33" height="33" valign="middle" onclick="snsWin('fa','%EB%A9%94%EB%9D%BC%EB%8F%85+%EC%9D%B5%EC%8A%A4%ED%81%B4%EB%A3%A8%EC%8B%9C%EB%B8%8C%28%EC%B9%A0%EB%A9%B4%EC%A1%B0%26amp%3B%EC%8C%80%29+%ED%8D%BC%ED%94%BC+%EB%8C%80%EC%9A%A9%EB%9F%89+15kg+-+%EC%9C%84%ED%8A%B8', '%EB%A9%94%EB%9D%BC%EB%8F%85+%EC%9D%B5%EC%8A%A4%ED%81%B4%EB%A3%A8%EC%8B%9C%EB%B8%8C%28%EC%B9%A0%EB%A9%B4%EC%A1%B0%26%EC%8C%80%29+%ED%8D%BC%ED%94%BC+%EB%8C%80%EC%9A%A9%EB%9F%89+15kg', '', 'http%3A%2F%2Fshop.witkorea.kr%2Fgoods%2Fview%3F%26no%3D4562','','','','');">
					    							</li>
					    						</ul>
					    					</div>
					    					<!-- 찜 -->
					    					<a href="javascript:void(0)" id="wishimg" class="ico_wish" usewish="n" onclick="wish_chg();" title="찜하기(위시리스트에 추가)">
					    						<span designelement="text" textindex="2" texttemplatepath="cmVzcG9uc2l2ZV9wZXRfZmFtaWxpYXJfZ2wvZ29vZHMvdmlldy5odG1s">
					    							찜
					    						</span>
					    					</a>
					    				</div>
					    				<ul class="goods_spec_sections">
					    					<li class="deatil_price_area">
					    						<div class="deatil_sale_rate">
					    							<p class="inner"></p>
					    						</div>
					    						<p class="default_price">
					    							<span class="num">88000</span>
					    							<span class="price_won">원</span>
					    						</p>
					    						<div class="goods_spec_saving_benefit">
					    							<p>
					    								<span>440원</span>
					    								"&nbsp;적립예정
					    							</p>
					    						</div>
					    						::after
					    					</li>
					    				</ul>
					    			</form>
					    		</div>
					    	</div>
					    </div>
					</div>
</body>
</html>