<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>블랙리스트</h1>
<table style="height: 239px;">

	<tr>
		<th>회원이메일</th>
		<th>강제탈퇴사유</th>
		<th>강제 탈퇴 날짜</th>
		<th><input type="submit" value="블랙리스트 추가"
			onclick="location.href='admin_InsertBlacklist.do';" /></th>
	</tr>


	<c:forEach var="blacklistVO" items="${admin_selectBlacklist}">
		<tr>
			<td>${blacklistVO.user_email}</td>
			<td>${blacklistVO.ban_reason}</td>
			<td>${blacklistVO.ban_date}</td>


		</tr>
	</c:forEach>

	<%-- <c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td> --%>






	<tr style="height: 361px;">
</table>

