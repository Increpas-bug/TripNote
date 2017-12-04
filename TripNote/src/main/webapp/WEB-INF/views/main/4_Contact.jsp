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
				<form id="contactForm" name="sentMessage" novalidate>
					<div class="row">
					<div class="col-md-3">
					</div>
						<div class="col-md-6">
							
							<!-- 이메일 주소 = 아이디 -->
							<div class="form-group">
								<input class="form-control" id="email" type="email" placeholder="Your Email *" required
									   data-validation-required-message="Please enter your email address.(ID)">
								<p class="help-block text-danger"></p>
							</div>
							
							<!-- 비밀번호 -->
							<div class="form-group">
								<input class="form-control" id="phone" type="tel" placeholder="Your Password *" required
									   data-validation-required-message="Please enter your Password.">
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
						
						
						<br>
						<div class="clearfix"></div>
						<div class="col-lg-12 text-center">
							<div id="success"></div>
							<button id="Login1" class="btn btn-primary btn-xl text-uppercase" type="submit">
								Membership<br/>Login
							</button>
							<button id="Login2" class="btn btn-primary btn-xl text-uppercase" type="submit">
								Membership<br/>Join
							</button>
														
							<button id="Login3" class="btn btn-primary btn-xl text-uppercase" type="submit">
								Manager<br/>Login
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>