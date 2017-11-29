<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Team(우리 팀원 소개!!)-->
	<section class="bg-light" id="team">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Our Bug Team</h2>
					<h3 class="section-subheading text-muted">
					Our Bug team's team member Information. 
					</h3>
				</div>
			</div>
			<!-- ------------------------------------------------------------------ -->
			<div class="row">
			
                <!-- 똥별똥 -->			
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/001.jpg"/>" alt="">
						<h4>Ko Eunbit</h4>
						<p class="text-muted">
						Team Leader<br/>
						
						</p>
					</div>
				</div>
				
				<!-- ------------------------------------------------------------------ -->
				<!-- 은정따리 -->
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/002.jpg"/>" alt="">
						<h4>Kim Eunjung</h4>
						<p class="text-muted">
						assistant manager<br/>
						
						</p>
					</div>
				</div>
			
				<!-- ------------------------------------------------------------------ -->
				<!-- 뚱섭씨 -->
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/003.jpg"/>" alt="">
						<h4>Kim Ddunddun</h4>
						<p class="text-muted">
						team member<br/>
						</p>
					</div>
				</div>
				
				<!-- ------------------------------------------------------------------ -->
				<!-- 심재혐 -->
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/004.jpg"/>" alt="">
						<h4>Sim Jeahyeom</h4>
						<p class="text-muted">Lead Developer</p>
					</div>
				</div>
				
				<!-- ------------------------------------------------------------------ -->
				<!-- 악플러 -->
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/005.png"/>" alt="">
						<h4>Lee Jinsoo</h4>
						<p class="text-muted">Lead Developer</p>
					</div>
				</div>
				
				<!-- ------------------------------------------------------------------ -->
				<!-- 나래기 -->
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/006.png"/>" alt="">
						<h4>Na Gunwoo</h4>
						<p class="text-muted">Lead Developer</p>
					</div>
				</div>
				
				<!-- ------------------------------------------------------------------ -->
				<!-- 강종호 -->
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="<c:url value="resource/img/team/007.jpg"/>" alt="">
						<h4>Kang Jongho</h4>
						<p class="text-muted">Lead Developer</p>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<p class="large text-muted">
					We are Bug team.<br/>
					Thank you. ★
					</p>
				</div>
			</div>
		</div>
	</section>