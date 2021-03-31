<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
    <title>결제정보입력</title>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5c1b87a3ea48432cd965082eccebcd8"></script>
</head>
<body>
<script type="text/javascript">
	function isSelect(value){
		if(value == "bank"){
			document.getElementById("cardn").style.display = "none";
			document.getElementById("carda").style.display = "none";
			document.getElementById("bankn").style.display = "block";
			document.getElementById("banka").style.display = "block";
		}else if(value == "card"){
			document.getElementById("cardn").style.display = "block";
			document.getElementById("carda").style.display = "block";
			document.getElementById("bankn").style.display = "none";
			document.getElementById("banka").style.display = "none";
		}else{
			document.getElementById("cardn").style.display = "none";
			document.getElementById("carda").style.display = "none";
			document.getElementById("bankn").style.display = "none";
			document.getElementById("banka").style.display = "none";
		}
	}
</script>
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

								<div class="form-group">
									<div class="mainMypage-content">
									<div class="block-title">
										<h3>결제정보입력</h3>
									</div>
									<form>
										<div class="form-group form-primary">
	                                    <select id="userAddress" name="paytype" class="form-control" onChange="isSelect(this.value);">
    										<option value="bank">무통장입금</option>
										    <option value="card">카드결제</option>
										</select>
	                                 	</div>
	                                 	<div id = "banka" class="form-group form-primary">
	                                        <input type="text" name="bankname" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">입금할 은행</label>
	                                 	</div>
										<div id = "bankn" class="form-group form-primary">
	                                        <input type="text" name="bankno" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">계좌번호</label>
	                                 	</div>
	                                 	<div id = "carda" style="display:none" class="form-group form-primary">
	                                        <input type="text" name="cardname" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">카드사 입력</label>
	                                 	</div>
										<div id = "cardn" style="display:none"  class="form-group form-primary">
	                                        <input type="text" name="cardno" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">카드번호</label>
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

										<div class="action_btn">
											<input type="submit" value="결제정보입력" formaction="/wallet/registWallet">
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
</section>
</body>
</html>