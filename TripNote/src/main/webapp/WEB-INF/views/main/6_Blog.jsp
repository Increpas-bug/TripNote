<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- blog Grid (Blog 시안 예시 보여주기 그리드) -->
<section class="bg-light" id="blog">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Blog
				<h3 class="section-subheading text-muted" > Preview </h3>
				
				<!-- 로그인 후 페이지이기때문에 로그인이 완성이 안된 관계로 테스트페이지입니다. -->
				<a href="3_My_Main.do">test</a>
			
			
			</div>
		</div>
		
		<!-- =================================================================================== -->
		<!-- Modal 1 -->
		<div class="row">
			<div class="col-md-4 col-sm-6 blog-item">
				<a class="blog-link" data-toggle="modal" href="#blogModal1">
					<div class="blog-hover">
						<div class="blog-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/blog/01-thumbnail.jpg"/>" alt="">
				</a>
				<div class="blog-caption">
					<h4>Friends</h4>
					<p class="text-muted">with your Friends</p>
				</div>
			</div>
			
			<!-- =================================================================================== -->
			<!-- Modal 2 -->
			<div class="col-md-4 col-sm-6 blog-item">
				<a class="blog-link" data-toggle="modal" href="#blogModal2">
					<div class="blog-hover">
						<div class="blog-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/blog/02-thumbnail.jpg"/>" alt="">
				</a>
				<div class="blog-caption">
					<h4>Family</h4>
					<p class="text-muted">with your Family</p>
				</div>
			</div>
			
			<!-- =================================================================================== -->
			<!-- Modal 3 -->
			<div class="col-md-4 col-sm-6 blog-item">
				<a class="blog-link" data-toggle="modal" href="#blogModal3">
					<div class="blog-hover">
						<div class="blog-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/blog/03-thumbnail.jpg"/>" alt="">
				</a>
				<div class="blog-caption">
					<h4>Lover</h4>
					<p class="text-muted">with your Lover</p>
				</div>
			</div>
			
			<!-- =================================================================================== -->
			<!-- Modal 4 -->
			<div class="col-md-4 col-sm-6 blog-item">
				<a class="blog-link" data-toggle="modal" href="#blogModal4">
					<div class="blog-hover">
						<div class="blog-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img class="img-fluid" src="<c:url value="resource/img/blog/04-thumbnail.jpg"/>" alt="">
				</a>
				<div class="blog-caption">
					<h4> Alone</h4>
					<p class="text-muted">Travelling Alone</p>
				</div>
			</div>
			
			<!-- =================================================================================== -->
			<!-- Modal 5 -->
			<div class="col-md-4 col-sm-6 blog-item">
				<a class="blog-link" data-toggle="modal" href="#blogModal5">
					<div class="blog-hover">
						<div class="blog-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/blog/05-thumbnail.jpg"/>" alt="">
				</a>
				<div class="blog-caption">
					<h4>Food</h4>
					<p class="text-muted">Good Food</p>
				</div>
			</div>
			
			<!-- =================================================================================== -->
			<!-- Modal 6 -->
			<div class="col-md-4 col-sm-6 blog-item">
				<a class="blog-link" data-toggle="modal" href="#blogModal6">
					<div class="blog-hover">
						<div class="blog-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> 
					<img class="img-fluid" src="<c:url value="resource/img/blog/06-thumbnail.jpg"/>" alt="">
				</a>
				<div class="blog-caption">
					<h4>Awesome</h4>
					<p class="text-muted">Something Awesome</p>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- =========================================================================================================== -->


<!-- 상세보기 -->
<!-- Modal 1 -->
    <div class="blog-modal modal fade" id="blogModal1" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                
                  <!-- Project Details Go Here -->
                  <!-- 큰 제목 -->
                  <h2 class="text-uppercase">Friends</h2>
                  <!-- 간단한 소개 -->
                  <p class="item-intro text-muted"> With Your Friends</p>
                  <!-- 이미지 경로 -->
                  <img class="img-fluid d-block mx-auto" src="resource/img/blog/01-full.jpg" alt="">
                  <!-- 글의 내용 -->
                  <p> Hello :) </p>
                  <!-- 작성 정보 -->
                  <ul class="list-inline">
                    <li>Date: 2017-11-29</li>
                    <li>Writer: haha</li>
                    <li>Category: Friends</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<!-- =================================================================================== -->
    <!-- Modal 2 -->
    <div class="blog-modal modal fade" id="blogModal2" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">With Your Family</h2>
                  <p class="item-intro text-muted">Hello2 :)</p>
                  <img class="img-fluid d-block mx-auto" src="resource/img/blog/02-full.jpg" alt="">
                  <p>Hello :)</p>
                  <ul class="list-inline">
                    <li>Date: 2017-11-29</li>
                    <li>Writer: haha</li>
                    <li>Category: Family</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<!-- =================================================================================== -->
    <!-- Modal 3 -->
    <div class="blog-modal modal fade" id="blogModal3" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">With Your Lover.</h2>
                  <p class="item-intro text-muted">Lovely♡</p>
                  <img class="img-fluid d-block mx-auto" src="resource/img/blog/03-full.jpg" alt="">
                  <p>Lovely♡</p>
                  <ul class="list-inline">
                    <li>Date: 2017-11-29</li>
                    <li>Writer: haha</li>
                    <li>Category: Lover</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<!-- =================================================================================== -->
    <!-- Modal 4 -->
    <div class="blog-modal modal fade" id="blogModal4" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Alone</h2>
                  <p class="item-intro text-muted">I'm Free!</p>
                  <img class="img-fluid d-block mx-auto" src="resource/img/blog/04-full.jpg" alt="">
                  <p>I'm Free!</p>
                  <ul class="list-inline">
                    <li>Date: 2017-11-29</li>
                    <li>Writer: haha</li>
                    <li>Category: Alone</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<!-- =================================================================================== -->
    <!-- Modal 5 -->
    <div class="blog-modal modal fade" id="blogModal5" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Food</h2>
                  <p class="item-intro text-muted">Delicious</p>
                  <img class="img-fluid d-block mx-auto" src="resource/img/blog/05-full.jpg" alt="">
                  <p>Delicious!!S</p>
                  <ul class="list-inline">
                    <li>Date: 2017-11-29</li>
                    <li>Writer: Yummy</li>
                    <li>Category: Food</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<!-- =================================================================================== -->
    <!-- Modal 6 -->
    <div class="blog-modal modal fade" id="blogModal6" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Awesome</h2>
                  <p class="item-intro text-muted">Something Awesome</p>
                  <img class="img-fluid d-block mx-auto" src="resource/img/blog/06-full.jpg" alt="">
                  <p>Something Awesome!</p>
                  <ul class="list-inline">
                    <li>Date: 2017-11-29</li>
                    <li>Writer: Yummy</li>
                    <li>Category: Good!</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fa fa-times"></i>
                    Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

