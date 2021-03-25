<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 전체보기</title>
</head>
<body>

	<form method="post">
		<main>
			<div class="wrap">
					<div style="display: table;">
						<ul class="item_list">
							<c:forEach var="list" items="${productList}" varStatus="status">
								<li><a href="#" onclick=""></a> <img alt=""
									src="https://projectbit.s3.us-east-2.amazonaws.com/catImg/${list.getS_image()} +'.jpg'">
									<p>${list.getP_name }</p>
									<p>
										<fmt:formatNumber value="${list.getPrice()}" pattern="#,###" />
										원
									</p></li>
								<br>
								<br>
							</c:forEach>
						</ul>
					</div>
				</div>
		</main>
	</form>

</body>
</html>