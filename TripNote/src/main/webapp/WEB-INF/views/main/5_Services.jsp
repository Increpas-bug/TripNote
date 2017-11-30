<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Services -->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Services</h2>
					<h3 class="section-subheading text-muted">
						여행을 다니면서 포스팅을 하여 나만의 여행 이야기를 다른사람들과 공유 하는 목적의 sns형 블로그입니다.
					</h3>
				</div>
			</div>
			
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> 
						<i class="fa fa-circle fa-stack-2x text-primary">
						<img class="img-fluid" src="<c:url value="resource/img/Service/01-enjoy.jpg"/>" alt="">
						</i>
						<i class="fa fa-shopping-cart fa-stack-1x fa-inverse">
						
						</i>
					</span>
					<h4 class="service-heading">Enjoy</h4>
					<p class="text-muted">
					Posting your Travel!
					</p>
				</div>
				<!-- ----------------------------------------------------------------------- -->
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> 
						<i class="fa fa-circle fa-stack-2x text-primary">::before</i> 
						<i class="fa fa-laptop fa-stack-1x fa-inverse">::before</i>
					</span>
					<h4 class="service-heading">Funny</h4>
					<p class="text-muted">
					Keeping another people's posting!
					</p>
				</div>
				<!-- ----------------------------------------------------------------------- -->
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> 
						<i class="fa fa-circle fa-stack-2x text-primary">::before</i> 
						<i class="fa fa-lock fa-stack-1x fa-inverse">::before</i>
					</span>
					<h4 class="service-heading">Love</h4>
					<p class="text-muted">
					Love.
					</p>
				</div>
			</div>
		</div>
	</section>