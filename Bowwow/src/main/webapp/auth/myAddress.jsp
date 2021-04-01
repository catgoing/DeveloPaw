<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
    <title>주소입력</title>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5c1b87a3ea48432cd965082eccebcd8"></script>
</head>
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
</script>
 <div class="pcoded-content">
 <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
           <div class="row">
                <div class="col-sm-12">
    
                       <div class="auth-box card">
                            <div class="card-block card-block-big">
                              <!-- Row start -->
                              <div class="row">
 
						<!-- Page-body start -->
						<div class="page-body">
						<div class="myPageInfo-header">
							<h2> 뫄뫄님의 페이지</h2>
						</div>
						<div class="myPageInfo-wrapper">

								<!-- 회원정보수정 부분 -->
								<div class="form-group">
									<div class="input-content">
									<div class="side-content">
										<div class="my-area">
											<div class="side-profile-img">프로필사진영역</div>
											<p>닉네임</p>
										</div>
									</div>

									<div class="mainMypage-content">
									<div class="block-title">
										<h3>주소지입력</h3>
									</div>
									<input type="button" value="맵" onclick="execMap()"/><br>
									<form>
										<div class="form-group form-primary">
	                                        <input type="number" id="addressId" name="addressId" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">주소ID</label>
	                                 	</div>
										<div class="form-group form-primary">
	                                        <input type="number" id="memberSerial" name="memberSerial" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">멤버시리얼</label>
	                                 	</div>
										<div class="form-group form-primary">
	                                        <input type="text" id="userAddress" name="address" class="form-control" readonly>
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">주소입력</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
	                                        <input type="text" name="addressDetail" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">상세주소</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
	                                        <input type="text" id="userZonecode" name="zonecode" class="form-control" readonly>
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">우편번호</label>
	                                 	</div>
										
										<div class="input-label">
											<div class="input-wrap">
												<div class="my-profile">
													<label for="uploadImage" id="imageview">
														<img src="" class="thumb">
													</label>
<!-- 													<input type="file" id="uploadImage" accept="image/gif, image/jpeg, image/jpg, image/png" name="uploadImage" onchange="readURL(this);"> -->
												</div>
											</div>
											<p></p>
										</div>

<!-- 										<div class="action_btn"> -->
<!-- 											<input type="submit" value="주소입력" formaction="/address/registAddr"> -->
<!-- 										</div> -->
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 주소입력" formaction="/address/add">
										</div>
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 주소삭제" formaction="/address/delete">
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
</div>
</div>
</section>
</div>