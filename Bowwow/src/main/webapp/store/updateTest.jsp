<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords"
	content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="Codedthemes" />
<!--Jua 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<!-- Dohyeon 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- Favicon icon -->
<link rel="icon" href="/resources/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="/resources/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/test.css">
<title>글등록</title>
<style>
#container {
	width: 700px;
	margin: 0 auto;
}

h1, h3, p {
	text-align: center;
}

table {
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid black;
	margin: 0 auto;
}

th {
	background-color: orange;
}

.center {
	text-align: center;
}

.border-none, .border-none td {
	border: none;
}
</style>
<script>
$(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
          
	});
});

function updateReview(review_id) {
	console.log('상품번호 : ' + review_id);
	//var getReviewId = $('#review_id').val();
	var getProductId = $('#p_id').val();
	var getMemValue = $('#member_serial').val();
	var getTitleValue = $('#review_title').val();
	var getContentValue = $('#review_content').val();
	//var getRegdate = $('#review_regdate').val();
	var getReviewImage = $('#review_image').val();

	var data = {'p_id' : getProductId, 'member_serial' : getMemValue, 'review_title' : getTitleValue, 
				'review_content' : getContentValue,'review_image' : getReviewImage};

	$.ajax({
		url : '/store/updateReview',
		type: 'POST',
        data: data,
        success: function(data){
			console.log(data)
			 if(data) {
/* 		$('#tabs-3').append('<table>'+
										'<tr><th>상품번호</th><td>'+p_id+'</td></tr>'+
										'<tr><th>회원번호</th><td>'+member_serial+'</td></tr>'+
										'<tr><th>리뷰제목</th><td>'+review_title+'</td></tr>'+
										'<tr><th>리뷰내용</th><td>'+review_content+'</td></tr>'+
										
										'<tr><th>리뷰 이미지</th><td>'+review_image+'</td></tr>'+
									'</table>'); */
			}
    	}
	});
}

</script>


</head>
<body>

	<div id="container">
		<h1>글등록</h1>
		<hr>

		<form>
			<table>
				<tr>
					<th>상품번호</th>
					<td><input type="text" id="p_id" name="p_id" value="384"></td>
				</tr>
				<tr>
					<th>회원번호</th>
					<td><input type="text" id="member_serial" name="member_serial" value=999></td>
				</tr>
				<tr>
					<th>리뷰 제목</th>
					<td><input type="text" id="review_title" name="review_title"></td>
				</tr>
				<tr>
					<th>리뷰 내용</th>
					<td><input type="text" id="review_content" name="review_content"></td>
				</tr>
				<tr>
					<th>리뷰 이미지</th>
					<td><input type="text" id="review_image" name="review_image"></td>
				</tr>
				<tr>
					<th>
						<input type="hidden" id = "review_id" name="review_id" value="${rList.review_id }">
						<input type="hidden" id = "review_regdate" name="review_regdate">
					</th>	
				</tr>
				<tr>
					<td colspan="2" class="center">
						<button onclick="updateReview(${rList.review_id})">작성</button>
					</td>
				</tr>
			</table>
		</form>

	</div>

	<script type="text/javascript"
		src="/resources/js/jquery/jquery.min.js "></script>
	<script type="text/javascript"
		src="/resources/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="/resources/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="/resources/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="/resources/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- slimscroll js -->
	<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

	<!-- menu js -->
	<script src="/resources/js/pcoded.min.js"></script>
	<script src="/resources/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="/resources/js/script.js "></script>
</body>
</html>