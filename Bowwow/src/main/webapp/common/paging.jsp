<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="center">
<div class="pagination">
	<ol>
<c:choose>
	<c:when test="${pvo.pageBeginIdx == 1 }">		
		<a class="disable"> < </a>
	</c:when>
	<c:when test="${pvo.pageBeginIdx == 1 && p_type != null  && p_category != null }">	<!-- 스토어 카테고리 있을 때 -->	
		<a href="${command }?cPage=${pvo.pageBeginIdx - 1}&p_type=${p_type}&p_category=${p_category}"> < </a>
	</c:when>
	<c:otherwise>
		<a href="${command }?cPage=${pvo.pageBeginIdx - 1}"> < </a>
	</c:otherwise>	
</c:choose>		
<c:forEach var="pageNo" begin="${pvo.pageBeginIdx }" end="${pvo.pageEndIdx }">
	<c:if test="${pageNo == pvo.nowPage }">
		<a class="now">${pageNo }</a>
	</c:if>
	<c:if test="${pageNo != pvo.nowPage && p_type != null  && p_category != null }"> <!-- 스토어 카테고리 있을 때 -->
			<a href="${command }?cPage=${pageNo }&p_type=${p_type}&p_category=${p_category}">${pageNo }</a>
	</c:if>		
	<c:if test="${pageNo != pvo.nowPage && p_category == null }"> <!-- 스토어 전체상품일 때 -->
			<a href="${command }?cPage=${pageNo }&p_type=${p_type}">${pageNo }</a>
	</c:if>		
</c:forEach>		
	<c:if test="${pvo.pageEndIdx < pvo.totalPage && p_type != null  && p_category != null  }">	<!-- 스토어 카테고리 있을 때 -->
			<a href="${command }?cPage=${pvo.pageEndIdx + 1}&p_type=${p_type}&p_category=${p_category}"> > </a>
	</c:if>
	<c:if test="${pvo.pageEndIdx < pvo.totalPage && p_category == null }">	<!-- 스토어 전체상품일 때 -->
			<a href="${command }?cPage=${pvo.pageEndIdx + 1}&p_type=${p_type}"> > </a>
	</c:if>
	<c:if test="${pvo.pageEndIdx >= pvo.totalPage }">	
		<a class="disable"> > </a>
	</c:if>
	
	</ol>
		</div>
 </div>