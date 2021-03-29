<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
										<h3>회원가입</h3>
									</div>
									<form>
										<div class="form-group form-primary">
	                                        <input type="text" name="id" class="form-control" value="${userAccount.id }">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">아이디</label>
	                                 	</div>
	                                    <div class="form-group form-primary">
	                                        <input type="password" name="password" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">비밀번호</label>
	                                    </div>
	                                    <div class="form-group form-primary">
	                                        <input type="password" name="passwordConfirm" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">비밀번호 확인</label>
	                                    </div>
	                                    
										<div class="form-group form-primary">
	                                        <input type="text" name="name" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">이름</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
	                                        <input type="text" name="nickname" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">닉네임</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
	                                        <input type="text" name="email" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">이메일</label>
	                                 	</div>
											<div class="form-group form-primary">
	                                        <input type="text" name="phone" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">전화번호</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
<!-- 	                                        <input type="text" name="nickname" class="form-control"> -->
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">닉네임</label>
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
											<input type="submit" value="회원가입" formaction="/account/registUser">
										</div>
										<div class="action_btn">
											<input type="submit" value="더미회원가입"  formaction="/account/registerDummyUser">
										</div>
										<div class="action_btn">
											<input type="submit" value="회원수정"  formaction="/account/modifyUser">
										</div>
										<div class="action_btn">
											<input type="submit" value="회원삭제"  formaction="/account/deleteUser">
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