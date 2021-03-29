<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</style>
<script>
window.location.href = 'http://localhost:8080/community/detail';
</script>
</head>
<body>

<div id="container">
	<h1>펫 일기장</h1>
	
	<hr>


	<form action="insertBoard" method="post" enctype="multipart/form-data">
	
	<div>
		<select name="animal_class">
				
			<option value="1">강아지</option>
			
			<option value="2">고양이</option>
			
			<option value="3">자유</option>
		</select>
	</div>

	<table>
		<tr>
			<th width="40">제목</th>
			<td>
				<input type="text" name="board_title" size="30">
			</td>
		</tr>
	
	</table>
	
	
	<h3>내용</h3>
	
	

  	<textarea id="summernote" name="board_content"></textarea>
  	<input type="file" name="uploadImage">

  	<input type="submit" value="전송">
  		
  		
	</form>

</div>


</body>
</html>
