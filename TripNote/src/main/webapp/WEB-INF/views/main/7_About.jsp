<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- About (우리 프로젝트에 대하여)-->
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">About our Project</h2>
					<h3 class="section-subheading text-muted">
						Trip Note<br /> 
						Any where, Anything!<br /> 
						Posting your enjoy travel story ~ :)
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="<c:url value="resource/img/about/1.jpg"/>" alt="">
							</div>
							
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2017-11-21</h4>
									<h4 class="subheading">Beginnings</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
									Start Project!
									</p>
								</div>
							</div>
						</li>
						<!-- --------------------------------------------------------------------------------- -->
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="<c:url value="resource/img/about/2.jpg"/>" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2017-11-22</h4>
									<h4 class="subheading">Meeting</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
									Project Meeting! <br /> 
									(어떤 웹 사이트를 만들면 좋을까?)
									</p>
								</div>
							</div>
						</li>
						<!-- --------------------------------------------------------------------------------- -->
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="<c:url value="resource/img/about/3.jpg"/>" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2017-11-26</h4>
									<h4 class="subheading">Cording</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
									Start Cording!
									</p>
								</div>
							</div>
						</li>
						<!-- --------------------------------------------------------------------------------- -->
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="<c:url value="resource/img/about/4.jpg"/>" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2017-12-04</h4>
									<h4 class="subheading">Finish</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
									Final!!
									</p>
								</div>
							</div>
						</li>
						
						<li class="timeline-inverted">
							<div class="timeline-image">
								<h4>
									Be Part <br>Of Our <br>Story!
								</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>