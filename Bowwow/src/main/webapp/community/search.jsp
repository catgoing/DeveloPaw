<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="search">
	<input type="text" name="keyword" />
	<input type="submit" value="검색"/> 
</form>


<c:if test="${empty diarylist }">
	<a>데이터가 없습니다.</a>
</c:if>	
<c:if test="${not empty diarylist }">
	<c:forEach var="diarylist" items="${diarylist }">
		<h2>{펫일기장}</h2>
		<h3> 제목 :${diarylist.board_title }</h3><br>
		<h3> 게시판 번호 :${diarylist.board_no }</h3><br>
		<h3> 내용 :${diarylist.board_content}</h3><br>
		<h3> 동물 분류 :${diarylist.animal_class }</h3><br>	
	</c:forEach>
</c:if>	
<c:if test="${empty introlist }">
	<a>데이터가 없습니다.</a>
</c:if>	
<c:if test="${not empty introlist }">
	<c:forEach var="introlist" items="${introlist }">
		<h2>{펫소개}</h2>
		<h3> 제목 : ${introlist.board_title }</h3><br>
		<h3> 게시판 번호 : ${introlist.board_no }</h3><br> 
		<h3> 내용 : ${introlist.board_content}</h3><br>
		<h3> 동물 분류 : ${introlist.animal_class }</h3><br>	
	</c:forEach>
</c:if>	
<c:if test="${empty knowhowlist }">
	<a>데이터가 없습니다.</a>
</c:if>	
<c:if test="${not empty knowhowlist }">
	<c:forEach var="knowhowlist" items="${knowhowlist }">
		<h2>{펫노하우}</h2>
		<h3> 제목 :${knowhowlist.board_title }</h3><br>
		<h3> 게시판 번호 :${knowhowlist.board_no }</h3><br>
		<h3> 내용 :${knowhowlist.board_content}</h3><br>
		<h3> 동물 분류 :${knowhowlist.animal_class }</h3><br>	
	</c:forEach>
</c:if>	
</body>
</html>