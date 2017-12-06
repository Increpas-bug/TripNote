<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en" class="demo-2 no-js">
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>- Trip Note -</title>
<meta name="description"
	content="Hover Effects with animated SVG Shapes using Snap.svg" />
<meta name="keywords"
	content="animated svg, hover effect, grid, svg shape html, " />
<meta name="author" content="Codrops" />

<link rel="stylesheet" type="text/css"
	href="<c:url value ='resource/css2/normalize.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value ='resource/css2/demo.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value ='resource/css2/component.css'/>" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<script src="<c:url value ='resource/js2/snap.svg-min.js'/>"></script>
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css">

</head>


<body id="page-top">
	<!-- Navigation (= 1_Header) -->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
			id="mainNav" style="background-color: #343a40;">
			<div class="container">

				<a class="navbar-brand js-scroll-trigger"
					href="2_Main2.do?user_no=${sessionScope.member.user_no}"
					style="font-size: 25px; font-family: 'Kaushan Script', 'Helvetica Neue', Helvetica, Arial, cursive;">
					TripNote</a>

				<!--  -->
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navbarResponsive"
					aria-controls="navbarResponsive" aria-expanded="false"
					aria-label="Toggle navigation">
					Menu <i class="fa fa-bars"></i>
				</button>

	<!-- menu -->
			<div class="collapse navbar-collapse" id="navbarResponsive" style="font-size: 16px;">
				<ul class="navbar-nav text-uppercase ml-auto">
				
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="2_My_Main.do?user_no=${sessionScope.member.user_no}">MyBlog</a></li>

				</ul>
			</div>

		<!-- 검색ㅅㅈ -->
		<div style="margin-right: 3%; font-size: 15px;">
		<form:form method="post" action="posting_Search.do" id="searchForm">
			<input class="form-control" id="search" type="search" name="tag"
				placeholder="검색어를 입력해주세요. ㅎ"
				style="font-size: 15px; padding: 0 20px 0 15px;">
		
		</form:form>
		</div>
		<button class="btn btn-primary btn-xl text-uppercase" type="submit" id="searchTag"
			style="margin-left: 0.5px; padding: 10 10 10 10;">Search</button>
		
		<script type="text/javascript">
		    $(function() {
		    	/* 검색버튼 클릭시 */
				$(document).on('click', '#searchTag', function(e) { //e = 이벤트 객체
					$('#searchForm').submit();
				});
			});
		</script>

		</nav>
</body>
</html>
