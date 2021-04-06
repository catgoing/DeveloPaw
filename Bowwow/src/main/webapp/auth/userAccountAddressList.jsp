<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Hover table card start -->
<div class="card">
    <div class="card-header">
        <h5>회원 목록</h5>
        <div class="card-header-right">
            <ul class="list-unstyled card-option">
                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                <li><i class="fa fa-window-maximize full-card"></i></li>
                <li><i class="fa fa-minus minimize-card"></i></li>
                <li><i class="fa fa-refresh reload-card"></i></li>
                <li><i class="fa fa-trash close-card"></i></li>
            </ul>
        </div>
    </div>
	
    <div class="card-block table-border-style">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>회원 번호</th>
                        <th>ID</th>
                        <th>주소1</th>
                    </tr>
                </thead>
                
                <tbody>
                	<c:forEach var="userAccount" items="${userDtoList }" varStatus="i">
                		<tr>
							<td>${userAccount.memberSerial}</td>
							<td>${userAccount.id}</td>
							<td>${userAddress1.address};</td>
						</tr>
					</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Hover table card end -->
