<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>글등록</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<script src="/common/summernote/lang/summernote-ko-KR.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

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
	
	.thum_select::after {
  content: "";
  clear: both;
  display: table;
}

.radio-container {
  float: left;
  width: 33.33%;
  padding: 5px;
}

</style>



</head>
<body>

<div id="container">
	
	<hr>


	<form action="insertBoard" method="post" enctype="multipart/form-data">
	
                                  <input type="radio" class="report_class" name="img1" value="1"> 저작권 침해 및 불법자료<br>
                                    <input type="radio" class="report_class" name="img1" value="2"> 도배성 게시글<br>
                                    <input type="radio" class="report_class" name="img1" value="3"> 허위사실<br>
                                    <input type="radio" class="report_class" name="img1" value="4"> 불법 광고<br>
                                    <input type="radio" class="report_class" name="img1" value="5"> 기타 <br>
	
  	<input type="submit" value="전송">
	
  		
	</form>

</div>


</body>
</html>
