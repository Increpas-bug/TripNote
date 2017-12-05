<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!-- Contact -->
<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Start TripNote!</h2>
				<h3 class="section-subheading text-muted">Login & Membership</h3>
				
				<!-- admin -->	
				<a href="admin_Main.do">admin_Main.do</a>
				<br/>
				<!-- Favorite -->
				<c:if test="${not empty sessionScope.member}">
			    	${sessionScope.member.user_nickname} 님 Hi!!
					<a href="favoriteMainView.do">FavoriteMainView.do</a>
					<br>
					<!-- My -->
					<a href="2_My_Main.do?user_no=${sessionScope.member.user_no}">2_My_Main.do</a>
				</c:if>
				<br/>
				<br/>
				<!-- main2 -->
				<a href="2_Main2.do">2_Main2.do</a>
				<br/>		
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<%-- <form id="contactForm" name="sentMessage" novalidate> --%>
				<form:form commandName="member" action="login.do"  name="sentMessage" method="post">
					<div class="row">
					<div class="col-md-3">
					</div>
						<div class="col-md-6">
							
							<!-- 이메일 주소=아이디 -->
							<div class="form-group">
								<input class="form-control"  name="user_email" type="text" placeholder="이메일(아이디) *" required
									   data-validation-required-message="이메일 주소를 입력해 주세요.(ID가 이메일주소입니다.)">
								<p class="help-block text-danger"></p>
							</div>
							
							<!-- 비밀번호 -->
							<div class="form-group">
								<input class="form-control"  name="user_pw" type="password" placeholder="비밀번호 *" required
									   data-validation-required-message="비밀번호를 입력해주세요.">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="col-md-3">
						</div>
						<br>
						<div class="clearfix"></div>
						<div class="col-lg-12 text-center">
							<div id="success"></div>
							<!-- 로그인 -->
							<button class="btn btn-primary btn-xl text-uppercase" type="submit">
								Membership<br/>Login
							</button>
							
							<!-- 회원가입 -->
							<button class="btn btn-primary btn-xl text-uppercase" type="button"
							onclick="location.href='joinForm.do'" style="color: #fff;">
								Membership<br/>Join
							</button>
									
							<!-- 관리자로그인 -->
							<button class="btn btn-primary btn-xl text-uppercase" type="submit">
								Manager<br/>Login
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</section>