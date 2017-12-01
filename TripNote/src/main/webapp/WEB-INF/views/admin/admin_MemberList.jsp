<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>회원 리스트</h1>
<table style="height: 239px; ">

	<tr>
	<th>체크</th>
		<th>회원 번호</th>
		<th>회원 아이디</th>	
		<th>회원 별명</th>
		<th>회원 비밀번호</th>
		<th>회원 생년월일</th>
		<th>회원 관리자 여부</th>
		<th><input type="submit" value="회원 블랙리스트에 넣기"
			onclick="location.href='admin_Blacklist.do';" /></th>
	</tr>

	
		<c:forEach var="memberVO" items="${admin_selectAllMember}">
		<tr>
			<td><input type="checkbox" name="badPosting"
				value="${postingVO.posting_no}"></td>
			<td> 
				<!-- <input type="checkbox" name="email"> -->
				${memberVO.email}
				</td>
			
			<td>${memberVO.no}</td>
			<td>${memberVO.nickname}<td>			
			<td> ${memberVO.pw}</td>
			<td>${memberVO.birth}</td>
			<td>${memberVO.adminyn}</td>
			</tr>				
		</c:forEach>
		
		<%-- <c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td> --%>



	


	<tr style="height: 361px; ">
</table>

