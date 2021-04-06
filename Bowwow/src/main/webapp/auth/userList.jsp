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
                        <th>Email</th>
                        <th>주민 번호</th>
                        <th>휴대전화 번호</th>
                        <th>회원 등급</th>
                        <th>포인트</th>
                        <th>닉네임:DETAIL</th>
                        <th>이름:DETAIL</th>
                        <th>가입일:DETAIL</th>
                        <th>생일:DETAIL</th>
                        <th>성별:DETAIL</th>
                        <th>프로필이미지:DETAIL</th>
                    </tr>
                </thead>
                
                <tbody>
                	<c:forEach var="userAccount" items="${userDtoList }" varStatus="i">
                		<tr>
							<td>${userAccount.memberSerial}</td>
							<td>${userAccount.id}</td>
							<td>${userAccount.email}</td>
							<td>${userAccount.citizenId}</td>
							<td>${userAccount.phone}</td>
							<td>${userAccount.status}</td>
							<td>${userAccount.point}</td>
							<td>${userAccount.nickname}</td>
							<td>${userAccount.realname};</td>
							<td>${userAccount.regDate};</td>
							<td>${userAccount.birthday};</td>
							<td>${userAccount.gender};</td>
							<td>${userAccount.imageSource};</td>
						</tr>
					</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Hover table card end -->
