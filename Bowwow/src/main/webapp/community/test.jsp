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
<script>

 $(function() {
	$('#summernote').summernote({
		 	placeholder: '최대 500자 작성 가능합니다.',
	        height: 300,
	        lang: 'ko-KR'
	        , callbacks : {
            	onImageUpload : function(files, editor, welEditable) {
          	
	           		// 파일 업로드(다중업로드를 위해 반복문 사용)
		            for (var i = files.length - 1; i >= 0; i--) {
			            uploadSummernoteImageFile(files[i], this);
	            	}	
            	},
            	
            	//summernote 안의 데이터가 바뀔 때 img태그 체크
        	    onChange: function(contents, $editable) {
        		      	imageChangeCheck();
        		    }
            }
	
	 });
}); 
 
$('#summernote').on('summernote.change', function(we, contents, $editable) {
	  console.log('summernote\'s content is changed.');
	});


function uploadSummernoteImageFile(file, el) {
	
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$(el).summernote('editor.insertImage', data.url);
		    
		}, 
	});
}

function imageChangeCheck(){
/* 	var $img1 = $("div img");
	console.log($img1);
	var imgar = new Array();
	 console.log($img1.length);
	 console.log($img1);
	for (var n = 0; n < $img1.length ; n++){
		imgar.push($img1[0].arrt("src"));
		console.log(imgar[n]);
	} */
	
	//이미지 추가되면 썸네일 영역 초기화
	$("#thum_select").html("");
	//이미지 추가되면 썸네일 영역 초기화
	$(".imgs").html('');
	var imgar = new Array();
	
	//summernote 안의 p태그 > img태그 모두 찾아 img태그 개수만큼 실행하는 메서드
	$("p").find('img').each(function(){
		console.log($(this).attr('src')); //이미지 경로 콘솔에 출력
		
		//썸네일 영역에 이미지 추가 및 radio로 선택하는 부분 구현
		//radio 필요없으면 input type 변경하면 됨
		$("#thum_select").append('<div class="radio-container" style="text-align:center">');
  		$("#thum_select").append('<input type="radio" style="text-align:center" class="thum" name="img1" value="'+ $(this).attr('src') + '"/>');
  		$("#thum_select").append('<img style="width:200px" src="'+ $(this).attr('src') + '"/>');
  		$("#thum_select").append('</div>');
  		
  		//여러 개의 이미지 경로 각각 imgar 배열에 담는 부분
  		imgar.push($(this).attr("src"));
  		
  		//이미지 경로 담긴 최종 imgar 배열 콘솔에 출력
  		console.log("imgar: " + imgar);
		
		});
	//이미지 경로들 imgar 배열에 담기
	//확인 버튼 누르면 hidden img_locas 값으로 boardVO에 전달
	$(".imgs").append('<input type="hidden" name="img_locas" value="' + imgar + '">');
}



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
	
	

  	<textarea id="summernote" name="board_content" ></textarea>
  	
  	<div class="thum_select" id="thum_select" style="float:left;, padding: 500px;">
  	

  		
  	</div>
  	<div class="imgs">
  	
  	</div>
  	
	<br><br>
	<div style="text-align:center">
  	<input type="submit" value="전송">
	</div>
  		
	</form>

</div>


</body>
</html>
