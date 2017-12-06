<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="1_admin_Header.jsp"%>

<script>
	function delft(user_email) {
		location.href = "/tripnote/admin_banMember.do?user_email=" + user_email;
	}
</script>
<br />
<br />
<br />
<br />
<br />
<br />


<h1>블랙리스트</h1>
<a href="admin_Main.do">메인페이지</a>
<table style="height: 239px;">

	<tr>

		<th>회원이메일</th>

		<th>강제 탈퇴 날짜</th>

	</tr>


	<c:forEach var="blacklistVO" items="${admin_selectBlacklist}">
		<tr>

			<td>${blacklistVO.user_email}</td>

			<td>${blacklistVO.ban_date}</td>
			<!-- 추가 -->
			<%-- <td><input type="button" value="회원 삭제"
				 onclick="delft(${blacklistVO.no})"></td> --%>
		</tr>


	</c:forEach>

	<tr style="height: 361px;">
</table>
<br />
<br />
<br />


<%@include file="9_Footer.jsp"%>
