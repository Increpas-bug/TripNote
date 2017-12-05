<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>프로필 사진 변경 테스트</h1>
	<form:form method="post" action="profile_photo_update.do?user_no=1"
		enctype="multipart/form-data" commandName="blog">
		<table>
			<tr>
				<th>프로필 사진 등록</th>
				<td><input type="file" name="mfile"></td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form:form>
	<h1>타이틀 사진 추가</h1>
	<form:form action="title_photo_update.do?user_no=1" method="post"
		enctype="multipart/form-data" commandName="blog">
		<table>
			<tr>
				<th>타이틀 사진 등록</th>
				<td><input type="file" name="mfile"></td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form:form>
	<form:form method="post" action="blog_title_write.do?user_no=1"
		enctype="multipart/form-data" commandName="blog">
		<table>
			<tr>
				<th>블로그 제목</th>
				<td><input type="text" name="blog_title"></td>
			</tr>
			<tr>
				<th>블로그 소개글</th>
				<td><input type="text" name="blog_detail"></td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form:form>
</body>
</html>