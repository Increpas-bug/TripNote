<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

	function delft(no) {
		location.href = "/tripnote/admin_banMember.do?user_email="+email;
	}

</script>

<h1>블랙리스트</h1>
<table style="height: 239px;">

	<tr>
		<th>회원이메일</th>
		<th>강제탈퇴사유</th>
		<th>강제 탈퇴 날짜</th>
	
	</tr>


	<c:forEach var="blacklistVO" items="${admin_selectBlacklist}">
		<tr>
			<td>${blacklistVO.user_email}</td>
			<td>${blacklistVO.ban_reason}</td>
			<td>${blacklistVO.ban_date}</td>
<!-- 추가 -->
			<td><input type="button" value="회원 삭제"
				 onclick="delft(${memberVO.email})"></td>
		</tr>

		</tr>
	</c:forEach>








	<tr style="height: 361px;">
</table>

 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

	function delft(user_email) {
		location.href = "/tripnote/admin_banMember.do?user_email="+user_email;
	}

</script>
<%@include file="1_Header.jsp"%>
<%@include file="2_Header.jsp"%>
<h1>블랙리스트</h1><a href="admin_Main.do">메인페이지</a>
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

 

<%@include file="7_About.jsp"%>
<%@include file="8_TeamInfo.jsp"%>
<%@include file="9_Footer.jsp"%>
