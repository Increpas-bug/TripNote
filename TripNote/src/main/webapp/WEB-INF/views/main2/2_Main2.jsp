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
		
		<!-- 아래메뉴버튼용CSS -->
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css3/demo.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css3/component.css'/>" /> 
		<!-- 메인Top8용CSS? -->		
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

img.top8 {
	width: 233px;
	height: 417px;
	}
</style>

</head>
	
<body class="demo-3">
<br/>
<br/>
<div style="width: 100%; height: 135px; " >
</div>

<div class="page" id="page-home" style="overflow: hidden; height: auto;"  >
		
			<section id="grid" class="grid clearfix">
			
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["0"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["0"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["0"].posting_title}</h2>
							<p>${top8List["0"].posting_content}</p>
							<button class="viewB">TOP1</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["1"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["1"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["1"].posting_title}</h2>
							<p>${top8List["1"].posting_content}</p>
							<button class="viewB">TOP2</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["2"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["2"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["2"].posting_title}</h2>
							<p>${top8List["2"].posting_content}</p>
							<button class="viewB">TOP3</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["3"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["3"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["3"].posting_title}</h2>
							<p>${top8List["3"].posting_content}</p>
							<button class="viewB">TOP4</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["4"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["4"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["4"].posting_title}</h2>
							<p>${top8List["4"].posting_content}</p>
							<button class="viewB">TOP5</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["5"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["5"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["5"].posting_title}</h2>
							<p>${top8List["5"].posting_content}</p>
							<button class="viewB">TOP6</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["6"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["6"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["6"].posting_title}</h2>
							<p>${top8List["6"].posting_content}</p>
							<button class="viewB">TOP7</button>
						</figcaption>
					</figure>
				</a>
				<a href="<c:url value='/readTop8Detail.do?posting_no=${top8List["7"].posting_no}' />" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img class="top8" src='/upload/${top8List["7"].posting_uploadpath}'>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h2>${top8List["7"].posting_title}</h2>
							<p>${top8List["7"].posting_content}</p>
							<button class="viewB">TOP8</button>
						</figcaption>
					</figure>
				</a>
			</section>
			
		</div>
	<!-- 메인화면(Top8)을 위해 필요 -->
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
							path.animate( { 'path' : pathConfig.from }, speed, easing );
						} );
					} );
				}

				init();

			})();
		</script>
<!-- 아래메뉴버튼 -->
		
		<svg class="hidden">
			<symbol id="icon-menu" viewBox="0 0 24 24">
				<title>menu</title>
				<path d="M23.7,3H0V0h23.7V3z M23.7,7.5H0v3h23.7V7.5z M18.9,15h-14v3h14V15z"/>
			</symbol>
			<symbol id="icon-cross" viewBox="0 0 24 24">
				<title>cross</title>
				<path d="M14.1,12l7.3,7.3l-2.1,2.1L12,14.1l-7.3,7.3l-2.1-2.1L9.9,12L2.6,4.7l2.1-2.1L12,9.9l7.3-7.3l2.1,2.1L14.1,12z"/>
			</symbol>
		</svg>
		
		<main class="view">
			<button class="btn btn--menu">
				<svg class="icon icon--menu"><use xlink:href="#icon-menu"></use></svg>
				<svg class="icon icon--cross"><use xlink:href="#icon-cross"></use></svg>
			</button>
			<nav class="tabsnav tabsnav--ibai tabsnav--hidden tabsnav--hidden-default">
			
			<c:forEach var="vo" items="${favoriteWordList}" varStatus="status">
				<div class="tabsnav__item" style="cursor: pointer;" onclick="location.href='<c:url value="/favoriteSelectView.do?favorite_no=${favoriteNumList[status.index].favorite_no}&user_no=${user_no}" />';">
					<div class="tabsnav__bar"></div>
					<h3 class="tabsnav__title">${vo.favorite_keyword}</h3>
				</div>
			</c:forEach>
		
			</nav>
			<!-- 불필요해보이지만 지우면 작동불가 -->
			<div class="tabscontent">
				<!-- 목록에 해당하는 div를 만들지 않아도 오류가 나지 않았다.	 -->	
				<button class="btn btn--back"><svg class="icon icon--caret"><use xlink:href="#icon-caret"></use></svg></button>
			</div>
		</main>
		<script src="<c:url value='resource/js3/anime.min.js'/>"></script>
		<script src="<c:url value='resource/js3/enquire.min.js'/>"></script>
		<script src="<c:url value='resource/js3/tabsnav.js'/>"></script>
		<script src="<c:url value='resource/js3/demo3.js'/>"></script>
		
</body>
</html>

<%@ include file="3_Footer.jsp" %>