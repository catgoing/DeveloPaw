<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="Codedthemes" />
<!--Jua 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<!-- Dohyeon 폰트 import-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Favicon icon -->
    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="/resources/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/test.css">
<title>글등록</title>
<style>
	#container { width: 700px; margin: 0 auto; }
	h1,h3,p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: orange; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
</style>
<script>
function insertInquiry(p_id) {
	var data = {'p_id' : p_id, 'member_serial' : member_serial, 'inq_title' : inq_title, 'inq_content' : inq_content};
	
	$.ajax({
		url : '/store/insertInquiry',
		type: 'POST',
        data: data,
        success: function(data){
			console.log(data)
			 if(data) {
				/* $('#tabs-3').append('<table>'+
										'<tr><th>리뷰번호</th><td>${rList.review_id}</td></tr>'+
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
	
	<form action="insertInquiry" method="post">
	<table>
		<tr>
			<th width="70">상품번호</th>
			<td>
				<input type="text" name="p_id" size="30" value=1>
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" name="member_serial" value=999>
			</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="inq_title" size="30">
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
	  				<textarea id="summernote" name="inq_content"></textarea>
			</td>
		</tr>
		<tr>
			<th>대분류</th>
			<td>
				<input type="text" name="inq_maincategory" value="1">
			</td>
		</tr>
		<tr>
			<th>중분류</th>
			<td>
				<input type="text" name="inq_subcategory" value="2">
			</td>
		</tr>
		<tr>
			<th>소분류</th>
			<td>
				<input type="text" name="inq_inquiry_type" value="3">
			</td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<input type="submit" value="작성하기">
				<%-- <button onclick="insertInquiry(${p.p_id})">작성</button> --%>
			</td>
		</tr>
	</table>
	</form>
	<c:forEach var="iList" items="${inquiryList}">
	<table>
		<tr>
			<th width="70">상품번호</th>
			<td>
				${iList.p_id}
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
				${iList.member_serial}
			</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>
				${iList.inq_title}
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
	  			${iList.inq_content}
			</td>
		</tr>
		<tr>
			<th>대분류</th>
			<td>
				${iList.inq_maincategory}
			</td>
		</tr>
		<tr>
			<th>중분류</th>
			<td>
				${iList.inq_subcategory}
			</td>
		</tr>
		<tr>
			<th>소분류</th>
			<td>
				${iList.inq_inquiry_type}
			</td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<button onclick="deleteReview(${rList.review_id})">삭제</button>
			</td>
		</tr>
	</table>	
	</c:forEach>
</div>

    <script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="/resources/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="/resources/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="/resources/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="/resources/js/pcoded.min.js"></script>
    <script src="/resources/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="/resources/js/script.js "></script>
</body>
</html>