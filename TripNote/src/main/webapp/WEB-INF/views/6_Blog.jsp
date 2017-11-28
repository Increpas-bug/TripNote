<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Portfolio Grid (Blog 시안 예시 보여주기 그리드) -->
<section class="bg-light" id="portfolio">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Blog</h2>
				<h3 class="section-subheading text-muted">(블로그 예시 미리보기)</h3>
			</div>
		</div>
		
		<!-- --------------------------------------------------------------------------------- -->
		<div class="row">
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/portfolio/01-thumbnail.jpg"/>" alt="">
				</a>
				<div class="portfolio-caption">
					<h4>Friends</h4>
					<p class="text-muted">with your Friends</p>
				</div>
			</div>
			<!-- --------------------------------------------------------------------------------- -->
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/portfolio/02-thumbnail.jpg"/>" alt="">
				</a>
				<div class="portfolio-caption">
					<h4>Family</h4>
					<p class="text-muted">with your Family</p>
				</div>
			</div>
			<!-- --------------------------------------------------------------------------------- -->
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/portfolio/03-thumbnail.jpg"/>" alt="">
				</a>
				<div class="portfolio-caption">
					<h4>Lover</h4>
					<p class="text-muted">with your Lover</p>
				</div>
			</div>
			<!-- --------------------------------------------------------------------------------- -->
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="<c:url value="resource/img/portfolio/04-thumbnail.jpg"/>" alt="">
				</a>
				<div class="portfolio-caption">
					<h4> Alone</h4>
					<p class="text-muted">Travelling Alone</p>
				</div>
			</div>
			<!-- --------------------------------------------------------------------------------- -->
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/portfolio/05-thumbnail.jpg"/>" alt="">
				</a>
				<div class="portfolio-caption">
					<h4>Food</h4>
					<p class="text-muted">Good Food</p>
				</div>
			</div>
			<!-- --------------------------------------------------------------------------------- -->
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/portfolio/06-thumbnail.jpg"/>" alt="">
				</a>
				<div class="portfolio-caption">
					<h4>Awesome</h4>
					<p class="text-muted">Something Awesome</p>
				</div>
			</div>
		</div>
	</div>
</section>