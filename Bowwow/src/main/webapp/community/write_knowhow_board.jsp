<%@page import="ga.bowwow.service.board.Board"%>
<%@page import="java.util.List"%>
<%@page import="ga.bowwow.service.board.impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%@ include file="/common/import.jsp"%>

<title>글 작성</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

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
$(function (){
	var board_idx = ${board_idx};
	board_idx = board_idx + 3;
	$(".pcoded-inner-navbar>ul:nth-child(" + board_idx + ")>li>a").addClass("active");
});

	$(function() {
		$('#summernote').summernote({
			placeholder : '최대 500자 작성 가능합니다.',
			height : 300,
			lang : 'ko-KR',
			callbacks : {
				onImageUpload : function(files, editor, welEditable) {

					// 파일 업로드(다중업로드를 위해 반복문 사용)
					for (var i = files.length - 1; i >= 0; i--) {
						uploadSummernoteImageFile(files[i], this);
					}
				},

				//summernote 안의 데이터가 바뀔 때 img태그 체크
				onChange : function(contents, $editable) {
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

	function imageChangeCheck() {
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
		$("p")
				.find('img')
				.each(
						function() {
							console.log($(this).attr('src')); //이미지 경로 콘솔에 출력

							//썸네일 영역에 이미지 추가 및 radio로 선택하는 부분 구현
							//radio 필요없으면 input type 변경하면 됨
							$("#thum_select").append('<div class="radio-container" style="text-align:center">');
							$("#thum_select").append('<input type="radio" style="text-align:center" class="thum" name="img1" checked="checked" value="'
													+ $(this).attr('src') + '"/>');
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

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- header 헤더 영역 -->
			<%@ include file="/common/header.jsp"%>
			<!-- header 헤더 영역 -->

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<!-- sidebar 좌측메뉴바 -->
					<%@ include file="/common/communityMenuBar.jsp"%>
					<!-- sidebar 좌측메뉴바 -->

					<div class="pcoded-content">

						<!-- Page-header start -->

						<!-- Page-header end -->

						<div class="pcoded-inner-content">
							<!-- body 본문 영역 -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<section class="featured spad">
											<div class="container">
												<h1>펫 일기장</h1>
												<hr>

												<form action="insertBoard" method="post" enctype="multipart/form-data">
													<div>
														<input type="radio" name="animal_class" value="1">
														강아지 <input type="radio" name="animal_class" value="2">
														고양이 <input type="radio" name="animal_class" value="3" checked="checked">
														자유
													</div>
													<div>
														<input type="radio" name="sub_class" value="1">
														생활꿀팁 <input type="radio" name="sub_class" value="2">
														급여/식이 <input type="radio" name="sub_class" value="3" checked="checked">
														교육/훈련
													</div>
													<br>

													<table>
														<tr>
															<th width="40">제목</th>
															<td><input type="text" name="board_title" size="30">
															</td>
														</tr>
													</table>
													<br>

													<textarea id="summernote" name="board_content"></textarea>
													<div class="thum_select" id="thum_select" style="float: left; , padding: 500px;"></div>
													<div class="imgs"></div>
													<br> <br>
													
												
													<input type="hidden" name="member_serial" value="994">
													<input type="hidden" name="board_idx" value="1">
													
													<div style="text-align: center" class="enter_button">
														<input type="submit" value="확인">
													</div>

												</form>
											</div>
										</section>
									</div>

								</div>
								<!-- Page-body end -->
							</div>
							<!-- body 본문 영역 -->

							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="scroll-top" id="js-button" style="margin-bottom: 190px; margin-right: 30px; font: 'Jua'">
			<i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
		</button>
		<script type="text/javascript">
			scrollTop('js-button', 100);
			function scrollTop(elem, duration) {
				let target = document.getElementById(elem);

				target.addEventListener('click', function() {
					let currentY = window.pageYOffset;
					let step = duration / currentY > 1 ? 10 : 100;
					let timeStep = duration / currentY * step;
					let intervalID = setInterval(scrollUp, timeStep);

					function scrollUp() {
						currentY = window.pageYOffset;
						if (currentY === 0) {
							clearInterval(intervalID);
						} else {
							scrollBy(0, -step);
						}
					}
				});
			}
		</script>

		<!-- footer 푸터 영역 -->
		<%@ include file="/common/footer.jsp"%>
		<!-- footer 푸터 영역 -->

	</div>

	<!-- Required Jquery -
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






