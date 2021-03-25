<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Favicon icon -->
    <link rel="icon" href="/main/resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="/main/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="/main/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="/main/resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="/main/resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="/main/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/main/resources/css/test.css">
<style>
#mask {
    position: absolute;
    left: 0;
    top: 0;
    z-index: 999;
    background-color: #000000;
    display: none; }
.layerpop {
    display: none;
    z-index: 1000;
    border: 2px solid #ccc;
    background: #fff;
    cursor: move; }
.layerpop_area .content {
    width: 96%;    
    margin: 2%;
    color: #828282; }
    
</style>
<script>
 function wrapWindowByMask(){
	 var maskHeight = $(document).height();
	 var maskWidth = $(window).width();
	 
	 console.log("도큐먼트 높이: "+ maskHeight);
	 console.log("윈도우 사이즈: "+ maskWidth);
	 
	 $('#mask').css({'width': maskWidth,'height': maskHeight});
	 $('#mask').fadeTo("slow", 0.5);
 }
 
 function openPopup(){
	 $('.layerpop').css("position", "absolute");
	 $('.layerpop').css('top', (($(window).height() - $('.layerpop').outerHeight()) / 2) + $(window).scrollTop());
	 $('.layerpop').css('right',(($(window).width() - $('.layerpop').outerWidth()) / 2) + $(window).scrollLeft());
	 $('.layerpop').draggable();
	 $('#layerbox').show();
 }
 function openPopup2(){
	 $('.layerpop sub1').css("position", "absolute");
	 $('.layerpop sub1').css('top', (($(window).height() - $('.layerpop').outerHeight()) / 2) + $(window).scrollTop());
	 $('.layerpop sub1').css('right',(($(window).width() - $('.layerpop').outerWidth()) / 2) + $(window).scrollLeft());
	 $('.layerpop sub1').draggable();
	 $('#layerbox sub1').show();
 }
 function openPopup3(){
	 $('.layerpop sub2').css("position", "absolute");
	 $('.layerpop sub2').css('top', (($(window).height() - $('.layerpop').outerHeight()) / 2) + $(window).scrollTop());
	 $('.layerpop sub2').css('right',(($(window).width() - $('.layerpop').outerWidth()) / 2) + $(window).scrollLeft());
	 $('.layerpop sub2').draggable();
	 $('#layerbox sub2').show();
 }
 
 function closePopup(){
	 $('#layerbox').hide();
	 $('#mask').hide();
 }

 function goNewPet(frm) {
	 /* 폼 받아서 ajax처리 */
	 openPopup(); //레이어팝업 오픈
	 wrapWindowByMask(); //화면 마스크 효과
 }
 
 function goSub(frm){
	 var petType = frm.petType.value;
	 console.log(petType);
	 
	 if(petType=='dog'){
		 console.log("개선택");
		 closePopup();
		 openPopup2();
		 wrapWindowByMask();
	 } else if(petType=='cat'){
		 console.log("냥선택");
		 closePopup();
		 openPopup3();
		 wrapWindowByMask();
	 }
 }
 
 
 
</script>
</head>

<body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->
    
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
		<!-- 헤더 -->
		<%-- <tiles:insertAttribute name="header" /> --%>
		<%@include file="/common/header.jsp" %>
		
		<div class="pcoded-main-container">
			<div class="pcoded-wrapper">
				<!-- 좌측메뉴바 -->
				<%-- <tiles:insertAttribute name="menubar"/> --%>
				<%@include file="/common/myPageMenuBar.jsp" %>
				<!-- 본문 시작 -->  
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
							<!-- 페이지 제목 -->
							
							<!-- Main-body start 본문 시작 -->
							<div class="main-body">
							<div class="page-wrapper">
		                                
								<!-- Page-body start -->
								<div class="page-body">
								<div class="myPageInfo-header">
									<h2> 뫄뫄님의 페이지</h2>
								</div>
									<!-- <section class="featured spad">
										<div class="container">
											<div class="row">
												<div class="col-lg-12">
													<div class="section-title">
														<h2>(section-title)뫄뫄님의 페이지</h2>
													</div>
													<br>
		 										</div>
											</div>
										</div>
									</section> -->
                                        
                                        <div class="my-pet">
	                                        <div class="pet-list">
		                                        <div class="list-inner">
			                                        <div class="pet-img">이미지</div>
			                                        <div class="pet-name">이름</div>
			                                        <div class="pet-detail">
			                                        <!-- <button onclick="openPopUp('mypage/myPetInfo.jsp', '오픈팝업', 1, 2)">상세보기</button> -->
			                                        <input type="button" value="상세보기" onclick="javascript:goDetail('${petSerial }');" >
			                                        </div>			                                        
		                                        </div>
	                                        </div>
	                                        <div class="action-button">
	                                        	<input type="button" value="반려동물 추가하기" onclick="javascript:goNewPet();">
	                                        </div>
                                        </div>
                                        
                                    </div>
                                    
					<!-- 레이어팝업으로 등록테스트 -->
					<div id="mask"></div>
					
					<div id="layerbox" class="layerpop" style="width: 300px; height: 300px;">
						<div class="layerbox-content">
						<article class="layerpop_area">
						<!-- ajax로 입력한 정보 보내서 수정 후 완료처리-_-;; -->
						<form>
							<div class="select-pet-type">
								<div>이미지</div>
								<input type="radio" name="petType" value="dog">
							</div>
							
							<div class="select-pet-type">
								<div>이미지</div>
								<input type="radio" name="petType" value="cat">
							</div>
							<div class="select-btn">
								<input type="button" value="두번째 팝업go2" onclick="javascript:goSub(this.form);">
							</div>
						</form>
						</div>
						</article>
					</div>
					
					<div id="layerbox sub1" class="layerpop sub1" style="width: 300px; height: 300px;">
						<div class="layerbox-content">
						<div class="title">개</div>
						<article class="layerpop_area">
						<!-- ajax로 입력한 정보 보내서 수정 후 완료처리-_-;; -->
							<div class="popup-content detail-animal">
							<form>
								
							</form>
								<div class="popup-inner img-pet" id="petimg">동물이미지1</div>
								<div class="popup-inner text-pet">
								<div class="my-pet-detail">
									<h2 id="petname">${petName }</h2>
									<ul>
										<li id="gender">성별${petGender }</li>
										<li id="variety">품종${petVariety }</li>
										<li id="birthday">생일${petBirth }</li>
									</ul>
									<div class="textMain-wrap">
										<div class="box-detail" id="detail_age">
											<h3>나이</h3>
											<p id="petAge">${petAge }</p>
										</div>
										<div class="box-detail" id="detail_size">
											<h3>체형</h3>
											<p id="petSize">${petSize }</p>
										</div>
										<div class="box-detail" id="detatl_weight">
											<h3>무게</h3>
											<p id="petWeight">${petWeight }</p>
										</div>
										<div class="box-detail" id="detail_neck">
											<h3>목둘레</h3>
											<p id="petNeck">${neckLength }</p>
										</div>
										<div class="box-detail" id="detail_back">
											<h3>등길이</h3>
											<p id="petBack">${backLength }</p>
										</div>
										<div class="box-detail" id="detail_chest">
											<h3>가슴둘레</h3>
											<p id="petChest">${chestLength }</p>
										</div>
									</div>
									<div class="textSub-wrap">
										<div class="box-detail" id="detail_etc">
											<h3>특이사항</h3>
											<p id="petEtc">${petEtc }</p>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
						</article>
					</div>
					
					<div id="layerbox sub2" class="layerpop sub2" style="width: 300px; height: 300px;">
						<div class="layerbox-content">
						<div class="title">고양이</div>
						<article class="layerpop_area">
						<!-- ajax로 입력한 정보 보내서 수정 후 완료처리-_-;; -->
							<div class="popup-content detail-animal">
								<div class="popup-inner img-pet" id="petimg">동물이미지1</div>
								<div class="popup-inner text-pet">
								<div class="my-pet-menu" id="mypetmenu">
									<button id="mypetupdate" onclick="javascript:goUpdate('${petSerial }');">수정</button>
									<button id="mypetdelete" onclick="javascript:goDelete(this.form);">삭제</button>
								</div>
								<div class="my-pet-detail">
									<h2 id="petname">${petName }</h2>
									<ul>
										<li id="gender">성별${petGender }</li>
										<li id="variety">품종${petVariety }</li>
										<li id="birthday">생일${petBirth }</li>
									</ul>
									<div class="textMain-wrap">
										<div class="box-detail" id="detail_age">
											<h3>나이</h3>
											<p id="petAge">${petAge }</p>
										</div>
										<div class="box-detail" id="detail_size">
											<h3>체형</h3>
											<p id="petSize">${petSize }</p>
										</div>
										<div class="box-detail" id="detatl_weight">
											<h3>무게</h3>
											<p id="petWeight">${petWeight }</p>
										</div>
										<div class="box-detail" id="detail_neck">
											<h3>목둘레</h3>
											<p id="petNeck">${neckLength }</p>
										</div>
										<div class="box-detail" id="detail_back">
											<h3>등길이</h3>
											<p id="petBack">${backLength }</p>
										</div>
										<div class="box-detail" id="detail_chest">
											<h3>가슴둘레</h3>
											<p id="petChest">${chestLength }</p>
										</div>
									</div>
									<div class="textSub-wrap">
										<div class="box-detail" id="detail_etc">
											<h3>특이사항</h3>
											<p id="petEtc">${petEtc }</p>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
						</article>
					</div>
					
					<!-- 상세보기 -->
					<div id="layerbox detail" class="layerpop detail" style="width: 300px; height: 300px;">
						<div class="layerbox-content">
						<div class="title">개</div>
						<article class="layerpop_area">
						<!-- ajax로 입력한 정보 보내서 수정 후 완료처리-_-;; -->
							<div class="popup-content detail-animal">
								<div class="popup-inner img-pet" id="petimg">동물이미지1</div>
								<div class="popup-inner text-pet">
								<div class="my-pet-menu" id="mypetmenu">
									<button id="mypetupdate" onclick="팝업오픈">수정</button>
									<button id="mypetdelete" onclick="팝업오픈">삭제</button>
								</div>
								<div class="my-pet-detail">
									<h2 id="petname">${petName }</h2>
									<ul>
										<li id="gender">성별${petGender }</li>
										<li id="variety">품종${petVariety }</li>
										<li id="birthday">생일${petBirth }</li>
									</ul>
									<div class="textMain-wrap">
										<div class="box-detail" id="detail_age">
											<h3>나이</h3>
											<p id="petAge">${petAge }</p>
										</div>
										<div class="box-detail" id="detail_size">
											<h3>체형</h3>
											<p id="petSize">${petSize }</p>
										</div>
										<div class="box-detail" id="detatl_weight">
											<h3>무게</h3>
											<p id="petWeight">${petWeight }</p>
										</div>
										<div class="box-detail" id="detail_neck">
											<h3>목둘레</h3>
											<p id="petNeck">${neckLength }</p>
										</div>
										<div class="box-detail" id="detail_back">
											<h3>등길이</h3>
											<p id="petBack">${backLength }</p>
										</div>
										<div class="box-detail" id="detail_chest">
											<h3>가슴둘레</h3>
											<p id="petChest">${chestLength }</p>
										</div>
									</div>
									<div class="textSub-wrap">
										<div class="box-detail" id="detail_etc">
											<h3>특이사항</h3>
											<p id="petEtc">${petEtc }</p>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
						</article>
					</div>              
                                    
                                    
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="scroll-top" id="js-button" style="margin-bottom: 190px; margin-right: 30px;">
                <i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
            </button>
            <script type="text/javascript">
                scrollTop('js-button', 500);
                function scrollTop(elem,duration) {
                    let target = document.getElementById(elem);
                
                    target.addEventListener('click', function() {
                        let currentY = window.pageYOffset; 
                        let step = duration/currentY > 1 ? 10 : 100;
                        let timeStep = duration/currentY * step;
                        let intervalID = setInterval(scrollUp, timeStep);
                
                        function scrollUp(){
                            currentY = window.pageYOffset;
                            if(currentY === 0) {
                                clearInterval(intervalID);
                            } else {
                                scrollBy( 0, -step );
                            }
                        }
                    });
                }
                </script>
                
            </div>

        </div>
        
   	<!-- footer 푸터 시작부분-->
	<%-- <tiles:insertAttribute name="footer" /> --%>
	<%@include file="/common/footer.jsp" %>
	<!-- footer 푸터 끝부분-->

    <!-- Required Jquery -->
    <script type="text/javascript" src="/main/resources/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="/main/resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="/main/resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="/main/resources/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="/main/resources/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="/main/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="/main/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="/main/resources/js/pcoded.min.js"></script>
    <script src="/main/resources/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="/main/resources/js/script.js "></script>
</body>


</html>