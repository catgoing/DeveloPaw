<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<head>
</head>
<html>
<head>
<meta charset="utf-8">
	<title>Home</title>
</head>
<body>
	<form action="/deleteProduct">
		삭제할 상품 번호<input type="text" id="delNum" name="p_id">
		<input type="submit" value="전송">
	</form>
	<form action="/updateProductStock">
		재고 수정할 상품 번호<input type="text" id="upNum" name= "p_id">
		재고 수정할 갯수<input type="text" id="inNum" name="stock">
		<input type="submit" value="전송">
	</form>
	<form action="/insertProduct" method="post" enctype="multipart/form-data" >
		추가할 상품명<input type="text" id="p_name" name= "p_name" value="test">
 		타입<select id = "p_type" name = "p_type">
       		<option>dog</option>
       		<option>cat</option>
       	</select><br>
       	가격<input type="text" id="price" name= "price" value = "10000">
       	재고<input type="text" id="stock" name= "stock" value = "100">
       	카테고리<input type="text" id="p_category" name= "p_category" value = "toy">
       	작은 이미지<input type="file" name="s_image" accept="image/*">
       	큰 이미지<input type="file" name="l_image" accept="image/*">
       	<input type="submit" value="전송">
	</form>
</body>
</html>
