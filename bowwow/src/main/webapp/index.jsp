<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ImgageShowingTest</title>
</head>
<body>
	<h2>This is ImageShowingTestPage</h2>
	<form action="registerImage.do" method="post"	enctype="multipart/form-data">
		<input type="file" name="uploadFile">
		<input type="submit" value="submit">
	</form>
</body>
</html>