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
.insert-title{
	width : 15%;
}
    
    
</style>
<script>

 function newPetInfo(frm) {
	 /* 폼 받아서 ajax처리 - patch */
 }
 
 function deletePetInfo(frm){
	 /*petSerial로 ajax처리*/
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
 
 function setPetSerial(serial){
	console.log(serial);
	$('#petSerial').val(serial);
 }
 
 function transferType(type){
	 console.log(type);
	 $('#animalType').val(type);
 }
/*  $('#closeModalBtn').on('click', function(){
	 $('#petInfo').modal('hide');
	 console.log("click close");
}); */

 
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
        <div class="pcoded-main-container navbar-wrapper">
        <!-- 헤더 -->
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
						             <a href="myPageMain.jsp" class="waves-effect waves-dark">
						                 <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
						                 <span class="pcoded-mtext">마이 홈</span>
						                 <span class="pcoded-mcaret"></span>
						             </a>
						         </li>
						     </ul>
						
						     <ul class="pcoded-item pcoded-left-item">
						         <li class="">
						          <!-- 회원번호(memberSerial)을 이용해서 내 정보 출력 -->
						             <a href="myInfo.jsp" class="waves-effect waves-dark">
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
						             <a href="myPetInfoList2.jsp" class="waves-effect waves-dark">
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
						             <a href="myPostList.jsp" class="waves-effect waves-dark">
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
						             <a href="myPoint.jsp" class="waves-effect waves-dark">
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
						             <a href="myInquiry.jsp" class="waves-effect waves-dark">
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
			                                        <%-- <input type="hidden" id="petSerial" value="${pet.petSerial }"> --%>
			                                        <input type="button" value="상세보기" data-toggle="modal" href="#petDetail" role="button" onclick="setPetSerial(${pet.petSerial })">
			                                        </div>			                                        
		                                        </div>
	                                        </div>
                                        <div class="action-button">
                                        	<input type="button" value="반려동물 추가하기" data-toggle="modal" data-target="#petType">
                                        </div>
                                       </div>
                                   </div>

<!-- Modal - 정보등록 -->
<div class="modal fade" id="petInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="max-width: 100%; width: auto; display: table;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">반려동물 정보등록</h4>
      </div>
      <div class="modal-body">
       <form class="pet-form">
       	<div class="form-group">
	        <table class="table table-bordered">
	        <tbody>
		        <tr>
					<td class="insert-title">이름</td>
					<td><input type="text" name="petName"></td>
					<td class="insert-title">나이</td>
					<td><input type="text" name="petAge"></td>
		        </tr>
		        <tr>
			        <td class="insert-title">성별</td>
					<td>
					<select name="petGender">
						<option value="girl">암</option>
						<option value="boy">수</option>
					</select>
					</td>
					<td class="insert-title">생일</td>
					<td>d</td>
		        </tr>
		        <tr>
			        <td class="insert-title">품종</td>
					<td><input type="text" name="petVariety"></td>
					<td class="insert-title">중성화여부</td>
					<td>
					<select name="tnr">
						<option value="yes">예</option>
						<option value="no">아니요</option>
					</select>
					</td>
		        </tr>
		        <tr>
			        <td class="insert-title">사이즈</td>
					<td>
					<select name="petSize">
						<option value="s">소형</option>
						<option value="m">중형</option>
						<option value="l">대형</option>
					</select>
					</td>
					<td class="insert-title">체중</td>
					<td><input type="text" name="petWeight"></td>
		        </tr>
		        <tr>
			        <td rowspan="3" colspan="2"><input type="file" accept="image/*" name="imageSource"></td>
					<td class="insert-title">목둘레</td>
					<td><input type="text" name="neckLength"></td>
		        </tr>
		        <tr>
					<td class="insert-title">등길이</td>
					<td><input type="text" name="backLength"></td>
		        </tr>
		        <tr>
					<td class="insert-title">가슴둘레</td>
					<td><input type="text" name="chestLength"></td>
		        </tr>
		        <tr>
					<td class="insert-title">특이사항</td>
					<td colspan="3"><textarea name="petEtc"></textarea></td>
		        </tr>
	         </tbody>
            </table>
          </div>
          <input type="hidden" id="animalType">
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="javascript:newPetInfo(this.form)">반려동물 정보저장</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="closeModalBtn">Close</button>
      </div>
    </div>
  </div>
</div>


<!-- First modal dialog : 상세보기-->
<div class="modal" id="petDetail" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
	    <form class="pet-form">
			<div class="popup-inner img-pet" id="petimg"><img src="" alt="">${pet.ImageSource }</div>
			<div class="popup-inner text-pet">
			<div class="form-group">
				<h2 id="petname">${pet.petName }</h2>
				<div class="textMain-wrap">
					<div class="box-detail" id="detail_gender">
						<h5>성별</h5>
						<p id="gender">${pet.petGender }</p>
					</div>
					<div class="box-detail" id="detail_variety">
						<h5>품종</h5>
						<p id="variety">${pet.petVariety }</p>
					</div>
					<div class="box-detail" id="detail_birth">	
						<h5>생일</h5>
						<p id="birthday">${pet.petBirth }</p>
					</div>
					<div class="box-detail" id="detail_age">
						<h5>나이</h5>
						<p id="petAge">${pet.petAge }</p>
					</div>
					<div class="box-detail" id="detail_size">
						<h5>체형</h5>
						<p id="petSize">${pet.petSize }</p>
					</div>
					<div class="box-detail" id="detatl_weight">
						<h5>무게</h5>
						<p id="petWeight">${pet.petWeight }</p>
					</div>
					<div class="box-detail" id="detail_neck">
						<h5>목둘레</h5>
						<p id="petNeck">${pet.neckLength }</p>
					</div>
					<div class="box-detail" id="detail_back">
						<h5>등길이</h5>
						<p id="petBack">${pet.backLength }</p>
					</div>
					<div class="box-detail" id="detail_chest">
						<h5>가슴둘레</h5>
						<p id="petChest">${pet.chestLength }</p>
					</div>
				</div>
				<div class="textSub-wrap">
					<div class="box-detail" id="detail_etc">
						<h5>특이사항</h5>
						<p id="petEtc">${pet.petEtc }</p>
					</div>
				</div>
			</div>
			</div>
			<input type="hidden" id="petSerial" value="">
		</form>
      <div style="float:left">
      </div>
      <div class="modal-footer">
        <!-- Toogle to second dialog -->
	    <button class="btn btn-primary" data-target="#petInfo" data-toggle="modal" data-dismiss="modal" onclick="">정보 수정</button>
	    <button class="btn btn-primary" onclick="javascript:deletePetInfo(this.form);">정보 삭제</button>
      	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- First modal dialog : 타입고르기-->
<div class="modal" id="petType" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
	    <form>
          <div class="form-group">
          	<input type="checkbox" name="animalType" value="dog">강아지
          	<input type="checkbox" name="animalType" value="dog">고양이
          </div>
        </form>
      <div style="float:left">
      </div>
      <div class="modal-footer">
        <!-- Toogle to second dialog -->
	    <button class="btn btn-primary" data-target="#petInfo" data-toggle="modal" data-dismiss="modal" onclick="javascript:transferType(this.form)">선택</button>
      	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Second modal2 dialog : 정보등록  -->
<div class="modal fade" id="modifyPet" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      	<form class="pet-form">
	        <table class="table table-bordered">
	        <tbody>
		        <tr>
					<td class="insert-title">이름</td>
					<td><input type="text" name="petName"></td>
					<td class="insert-title">나이</td>
					<td><input type="text" name="petAge"></td>
		        </tr>
		        <tr>
			        <td class="insert-title">성별</td>
					<td>
					<select>
						<option name="petGender" value="girl">암</option>
						<option name="petGender" value="boy">수</option>
					</select>
					</td>
					<td class="insert-title">생일</td>
					<td>d</td>
		        </tr>
		        <tr>
			        <td class="insert-title">품종</td>
					<td><input type="text" name="petVariety"></td>
					<td class="insert-title">중성화여부</td>
					<td>
					<select>
						<option name="tnr" value="yes">예</option>
						<option name="tnr" value="no">아니요</option>
					</select>
					</td>
		        </tr>
		        <tr>
			        <td class="insert-title">사이즈</td>
					<td>
					<select>
						<option name="petSize" value="s">소형</option>
						<option name="petSize" value="m">중형</option>
						<option name="petSize" value="l">대형</option>
					</select>
					</td>
					<td class="insert-title">체중</td>
					<td><input type="text" name="petWeight"></td>
		        </tr>
		        <tr>
			        <td rowspan="3" colspan="2"><input type="file" accept="image/*" name="imageSource"></td>
					<td class="insert-title">목둘레</td>
					<td><input type="text" name="neckLength"></td>
		        </tr>
		        <tr>
					<td class="insert-title">등길이</td>
					<td><input type="text" name="backLength"></td>
		        </tr>
		        <tr>
					<td class="insert-title">가슴둘레</td>
					<td><input type="text" name="chestLength"></td>
		        </tr>
		        <tr>
					<td class="insert-title">특이사항</td>
					<td colspan="3"><textarea name="petEtc"></textarea></td>
		        </tr>
	        </tbody>
			
        </table>
		</form>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
	</div>
</div>

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