<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
									<div class="input-content">
									<div class="side-content">
										<div class="my-area">
											<div class="side-profile-img">프로필사진영역</div>
											<p>닉네임</p>
										</div>
									</div>

									<div class="mainMypage-content">
									<div class="block-title">
										<h3>정보수정</h3>
										<a href="withdrawl.do">회원탈퇴</a>
									</div>
									<form>
									<%-- <input type="text" value="${id }" readonly> --%>

										<div class="input-label">아이디
											<div class="input-wrap">
												<input type="text" name="id" value="sunsetar" disabled>
											</div>
											<label class="col-sm-2 col-form-label">아이디</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control form-control-round" placeholder=".form-control-round">
                                            </div>
											<p></p>
										</div>

										<div class="input-label">비밀번호
											<div class="input-wrap">
												<input type="password" name="password" placeholder="비밀번호 입력">
											</div>
											<p>비밀번호는 이만~~~~~큼 입력해야합니다.</p>
										</div>

										<div class="input-label">비밀번호 확인
											<div class="input-wrap">
												<input type="password" placeholder="비밀번호 재입력">
											</div>
											<p>비밀번호를 또 입력해야합니다 -- 비밀번호 입력 안하고 수정해도 수정됨?</p>
										</div>

										<div class="input-label">이름
											<div class="input-wrap">
												<input type="text" name="name" value="${name }">
											</div>
											<p></p>
										</div>

										<div class="input-label">닉네임
											<div class="input-wrap">
												<input type="text" name="nickname" value="${nickname }">
											</div>
											<p></p>
										</div>

										<div class="input-label">이메일
											<div class="input-wrap">
												<input type="text" name="email" value="${email }">
											</div>
											<p></p>
										</div>

										<div class="input-label">전화번호
											<div class="input-wrap">
												<input type="text" name="phone" value="${phone }">
											</div>
											<p></p>
										</div>

										<div class="input-label">주소
											<div></div>
											<p></p>
										</div>

										<div class="input-label">생일
											<div class="input-wrap">
												<%-- <input type="text" name="birthday" value="${birthday }">
												<input type="text" name="birthday" value="${birthday }">
												<input type="text" name="birthday" value="${birthday }"> --%>
											</div>
											<p></p>
										</div>

										<div class="input-label">성별
											<div class="input-wrap">
												<span class="radio-gender">
													<input type="radio" name="gender" value="female" id="genderF">
													<label for="genderF">여자</label>
												</span>
												<span class="radio-gender">
       												<input type="radio" name="gender" value="male" id="genderM">
       												<label for="genderM">남자</label>
												</span>
											</div>
											<p>설정한 정보로 checked하기??</p>
										</div>

										<div class="input-label">
											<div class="input-wrap">
												<div class="my-profile">
													<label for="uploadImage" id="imageview">
														<img src="" class="thumb">
													</label>
													<input type="file" id="uploadImage" accept="image/gif, image/jpeg, image/jpg, image/png" name="uploadImage" onchange="readURL(this);">
												</div>
											</div>
											<p></p>
										</div>

										<div class="action_btn">
											<input type="button" value="정보수정test" onclick="javascript:goDetail();">
										</div>

									</form>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>