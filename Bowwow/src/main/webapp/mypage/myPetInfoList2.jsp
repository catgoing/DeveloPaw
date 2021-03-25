<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <!--Jua 폰트 import-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <!-- Dohyeon 폰트 import-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Favicon icon -->
    <link rel="icon" href="../resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="../resources/pages/waves/css/waves.min.css" type="text/css" media="all">
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
   .ererer{
 	  border: 1px solid black;
   } 
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
				<!-- 좌측 메뉴바 시작 -->
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<nav class="pcoded-navbar">
			<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
				<div class="pcoded-inner-navbar main-menu">
			    <div class="p-15 p-b-0">
			         <form class="form-material">
						<!-- 이부분 form을 없애면 좌측메뉴 시작부분이 위쪽으로 조금 올라감 -->
			         </form>
			     </div>
			  
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPageMain.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
			                 <span class="pcoded-mtext">마이 홈</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			          <!-- 회원번호(memberSerial)을 이용해서 내 정보 출력 -->
			             <a href="myInfo.do" class="waves-effect waves-dark">
			             <%-- <a href="myInfo.do?memberSerial=${memberSerial }" class="waves-effect waves-dark"> --%>
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">프로필</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPetInfoList.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">반려동물</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPostList.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">게시글</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myPoint.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">적립금(?)</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			     <ul class="pcoded-item pcoded-left-item">
			         <li class="">
			             <a href="myInquiry.do" class="waves-effect waves-dark">
			                 <span class="pcoded-micon">
			                     <!-- <i class="ti-id-badge"></i><b>A</b> -->
			                 </span>
			                 <span class="pcoded-mtext">1:1문의</span>
			                 <span class="pcoded-mcaret"></span>
			             </a>
			         </li>
			     </ul>
			 </div>
		</nav>
		
	<!-- 좌측 메뉴바 끝 -->
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
                                        <div class="my-pet">
	                                        <div class="pet-list">
		                                        <div class="list-inner">
			                                        <div class="pet-img">이미지</div>
			                                        <div class="pet-name">이름</div>
			                                        <div class="pet-detail">
			                                        <!-- <button onclick="openPopUp('mypage/myPetInfo.jsp', '오픈팝업', 1, 2)">상세보기</button> -->
			                                        <input type="button" value="상세보기" data-bs-toggle="modal" href="#petDetail" role="button">
			                                        </div>			                                        
		                                        </div>
	                                        </div>
	                                        <div class="action-button">
	                                        	<input type="button" value="반려동물 추가하기" data-bs-toggle="modal" data-bs-target="#petInfo">
	                                        </div>
                                        </div>
                                    </div>
                             
<!-- Modal -->
<div class="modal fade" id="petInfo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addPetInfo">반려동물 정보등록</h5>
      </div>
      <div class="modal-body">
        <form>
	        <table class="ererer">
	       	 <thead>
	        </thead>
	        <tbody>
		        <tr>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
		        </tr>
		        <tr>
			        <td>d</td>
					<td>d</td>
					<td>d</td>
					<td>d</td>
		        </tr>
		        <tr>
			        <td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
		        </tr>
		        <tr>
			        <td>5</td>
					<td>4</td>
					<td>3</td>
					<td>2</td>
		        </tr>
		        <tr>
			        <td rowspan="4" colspan="2">1</td>
					<td>3</td>
					<td>4</td>
		        </tr>
		        <tr>
					<td>3</td>
					<td>2</td>
		        </tr>
		        <tr>
					<td>2</td>
					<td>2</td>
		        </tr>
		        <tr>
					<td>1</td>
					<td>1</td>
		        </tr>
	        </tbody>
			<!-- <div class="popup-inner text-pet">
				<div class="my-pet-detail">
					<select>
						<option name="animalType" value="dog">강아지</option>
						<option name="animalType" value="cat">고양이</option>
					</select>
					<input type="text" name="petName">
					<input type="text" name="petAge">
					<input type="text" name="petGender">
					<input type="text" name="petBirth">
					<input type="text" name="petVariety">
					<input type="text" name="tnr">
					<input type="text" name="petSize">
					<input type="text" name="petWeight">
					<input type="text" name="neckLength">
					<input type="text" name="backLength">
					<input type="text" name="chestLength">
					<textarea value="petEtc"></textarea>
					<input type="file" accept="image/*" name="imageSource">
				</div>
			</div> -->
        </table>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="saveInfo(this.form)">정보 저장</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



<!-- First modal dialog : 상세보기-->
<div class="modal" id="petDetail" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
	    <form>
			<div class="popup-inner img-pet" id="petimg">동물이미지1</div>
			<div class="popup-inner text-pet">
			<div class="my-pet-detail">
				<h2 id="petname">${pet.petName }</h2>
				<ul>
					<li id="gender">성별${pet.petGender }</li>
					<li id="variety">품종${pet.petVariety }</li>
					<li id="birthday">생일${pet.petBirth }</li>
				</ul>
				<div class="textMain-wrap">
					<div class="box-detail" id="detail_age">
						<h3>나이</h3>
						<p id="petAge">${pet.petAge }</p>
					</div>
					<div class="box-detail" id="detail_size">
						<h3>체형</h3>
						<p id="petSize">${pet.petSize }</p>
					</div>
					<div class="box-detail" id="detatl_weight">
						<h3>무게</h3>
						<p id="petWeight">${pet.petWeight }</p>
					</div>
					<div class="box-detail" id="detail_neck">
						<h3>목둘레</h3>
						<p id="petNeck">${pet.neckLength }</p>
					</div>
					<div class="box-detail" id="detail_back">
						<h3>등길이</h3>
						<p id="petBack">${pet.backLength }</p>
					</div>
					<div class="box-detail" id="detail_chest">
						<h3>가슴둘레</h3>
						<p id="petChest">${pet.chestLength }</p>
					</div>
				</div>
				<div class="textSub-wrap">
					<div class="box-detail" id="detail_etc">
						<h3>특이사항</h3>
						<p id="petEtc">${pet.petEtc }</p>
					</div>
				</div>
			</div>
			</div>
		</form>
      <div style="float:left">
      </div>
      <div class="modal-footer">
        <!-- Toogle to second dialog -->
      <button class="btn btn-primary" data-bs-target="#petInfo" data-bs-toggle="modal" data-bs-dismiss="modal">정보 수정</button>
      <button class="btn btn-primary" onclick="javascript:goDelete(this.form);">정보 삭제</button>
      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Second modal2 dialog : 수정 -->
<div class="modal fade" id="modifyPet" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      	
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
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
    <script type="text/javascript" src="../resources/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="../resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="../resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="../resources/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="../resources/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="../resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="../resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="../resources/js/pcoded.min.js"></script>
    <script src="../resources/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="../resources/js/script.js "></script>
</body>


</html>