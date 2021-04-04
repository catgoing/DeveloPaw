<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <html>
 <head>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5c1b87a3ea48432cd965082eccebcd8"></script>
 	<script src="/auth/auth.js"> </script>
 	 <!-- Required Jquery -->
    <script type="text/javascript" src="../resources/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="../resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="../resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="../resources/js/bootstrap/js/bootstrap.min.js "></script>
 	<script type="text/javascript">

    function fn_pw_check() {
    	try {
    		var flag = true;
			var form = document.getElementById("account_form");
			var id = form.id.value;
			var password = form.pw.value;
			var passwordConfirm = form.pwC.value;
			const msg = [];
			
			if(!isValid("id", id)) {
				msg.push("id는 0-20자 입니다.");
				flag = false;
			}
			if(!isValid("password", password)) {
				msg.push('숫자와 영문자 조합으로 10~15자리를 사용해야 합니다.');
				flag = false;
			}
			if(password !== passwordConfirm) {
				msg.push('비밀번호가 일치하지 않습니다.');
				flag = false;
			}
			var msgBox = document.getElementById("msgBox");
			msgBox.innerHTML = "";
			msg.forEach(function (m) {
				msgBox.innerHTML += m + '<br>'
			})

			return flag;
    	} catch(e) {
			return false;    		
    	}
        return false;
    }
    function isValid(type, value) {
    	var validation = {
    			id: (id) => { return (id.length < 20 && id.length > 0)},
    			password: (password) => {
    				return /^[a-zA-Z0-9]{10,15}$/.test(password);
    			}
    	}
    	var result = validation[type](value);
    	console.log(type, value, result);
		return result;
    }
	
 	</script>
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
									<form id="account_form" onsubmit = "return fn_pw_check();">
										<div class="form-group form-primary">
	                                        <input type="text" name="id" id="id" class="form-control" value="">
	                                        <span class="form-bar"></span>
	                                        <label class="float-label">아이디</label>
	                                 	</div>
	                                    <div class="form-group form-primary">
	                                        <input type="password" name="password" id="pw" value="77g7g7g7g7g" class="form-control">
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
										<div id="msgBox"></div>
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 회원가입" formaction="/account/add">
										</div>
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 회원수정"  formaction="/account/update">
										</div>
										<div class="action_btn">
											<button type="button" class="btn btn-primary" onclick="/account/delete">부모컨트롤러 회원삭제</button>
										</div>
										<div class="action_btn">
											<button type="button" class="btn btn-primary" id="expend_address" onclick="fn();">button</button>
										</div>
									</form>
									<form id="address_form" name="address_form" action="/address/addAddressList" method="post">
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 주소입력" formaction="/address/addAddressList">
										</div>
										<div class="action_btn">
											<input type="button" value="주소입력" onclick="dynamicAjaxSubmit();">
										</div>
										<div class="action_btn">
											<input type="submit" value="부모컨트롤러 주소삭제" formaction="/address/delete">
										</div>
										<fieldset id="Address">
									        <legend>Address</legend>
									        <div id="row" class="row">
									          <div><label for="addressId_1">주소ID</label> <input type="number" name="addressId_1" id="addressId_1"></div>
									          <div><label for="memberSerial_1">멤버시리얼</label> <input type="number" name="memberSerial_1" id="memberSerial_1"></div>
									          <div><label for="userAddress_1">주소입력</label> <input type="text" name="address_1" id="address_1"></div>
									          <div><label for="addressDetail_1">상세주소</label> <input type="text" name="addressDetail_1" id="addressDetail_1"></div>
									          <div><label for="zonecode_1">우편번호</label> <input type="text" name="zonecode_1" id="zonecode_1"></div>
									        </div>
									        </fieldset>
									</form>

    <script type="text/javascript">
      (function () {
         var Address = {
             count:    1,
             init:     function () {
                           var fs = document.getElementById("Address");
                           var row = document.getElementById("row");
                           var mapBtn = row.appendChild(this.make("input",  {id: "1", type: "button", value: "맵"}));
                           mapBtn.onclick = this.registMapExecutor;
                           var div = fs.appendChild(this.make("div", {id: "here"}));
                           var btn = div.appendChild(this.make("input", {type: "button", value: "주소 추가"}));
                           btn.onclick = (function (_self) {
                               return function () {
                                   _self.add();
                                   return false;
                               };
                           })(this);
                       },
			 registMapExecutor : function() {
									 console.log(this);
									 var count = this.id;
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
									            
									            document.getElementById("address" + "_" + count).value = fullAddr;
									            document.getElementById("zonecode" + "_" + count).value = zoneCode;
									        }
									    }).open();
			 			},
             add:      function () {
                           ++this.count;
                           var here = document.getElementById("here");
                           var row = here.parentNode.insertBefore(this.make("div", {className: "row", id: "row" + this.count}), here);
                           this.addField(row, "주소ID", "addressId");
                           this.addField(row, "멤버시리얼", "memberSerial");
                           this.addField(row, "주소입력", "address");
                           this.addField(row, "상세주소", "addressDetail");
                           this.addField(row, "우편번호", "zonecode");
                           var div = row.appendChild(this.make("div", {className: "btn"}));
                           var btn = div.appendChild(this.make("input", {type: "button", value: "주소 삭제", _id: "row" + this.count}));
                           btn.onclick = this.remove;
                           var execMapBtn = div.appendChild(this.make("input", {type: "button", value: "맵", id: this.count}));
                           execMapBtn.onclick = this.registMapExecutor;
                       },
             addField: function (parent, label, prefix) {
                           var div = parent.appendChild(this.make("div"));
                           div.appendChild(this.make("label", {htmlFor: prefix + this.count}, label));
                           div.appendChild(this.make("input", {type: "text", name: prefix + "_" + this.count, id: prefix + "_" + this.count}));
                       },
             remove:   function () {
                           var row = document.getElementById(this._id);
                           row.parentNode.removeChild(row);
                           return false; 
                       },
             make:     function (type, attrs, content) {
                           var element = document.createElement(type);
                           if (attrs !== undefined) {
                               for (var a in attrs) {
                                   element[a] = attrs[a];
                               }
                           }
                           if (content !== undefined) {
                               element.appendChild(document.createTextNode(content));
                           }
                           return element;
                       }
         };
         Address.init();
       })();
      

      function dynamicAjaxSubmit() {
      	var form = document.address_form;
      	const data = [];
      	var datas = new FormData(form);
      	//datas.forEach(d=> console.log(d))
      	//console.log('datas', datas)
      	
      	for (var formData of datas.entries()) {
      	  	var _key = formData[0].split("_")[0];
      	  	var _index = formData[0].split("_")[1];
      	  	var _value = formData[1];
//       	  	console.log(_key, _index, _value);
      	  	
      	  	if(!data[_index-1]) data.push({});
      	  	data[_index-1][_key] = _value;
      		console.log(data);
      	}
      	
//       	console.log(datas.values())
      	 $.ajax("/address/addAddressList", {
                  type: "POST",
                  data: JSON.stringify(data),
                  contentType:"application/json; charset=UTF-8",
                  success: function() {
                	  alert('success');
                  }
         });
      };
   	</script>
									
									<script>
// 								            var down = document.getElementById("GFG_DOWN");
// 								            function GFG_Fun() {
								                
// 								                // Create a form synamically
// 								                var form = document.createElement("form");
// 								                form.setAttribute("method", "post");
// 								                form.setAttribute("action", "submit.php");
								  
// 								                // Create an input element for emailID
// 								                var ID = document.createElement("input");
// 								                ID.setAttribute("type", "text");
// 								                ID.setAttribute("name", "emailID");
// 								                ID.setAttribute("placeholder", "E-Mail ID");
								  
// 								                // Create an input element for password
// 								                var PWD = document.createElement("input");
// 								                PWD.setAttribute("type", "password");
// 								                PWD.setAttribute("name", "password");
// 								                PWD.setAttribute("placeholder", "Password");
								  
// 								                // Create a submit button
// 								                var s = document.createElement("input");
// 								                s.setAttribute("type", "submit");
// 								                s.setAttribute("value", "Submit");
								  
// 								                // Append the email_ID input to the form
// 								                form.append(ID); 
								                
// 								                // Append the password to the form
// 								                form.append(PWD); 
								                
// 								                // Append the button to the form
// 								                form.append(s); 
								  
// 								                document.getElementsByTagName("body")[0]
// 								               .appendChild(form);
// 								            }
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

    
</html>

