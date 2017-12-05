<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

</style>
<!-- <script type="text/javascript" src="script/board.js"></script> -->
</head>

<body id="page-top">
	<!-- Navigation (= 1_Header) -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="<%=request.getContextPath() %>">
				TripNote</a>
			<!--  -->
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>

			<!-- manu -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Login & Membership</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#blog">Blog</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">Team Information</a></li>
				</ul>
			</div>
		</div>
		<!-- 검색 -->
		
		<div class="form-group" style=" margin-top: 1%;">
		<form:form method="post" action="posting_Search.do">
			<input class="form-control" id="search" type="search" name="tag" placeholder="검색어를 입력해주세요. *">
		</div>
		
		<button class="btn btn-primary btn-xl text-uppercase" type="submit" 
					style="margin-left: 1%;margin-bottom: 1%;padding: 6px 10px 6px 10px;">
				Search
		</button>
		</form:form>
	</nav>