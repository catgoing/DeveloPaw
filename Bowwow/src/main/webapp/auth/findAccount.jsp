<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<head>
<script type="text/javascript">
// function checker() {
//   var id = document.getElementById("id").value;
//   var pwd = document.getElementById("email").value;
	
//   TODO msgBox를 구현할 것 
//   if(id.length == 0) {
//     alert("아이디가 입력되지 않았습니다.");
//     return false;
//   }
//   if(pwd.length == 0) {
//     alert("비밀번호가 입력되지 않았습니다.");
//     return false;
//   }

//   return true;
}
</script>
</head>

<section class="login-block">
    <!-- Container-fluid starts -->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                    <form class="md-float-material form-material" action="/user/login" onsubmit = "return checker();">
                        <div class="text-center">
                            <img src="/resources/images/logo.png" alt="logo.png">
                        </div>
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center">아아디 찾기</h3>
                                    </div>
                                </div>
                                <%
//                                 String cookie = "";
// 								Cookie[] cookies = request.getCookies(); //쿠키생성
// 								if(cookies !=null&& cookies.length > 0)
// 									for (int i = 0; i < cookies.length; i++){
// 										if (cookies[i].getName().equals("userId")) { // 내가 원하는 쿠키명 찾아서 값 저장
// 											cookie = cookies[i].getValue();
// 										}
// 									}
								%>
								
								
                                <div class="form-group form-primary">
                                    <input type="text" name="realname" id="realname" class="form-control" value="">
                                    <span class="form-bar"></span>
                                    <label class="float-label">이름</label>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="text" name="id" id="id" class="form-control" value="">
                                    <span class="form-bar"></span>
                                    <label class="float-label">아이디</label>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="email" name="email" id="email" class="form-control">
                                    <span class="form-bar"></span>
                                    <label class="float-label">이메일</label>
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20">찾기</button>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-10">
                                        <p></p>
                                        <p class="text-inverse text-left"><a href="/store/storeMain"><b>메인화면으로 돌아가기</b></a></p>
                                    </div>
                                    <div class="col-md-2">
                                        <img src="/resources/images/colored_logo.png" alt="colored_logo.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- end of form -->
            </div>
            <!-- end of col-sm-12 -->
        </div>
        <!-- end of row -->
    </div>
    <!-- end of container-fluid -->
</section>
