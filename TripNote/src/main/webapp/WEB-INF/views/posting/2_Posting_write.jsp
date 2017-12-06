<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="1_Header.jsp"%>

<!-- Main -->
<html lang="en" class="demo-2 no-js">
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포스팅 등록 </title>
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


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

</head>

<body>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<form:form action="posting_Write.do?user_no=${sessionScope.member.user_no}" method="post" commandName="Posting" enctype="multipart/form-data">

		<section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-left">
						<h3 class="section-heading text-uppercase"> 게시글 등록 </h3>
						<br> 
						<br>
						<table style="font-size: 18px; font-weight: 500;">
							<tr>
								<td>제목</td>
								<td><input class="form-control" style="width: 300px;"
									name="posting_title" type="text" placeholder=""></td>

							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>내용</td>
								<td>
									<textarea cols="70" rows="15" name="posting_content"></textarea>
								</td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>첨부파일</td>
								<td><input input class="form-control" type="file" name="mfile">
								</td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>태그</td>
								<td><input class="form-control" style="width: 300px;"
									type="text" name="tag">
								</td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>

                      		<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
							<td>
							</td>
							<td>
							&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="btn btn-primary " type="submit"
									    style="padding: 5 10 5 10; width: 100px; "> 등록 </button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="btn btn-primary " type="reset"
									    style="padding: 5 10 5 10; width: 100px;">다시작성</button>
							</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</section>
	</form:form>
</body>
</html>

<%@ include file="3_Footer.jsp"%>