<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰등록</title>
<style>
	#container { width: 700px; margin: 0 auto; }
	h1,h3,p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: blue; }
	.center { text-align: center; }
	.border-none, .border-none td { border: none; }
</style>
</head>
<body>

<div id="container">
	<h1>글등록</h1>
	<p><a href="logout.do">Log-out</a></p>
	<hr>
	
	<form action="insertProductReview.do" method="post"	>
	<table>
		<tr>
			<th width="70">제목</th>
			<td>
				<input type="text" name="review_title" size="30">
			</td>
		</tr>
		<tr>
			<th>상품</th>
			<td>
				<input type="text" name="p_id">
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" name="member_serial">
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea name="board_content" rows="10" cols="40"></textarea>
			</td>
		</tr>
		<tr>
			<th>동물분류</th>
			<td>
				<input type="text" name="review_content">
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