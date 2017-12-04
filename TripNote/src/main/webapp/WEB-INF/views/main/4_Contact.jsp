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
				
				<!-- 로그인 후 페이지 (테스트용) -->
				<a href="2_Main2.do"> test! </a>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<%-- <form id="login.do" name="sentMessage" novalidate> --%>
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
						
						
						<!-- 버튼 -->
						<div class="clearfix"></div>
						<div class="col-lg-12 text-center">
							<div id="success"></div>
							<button  class="btn btn-primary btn-xl text-uppercase" type="submit">
								로그인
							</button>
							&nbsp;
							<button  class="btn btn-primary btn-xl text-uppercase" type="submit">
								회원가입
							</button>
							&nbsp;
							<button  class="btn btn-primary btn-xl text-uppercase" type="submit">
								관리자
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</section>