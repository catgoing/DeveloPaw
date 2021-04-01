<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <html>
 <head>
 	<script type="text/javascript">
 	var pw_passed = true;
    function fn_pw_check() {
        var pw = document.getElementById("pw").value;
        var pw2 = document.getElementById("pwC").value;
        var id = document.getElementById("id").value;
        var name = document.getElementById("name").value;
        //var year = document.getElementById("bYear").value;
        //var month = document.getElementById("bMonth").value;
        //var day = document.getElementById("bDay").value; //생년월일
        var phone = document.getElementById("phone").value;
        //var location = document.getElementById("optLocation").value;
        var email = document.getElementById("email").value;
        //var inText = document.getElementById("txtIn").value;
        //var profileimg = document.getElementById("txtimg").value;
        
        pw_passed = true;
        
        //var today = new Date();
        //var yearNow = today.getFullYear();
		
        var pattern1 = /[0-9]/;
        var pattern2 = /[a-zA-Z]/;
        var pattern3 = /[~!@\#$%<>^&*]/;
        var pattern4 = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;
        var pattern5 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        
        var pw_msg = "";
        if(id.length == 0) {
               alert("아이디를 입력해주세요");
               return false;
         } else {
         }
        if(pw.length == 0) {
               alert("비밀번호를 입력해주세요");
               return false;
         } else {
                if(pw != pw2) {
                      alert("비밀번호가 일치하지 않습니다.");
                      return false;
                 }
         }
        if(name.length == 0){
        	alert("이름을 입력해주세요.");
        	return false;
        }
        //if(year.length == 0 || month.length == 0 || day.length == 0){
        //	alert("생년월일을 모두 기입해주세요.");
        //	return false;
        //}
        if(phone.length == 0){
        	alert("전화번호를 입력해주세요.");
        	return false;
        }
        //if(location.length == 0){
        //	alert("주소를 입력해주세요.");
        //	return false;
        //}
        if(email.length == 0){
        	alert("이메일을 입력해주세요.");
        	return false;
        }
        if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||pw.length<8||pw.length>50){
            alert("비밀번호엔 영문과 숫자, 특수문자를 모두 입력해야 합니다.");
            return false;
        }          
        if(pw.indexOf(id) > -1) {
            alert("비밀번호에 ID를 포함할 수 없습니다.");
            return false;
        }
        
        var SamePass_0 = 0;
        var SamePass_1 = 0;
        var SamePass_2 = 0;

        for(var i=0; i < pw.length; i++) {
             var chr_pass_0;
             var chr_pass_1;
             var chr_pass_2;

             if(i >= 2) {
                 chr_pass_0 = pw.charCodeAt(i-2);
                 chr_pass_1 = pw.charCodeAt(i-1);
                 chr_pass_2 = pw.charCodeAt(i);

                 if((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
                    SamePass_0++;
                  } 
                  else {
                   SamePass_0 = 0;
                   }
                 if(chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
                     SamePass_1++;
                  }
                  else {
                   SamePass_1 = 0;
                  }
                 if(chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
                     SamePass_2++;
                  }
                  else {
                   SamePass_2 = 0;
                  }  
             }     
            if(SamePass_0 > 0) {
               alert("동일문자를 3자 이상 연속 입력할 수 없습니다.");
               pw_passed=false;
             }
            if(SamePass_1 > 0 || SamePass_2 > 0 ) {
               alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
               pw_passed=false;
             } 
             if(!pw_passed) {             
                  return false;
                  break;
            }
        }
		//if (year.length+month.length+day.length <=8) {
        //	if(1900 > year || year > yearNow){
        //		alert("정확한 년도를 입력해 주세요.");
        //		return false;
        //	}else if(month < 1 || month > 12){
        //		alert("정확한 월수를 입력해 주세요.");
        //		return false;
        //	}else if(day < 1 || day > 31){
        //		alert("정확한 일수를 입력해 주세요.");
        //		return false;
        //	}
        //}else{
        //	alert("생년월일을 정확히 기입해주세요. YYYY/MM/DD");
        //	return false;
        //}

		if(!pattern4.test(phone)){
			alert("정확한 전화번호를 입력해주세요. -제거");
			return false;
		}
		if(!pattern5.test(email)){
			alert("정확한 이메일을 입력해주세요.");
			return false;
		}
		//if(!(result == inText)){
		//	alert("틀린 인증번호입니다.");
		//	return false;
		//}
		
   		alert("회원가입이 완료되었습니다");
        return true;
    }
 	</script>
 	<script>
 	<script type="text/javascript">

    

    function submit() {
       var form = document.createElement("form");
       form.setAttribute("charset", "UTF-8");
       form.setAttribute("method", "Post");  //Post 방식
       form.setAttribute("action", "/user/signup"); //요청 보낼 주소

       var hiddenField = document.createElement("input");
       hiddenField.setAttribute("type", "hidden");
       hiddenField.setAttribute("name", "mName");
       hiddenField.setAttribute("value", mName);
       form.appendChild(hiddenField);

       hiddenField = document.createElement("input");
       hiddenField.setAttribute("type", "hidden");
       hiddenField.setAttribute("name", "mEmail");
       hiddenField.setAttribute("value", mEmail);
       form.appendChild(hiddenField);

       document.body.appendChild(form);
       form.submit();
    }

 </script>
 </head>
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
										<h3>회원가입</h3>
									</div>
									<form onsubmit = "return fn_pw_check();">
										<div class="form-group form-primary">
	                                        <input type="number" name="memberSerial" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">멤버 시리얼</label>
                                        </div>
										<div class="form-group form-primary">
	                                        <input type="text" name="id" id="id" class="form-control" value="${userAccount.id }">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">아이디</label>
	                                 	</div>
	                                    <div class="form-group form-primary">
	                                        <input type="password" name="password" id="pw" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">비밀번호</label>
	                                    </div>
	                                    <div class="form-group form-primary">
	                                        <input type="password" name="passwordConfirm" id="pwC" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">비밀번호 확인</label>
	                                    </div>
	                                    
										<div class="form-group form-primary">
	                                        <input type="text" name="name" id="name" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">이름</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
	                                        <input type="text" name="nickname" id="nickname" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">닉네임</label>
	                                 	</div>
	                                 	<div class="form-group form-primary">
	                                        <input type="text" name="email" id="email" class="form-control">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">이메일</label>
	                                 	</div>
											<div class="form-group form-primary">
	                                        <input type="text" name="phone" id="phone" class="form-control">
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

<!-- 										<div class="action_btn"> -->
<!-- 											<input type="submit" value="회원가입" formaction="/account/registUser"> -->
<!-- 										</div> -->
<!-- 										<div class="action_btn"> -->
<!-- 											<input type="submit" value="더미회원가입"  formaction="/account/registerDummyUser"> -->
<!-- 										</div> -->
<!-- 										<div class="action_btn"> -->
<!-- 											<input type="submit" value="회원수정"  formaction="/account/modifyUser"> -->
<!-- 										</div> -->
<!-- 										<div class="action_btn"> -->
<!-- 											<input type="submit" value="회원삭제"  formaction="/account/deleteUser"> -->
<!-- 										</div> -->
										
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 회원가입" formaction="/account/add">
										</div>
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 회원수정"  formaction="/account/update">
										</div>
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 회원삭제"  formaction="/account/delete">
										</div>
									</form>
									
									<script>
		            var down = document.getElementById("GFG_DOWN");
		            function GFG_Fun() {
		                
		                // Create a form synamically
		                var form = document.createElement("form");
		                form.setAttribute("method", "post");
		                form.setAttribute("action", "submit.php");
		  
		                // Create an input element for emailID
		                var ID = document.createElement("input");
		                ID.setAttribute("type", "text");
		                ID.setAttribute("name", "emailID");
		                ID.setAttribute("placeholder", "E-Mail ID");
		  
		                // Create an input element for password
		                var PWD = document.createElement("input");
		                PWD.setAttribute("type", "password");
		                PWD.setAttribute("name", "password");
		                PWD.setAttribute("placeholder", "Password");
		  
		                // Create a submit button
		                var s = document.createElement("input");
		                s.setAttribute("type", "submit");
		                s.setAttribute("value", "Submit");
		  
		                // Append the email_ID input to the form
		                form.append(ID); 
		                
		                // Append the password to the form
		                form.append(PWD); 
		                
		                // Append the button to the form
		                form.append(s); 
		  
		                document.getElementsByTagName("body")[0]
		               .appendChild(form);
		            }
		        </script>
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
</html>