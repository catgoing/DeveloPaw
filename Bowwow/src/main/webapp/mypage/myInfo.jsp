<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<head>
<style>
  .form-group .input_content .input_label{
  	font-size : 20px;
  }
  .myPageInfo-header {
  	text-align: center;
  }  
  .myPageInfo-wrapper {
	display: flex;
	justify-content: center;
  }
  
  .input-content .input-wrap {
	margin-bottom: 15px;
	position: relative;
}
 .input-content .input-wrap:last-of-type {
	margin-bottom: 0;
}

 .input-content .input-wrap input {
	width: 100%;
	height: 50px;
	border-radius: 10px;
	color: #48484d;
	font-size: 15px;
	font-weight: 700;
	padding: 14px 20px;
	border: 1px solid #e4e4e4;
	padding-right: 50px;
}

.side-content {
	position: relative;
	display: inline-block;
	float: left;
}

 .side-content .my-area {
    border-radius: 70px;
    margin: 0 auto 10px;
    border: 1px solid rgba(228, 228, 228, 0.5);
    border-radius: 10px;
 
 }
 .side-content .my-area .side-profile-img{
	/* float: left; */
    background-size: cover;
    width: 140px;
    height: 140px; 
}

 .side-content .my-area p{
    font-size: 20px;
    font-weight: 700;
    line-height: 29px;
}

 .mainMypage-content {
 	display: inline-block;
    width: calc( 100% - 280px);
    margin-bottom: 50px;
}

 .block-title a{
    line-height: 28px;
    color: #b0b0b0;
    font-size: 10px;
    font-weight: 300;
    /* display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center; */
    border: 0;
    background: none;
    float: right;
 }

.block-title h3{
	font-size: 1.5em;
}
</style>
</head>

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
						<div class="myPageInfo-wrapper">
							
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
								<!-- 회원정보수정 부분 -->
									<div class="form-group">
										<div class="input_content">
											<div class="side-content">
												<div class="my-area">
													<div class="side-profile-img">으아아</div>
													<p>닉네임</p>
												</div>
											</div>
										
											<div class="mainMypage-content">
											<div class="block-title">
												<h3>정보수정</h3>
												<a href="#">회원탈퇴</a>
											</div>
											<form>
											<%-- <input type="text" value="${id }" readonly> --%>
												
												<div class="input_label">아이디 
													<div>
														<input type="text" value="sunsetar" disabled>												
													</div>
												</div>
												
												<div class="input_label">비밀번호
													<div>
														<input type="password" placeholder="비밀번호 입력">
													</div>
													<p>비밀번호는 이만~~~~~큼 입력해야합니다.</p>
												</div>
															
												<div class="input_label">비밀번호 확인
													<div>
														<input type="password" placeholder="비밀번호 재입력">
													</div>
													<p>비밀번호를 또 입력해야합니다</p>
												</div>
															
												<div class="input_label">이름
													<div class="input_wrap">
														<input type="text" value="${name }">
													</div>
												</div>
															
												<div class="input_label">닉네임
													<div class="input_wrap">
														<input type="text" value="${nickname }">
													</div>	
												</div>
															
												<div class="input_label">이메일
													<div class="input_wrap">
														<input type="text" value="${email }">
													</div>
												</div>
												
												<div class="input_label">전화번호
													<div class="input_wrap">
														<input type="text" value="${phone }">
													</div>
												</div>
												
												<div class="input_label">주소
													
												</div>
												
												<div class="input_label">생일
													<div class="input_wrap">
														<input type="text" value="${birthday }">
													</div>
												</div>
												
												<div class="input_label">성별
													<div class="input_wrap">
														<input type="text" value="${gender }">
													</div>
												</div>
												
												<div class="input_label">
													<div class="input_wrap">
														<input type="file" value="${IMAGE_SOURCE }">		
													</div>
												</div>
												
												<div class="action_btn">
													<input type="button" value="정보수정">							    
												</div>																    
			
											</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Page-body end -->
						</div>
						<div id="styleSelector"> </div>
					</div>
					<!-- Main-body start 본문 끝 -->
				</div>
			</div>
            