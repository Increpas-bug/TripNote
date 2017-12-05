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
		
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">

</head>

<body>

<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="resource/vendor/jquery/jquery.min.js"/>">
	</script>
	
	<script src="<c:url value="resource/vendor/bootstrap/js/bootstrap.bundle.min.js"/>">	
	</script>

	<!-- Plugin JavaScript -->
	<script src="<c:url value="resource/vendor/jquery-easing/jquery.easing.min.js"/>">
	</script>

	<!-- Contact form JavaScript -->
	<script src="<c:url value="resource/js/jqBootstrapValidation.js"/>">	
	</script>
	
	<script src="<c:url value="resource/js/contact_me.js"/>">	
	</script>

	<!-- Custom scripts for this template -->
	<script src="<c:url value="resource/js/agency.min.js"/>">
	</script>


<!-- Footer -->
<footer>
<a class="navbar-brand js-scroll-trigger" href="#page-top" style="display:block; font-size:20px; font-weight:600; color:#ffc107; background-color:#fff; padding-left:80%;">
				Top</a>
	<br/>
	<br/>	
	<div class="container" >
		<div class="row">
			<div class="col-md-4" style="font-size:15px ; color: #fff; text-align: center;">
				<span class="copyright">Copyright &copy; bug's tripNote 2017</span>
			</div>
			<!-- ------------------------------------------------------------------ -->
			<div class="col-md-4" style="font-size:15px ; color: #fff; text-align: center;">
				<ul class="list-inline social-buttons">
					<li class="list-inline-item">
						<a target="_blank" href="https://www.naver.com"> 
							naver<i class="fa fa-naver"></i>
						</a>
					</li>
					<!-- ------------------------------------------------------------------ -->
					<li class="list-inline-item">
						<a target="_blank" href="https://www.google.co.kr"> 
							google<i class="fa fa-google"></i>
						</a>
					</li>
					<!-- ------------------------------------------------------------------ -->
					<li class="list-inline-item">
						<a target="_blank" href="https://ko-kr.facebook.com/"> 
							Facebook<i class="fa fa-Facebook"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<br/>
</footer>
</body>
</html>