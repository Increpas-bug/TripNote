<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="1_Header.jsp" %>


<!-- Wrapper -->
<div id="wrapper">
	<!-- Main -->
	<section id="blog">
		<!-- profile -->
		<c:choose>
			<c:when test="${not empty blogVO.blog_title_photo}">
				<c:set var="title_img" value="background-image: url('/upload/${blogVO.blog_title_photo}');width:1000;" />
			</c:when>
			<c:otherwise>
				<c:set var="title_img" value="" />
			</c:otherwise>
		</c:choose>
		<div id="profile" style="${title_img}">
			<span class="photo">
				<img src="/upload/${blogVO.blog_profile_photo}" width="300"/>
			</span>
			<h1>${blogVO.blog_title}</h1>
			<h3>${blogVO.blog_detail}</h3>
			<ul class="icons">
<!-- 				<li><a href="#" class="icon-pencil"> <span class="label">Write</span> -->
<!-- 				</a></li> -->
				<li><a href="blog_theme.do?user_no=1">블로그 테마 설정</a></li>
			</ul>
			
			<ul class="">
				<li><a href="posting_Write.do" class="icon-pencil"> <span class="label">포스팅 등록</span>
				</a></li>
				<li><a href="posting_Search.do"> <span class="label">검색 테스트</span>
				</a></li>
			</ul>
		</div>
		
		<!-- timeline -->
		<section class="timeline">
			<!-- 출력형식 예시화면 -->
			<div>
			<!-- 	<a href="./resources/images/fulls/03.jpg"> <img
					src="./resources/images/thumbs/03.jpg" alt="" />
					<h3>예제 화면입니다.</h3>
				</a> <a href="./resources/images/fulls/04.jpg"> <img
					src="./resources/images/thumbs/04.jpg" alt="" />
					<h3>예제 화면입니다</h3>
				</a> <a href="./resources/images/fulls/05.jpg"> <img
					src="./resources/images/thumbs/05.jpg" alt="" />
					<h3>예제 화면입니다</h3>
				</a> -->
			</div>
		</section>

	</section>
</div>
<%@ include file="4_Footer.jsp" %>