<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script src="../common/summernote/summernote.js"></script>
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
</script>


</head>
<body>

<div id="container">
	<h1>글등록</h1>
	<p><a href="logout.do">Log-out</a></p>
	<hr>
	
	<form action="insertBoard.do" method="post"	>
	<table>
		<tr>
			<th width="70">제목</th>
			<td>
				<input type="text" name="board_title" size="30">
			</td>
		</tr>
		<!-- <tr>
			<th>작성자</th>
			<td>
				<input type="text" name="member_serial">
			</td>
		</tr> -->
		<tr>
			<th>내용</th>
			<td>
				
	  				<textarea id="summernote" name="editordata"></textarea>
				
			</td>
		</tr>
		<tr>
			<th>동물분류</th>
			<td>
				<input type="text" name="animal_class">
			</td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<input type="submit" value="새글 등록">
			</td>
		</tr>
	</table>
	</form>
	
	<p><a href="getBoardList.do">글 목록 가기</a></p>
</div>


</body>
</html>