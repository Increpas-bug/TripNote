<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="1_admin_Header.jsp"%>

<script>
	function delft(user_email) {
		console.log(user_email);
		location.href = "/tripnote/admin_banMember.do?user_email=" + user_email;
	}
</script>
<br />
<br />
<br />
<br />
<br />
<br />

<h1>회원 리스트</h1>
<a href="admin_Main.do">메인페이지</a>
<table style="height: 239px;">

	<tr>

		<th>회원 번호</th>
		<th>회원 아이디</th>
		<th>회원 별명</th>
		<th>회원 비밀번호</th>
		<th>회원 생년월일</th>
		<th>회원 관리자 여부</th>
		<th>블랙리스트 등록</th>
		<td><input type="button" value="블랙리스트 조회"
			onclick="location.href='admin_Blacklist.do';" /></td>

	</tr>

	<c:forEach var="memberVO" items="${admin_selectAllMember}">
		<tr>
			<td>${memberVO.user_no}</td>
			<td>${memberVO.user_email}</td>
			<td>${memberVO.user_nickname}</td>
			<td>${memberVO.user_pw}</td>
			<td>${memberVO.user_birth}</td>
			<td>${memberVO.user_adminyn}</td>
			<td>
				<button onclick="delft('${memberVO.user_email}')">회원 삭제,
					블랙리스트 등록</button>
			</td>
		</tr>
	</c:forEach>

</table>

<%@include file="9_Footer.jsp"%>
