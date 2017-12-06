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

<body id="page-top">



<!-- <h1>관리자 페이지</h1> -->

<!-- <a href="admin_MemberList.do">전체 회원 조회</a>
<br>
<a href="admin_Blacklist.do">블랙 리스트 조회</a>
<br>
<a href="admin_PostingList.do">전체 포스팅 조회</a>
<br>
<a href="admin_BadPostingList.do">배드 포스팅 조회</a> -->

<!-- 메인페이지 수정  -->

<!-- Main -->
<header class="masthead2" id="home">
	<div class="container">
		<div class="intro-text">
			<div class="intro-heading text-uppercase">- Admin Page -</div>
			<div class="intro-lead-in">admin </div>
		</div>
	</div>
</header>
</body>
</html>

<%@include file="9_Footer.jsp"%>





