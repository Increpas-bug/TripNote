<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%-- <jsp:useBean id="blogVO" type="com.bug.tripnote.model.BlogVO" scope="request" /> --%>

<!-- Wrapper -->
<div id="wrapper">
	<!-- Main -->
	<section id="blog">
		<!-- profile -->
		<div id="profile">
			<span class="photo"><img
				src="/images/${blogVO.blog_profile_photo}" /></span>
			<h1>앙 진수띠</h1>
			<ul class="icons">
				<li><a href="#" class="icon-pencil"> <span class="label">Write</span>
				</a></li>
				<li><a href="blog_theme_update.do">프로필 수정!</a></li>
			</ul>
		</div>
		<!-- timeline -->
		<section class="timeline">
			<!-- 출력형식 예시화면 -->
			<div>
				<a href="./resources/images/fulls/03.jpg"> <img
					src="./resources/images/thumbs/03.jpg" alt="" />
					<h3>예제 화면입니다.</h3>
				</a> <a href="./resources/images/fulls/04.jpg"> <img
					src="./resources/images/thumbs/04.jpg" alt="" />
					<h3>예제 화면입니다</h3>
				</a> <a href="./resources/images/fulls/05.jpg"> <img
					src="./resources/images/thumbs/05.jpg" alt="" />
					<h3>예제 화면입니다</h3>
				</a>
			</div>
		</section>

	</section>
</div>