<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$("button").click(function(){
			var idx = $("button").index(this); //클릭한 댓글위치찾기
			$(".commentBox").eq(idx).css("display","block");
		})
	})
</script>
</head>
<body>
	<div class="itemBox">
		<button>댓글</button>
	</div>
	<div class="commentBox" style="display:none; boarder-bottom:2px dotted silver;">
		댓글상자
	</div>
	
	
	<div class="itemBox">
		<button>댓글</button>
	</div>
	<div class="commentBox" style="display:none; boarder-bottom:2px dotted silver;">
		댓글상자
	</div>


</body>
</html>