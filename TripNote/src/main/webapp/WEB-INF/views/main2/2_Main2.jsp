<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="1_Header.jsp" %>

<!-- Main -->
<html lang="en" class="demo-2 no-js">
	<head>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>- Trip Note -</title>
		<meta name="description" content="Hover Effects with animated SVG Shapes using Snap.svg" />
		<meta name="keywords" content="animated svg, hover effect, grid, svg shape html, " />
		<meta name="author" content="Codrops" /> 
		
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css2/normalize.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css2/demo.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css2/component.css'/>" />
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
		<script src="<c:url value ='resource/js2/snap.svg-min.js'/>"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
<style type="text/css">
/* ul li {
opacity: 0;
} */

img {
width: 233px;
height: 417px;
}
</style>

</head>
	
<!-- <script>
	$(document).ready(function(){
    	$("button").hide(0, function(){
            $("button.viewB").show();
        });
    	
        $("li").each(function(){
           
            $("#"+$(this).text()).show();
        });         
       
	});
</script> -->

<body>
<br/>
<br/>

	<div class="container">

		<!-- Top Navigation -->
		<!-- <div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/SVGDrawingAnimation/"><span>Previous Demo</span></a>
				<span class="right"><a href="http://cargocollective.com/isaac317">Artwork by Isaac Montemayor</a><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=18145"><span>Back to the Codrops Article</span></a></span>
			</div> -->
		<header class="codrops-header">
			<!-- <h1>Shape Hover Effect with SVG<span>Recreating the effect as seen on <a href="http://christmasexperiments.com/">The Christmas Experiments</a></span></h1> -->
			<nav class="codrops-demos">
				<!-- 임시방편으로 넣어놓음 -->
				<%-- <a class="current-demo" href="afterMain.do?test=${slist}"
					style="float: left; display: block;">TripNote Top8</a> --%>
				<!-- <div class="container2"
					style="float: left; height: 90px; width: 100%">
					<button id='koreab' class='btn'>Korea</button>
					<button id='japanb' class='btn btn-primary'>Japan</button>
					<button id='englandb' class='btn btn-secondary'>England</button>
					<button type="button" class="btn">Basic</button>
					<button type="button" class="btn btn-primary">Primary</button>
					<button type="button" class="btn btn-secondary">Secondary</button>
					<button type="button" class="btn btn-success">Success</button>
					<button type="button" class="btn btn-info">Info</button>
					<button type="button" class="btn btn-warning">Warning</button>
					<button type="button" class="btn btn-danger">Danger</button>
					<button type="button" class="btn btn-dark">Dark</button>
					<button type="button" class="btn btn-light">Light</button>
					<button type="button" class="btn btn-link">Link</button>
				</div> -->
			</nav>
<%-- 
			이미지 경로!!! : ${topMainVO.imageUrl}
			<c:set var="mainList" value="${TopMainList}"></c:set>
			one : ${mainList["0"].title} two : ${TopMainList["1"].title}
 --%>
 
 			<c:set var="mainList" value="${TopMainList}"></c:set>
		</header>
		
		
		<section id="grid" class="grid clearfix">
			<a href="#" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/${mainList["0"].imageUrl}'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>${mainList["0"].title}</h2>
						<p>${mainList["0"].content}</p>
						<button class="viewB">TOP1</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/${mainList["1"].imageUrl}'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>${mainList["1"].title}</h2>
						<p>${mainList["1"].content}</p>
						<button class="viewB">TOP2</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/6.png'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>Languid</h2>
						<p>Beetroot water spinach okra water chestnut.</p>
						<button class="viewB">View</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/8.png'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>Serene</h2>
						<p>Water spinach arugula pea tatsoi.</p>
						<button class="viewB">View</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/1.png'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>Nebulous</h2>
						<p>Pea horseradish azuki bean lettuce.</p>
						<button class="viewB">View</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/3.png'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>Iridescent</h2>
						<p>A grape silver beet watercress potato.</p>
						<button class="viewB">View</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/5.png'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>Resonant</h2>
						<p>Chickweed okra pea winter purslane.</p>
						<button class="viewB">View</button>
					</figcaption>
				</figure>
			</a> <a href="#"
				data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
				<figure>
					<img src="<c:url value ='resource/img/main2/7.png'/>" />
					<svg viewBox="0 0 180 320" preserveAspectRatio="none">
						<path
							d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z" /></svg>
					<figcaption>
						<h2>Zenith</h2>
						<p>Salsify taro catsear garlic gram.</p>
						<button class="viewB">View</button>
					</figcaption>
				</figure>
			</a>
		</section>
		<section class="related">
			<!-- <p>If you enjoyed these effects you might also like:</p>
				<div><a href="http://tympanus.net/Tutorials/CaptionHoverEffects/"><h4>Caption Hover Effects</h4></a></div>
				<div><a href="http://tympanus.net/Development/AnimatedSVGIcons/"><h4>Animated SVG Icons</h4></a></div> -->
		</section>
	</div>
	<!-- /container -->
	<script>
			(function() {
	
				function init() {
					var speed = 330,
						easing = mina.backout;

					[].slice.call ( document.querySelectorAll( '#grid > a' ) ).forEach( function( el ) {
						var s = Snap( el.querySelector( 'svg' ) ), path = s.select( 'path' ),
							pathConfig = {
								from : path.attr( 'd' ),
								to : el.getAttribute( 'data-path-hover' )
							};

						el.addEventListener( 'mouseenter', function() {
							path.animate( { 'path' : pathConfig.to }, speed, easing );
						} );

						el.addEventListener( 'mouseleave', function() {
							path.animate( { 'path' : pathConfig.from 
		}, speed, easing);
							});
						});
			}

			init();

		})();
	</script>
	<br/>
	<br/>

	<!-- 관심사 버튼 정렬을 위한 ul li -->
	<%-- <ul>
		<c:forEach var="list" items="${slist}">
			<li>${list}</li>
		</c:forEach>
	</ul> --%>
</body>
</html>

<%@ include file="3_Footer.jsp" %>