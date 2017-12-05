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
<title>Trip Note-회원가입</title>
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
	<script type="text/javascript">
		// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
		function checkValue() {
			if (!document.userInfo.user_email.value) {
				alert("이메일을 입력하세요.");
				return false;
			}

			if (!document.userInfo.user_pw.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			if (!document.userInfo.user_birth.value) {
				alert("생일을 입력하세요.");
				return false;
			}
			if (!document.userInfo.user_nickname.value) {
				alert("이름을 입력하세요.");
				return false;
			}

		}
	</script>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<form:form action="join.do" method="post" commandName="member"
		name="userinfo" onsubmit="return checkValue()">

		<section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-left">
						<h3 class="section-heading text-uppercase">Membership</h3>
						<br> 
						<br>
						<table style="font-size: 18px; font-weight: inherit;">
							<tr>
								<td>Email</td>
								<td><input class="form-control" style="width: 300px;"
									name="user_email" type="text" placeholder="email *"></td>
								<td><input class="btn btn-primary " type="submit"
									value="중복확인" style="padding: 5 5 5 5;"></td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>Password</td>
								<td><input class="form-control" style="width: 300px;"
									type="password" name="user_pw" placeholder="password *">
								</td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>Name</td>
								<td><input class="form-control" style="width: 300px;"
									type="text" name="user_nickname" placeholder="name *">
								</td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>Birthday</td>
								<td><input class="form-control" style="width: 300px;"
									type="text" name="user_birth" size="6" placeholder="YYMMDD *">
								</td>
							</tr>
							<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
								<td>Admin Number</td>
								<td><select lass="form-control" style="width: 100px;"
									name="user_adminyn">
										<option value="N">일반</option>
										<option value="Y">관리자</option>
								</select>
								</td>
							</tr>
                      		<tr>
							<td>
							&nbsp;
							</td>
							</tr>
							<tr>
							<td>
								<input class="btn btn-primary " type="submit"
									value="가입하기" style="padding: 5 10 5 10; margin-left: 130%;">
							</td>
							<td>
								<input class="btn btn-primary " type="reset"
									value="다시작성" style="padding: 5 10 5 10; margin-left: 60%;">
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