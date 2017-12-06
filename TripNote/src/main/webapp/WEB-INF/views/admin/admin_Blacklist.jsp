<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="1_admin_Header.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>- Trip Note -</title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value="resource/vendor/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="<c:url value="resource/vendor/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="<c:url value="resource/css/agency.min.css"/>"
	rel="stylesheet">

</head>

<body id="page-top" style="background-color:#868e96; color:#fff;">


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
<br>
<br>
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
