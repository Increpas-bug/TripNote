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
						<!--  -->
						<!-- <div class="col-md-6">
							<div class="form-group">
								<textarea class="form-control" id="message" placeholder="Your Message *" required
									      data-validation-required-message="Please enter a message.">
							    </textarea>
								<p class="help-block text-danger"></p>
							</div>
						</div> -->
						
						<!--  -->
						<br>
						<a href="admin_Main.do">admin_Main.do</a>
			<c:if test="${not empty sessionScope.member}">
			       ${sessionScope.member.user_nickname} 님 Hi!!
				<a href="favoriteMainView.do">FavoriteMainView Test</a>
			</c:if>
						
						
						<br>
						<div class="clearfix"></div>
						<div class="col-lg-12 text-center">
							<div id="success"></div>
							<button class="btn btn-primary btn-xl text-uppercase" type="submit">
								Membership<br/>Login
							</button>
							<button class="btn btn-primary btn-xl text-uppercase" type="submit">
								Membership<br/>Join
							</button>
														
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