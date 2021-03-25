<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="popup-content detail-animal">
	<div class="popup-inner img-pet" id="petimg">동물이미지</div>
	<div class="popup-inner text-pet">
	<div class="my-pet-menu" id="mypetmenu">
		<button id="mypetupdate" onclick="goUpdate()">수정</button>
		<button id="mypetdelete" onclick="goDelete()">삭제</button>
	</div>
	<div class="my-pet-detail">
		<h2 id="petname">#{petName }</h2>
		<ul>
			<li id="gender">성별</li>
			<li id="variety">품종</li>
			<li id="birthday">생일</li>
		</ul>
		<div class="textMain-wrap">
			<div class="box-detail" id="detail_age">
				<h3>나이</h3>
				<p id="petAge">${petAge }</p>
			</div>
			<div class="box-detail" id="detail_size">
				<h3>체형</h3>
				<p id="petSize">${petSize }</p>
			</div>
			<div class="box-detail" id="detatl_weight">
				<h3>무게</h3>
				<p id="petWeight">${petWeight }</p>
			</div>
			<div class="box-detail" id="detail_neck">
				<h3>목둘레</h3>
				<p id="petNeck">${neckLength }</p>
			</div>
			<div class="box-detail" id="detail_back">
				<h3>등길이</h3>
				<p id="petBack">${backLength }</p>
			</div>
			<div class="box-detail" id="detail_chest">
				<h3>가슴둘레</h3>
				<p id="petChest">${chestLength }</p>
			</div>
		</div>
		<div class="textSub-wrap">
			<div class="box-detail" id="detail_etc">
				<h3>특이사항</h3>
				<p id="petEtc">${petEtc }</p>
			</div>
		</div>
	</div>
	</div>
</div>
</body>
</html>