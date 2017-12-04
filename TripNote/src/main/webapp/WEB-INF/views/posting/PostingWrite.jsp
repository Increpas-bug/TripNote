<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<body>

	<!-- 포스팅 등록 폼 -->

	<div>
		<h1>게시글 등록</h1>
		<form:form commandName="Posting" method="post" action="posting_Write.do" enctype="multipart/form-data">

			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="posting_title"> * 필수
					 <form:errors path="posting_title" cssClass="error" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="posting_content"></textarea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="mfile"></td>
				</tr>
				<tr>
					<th>태그</th>
					<td> <input type="text" name="tag"></td>
				</tr>
			</table>

			<br>
			<br>
			<input type="submit" value="등록" />
			<input type="reset" value="다시 작성" />
		</form:form>
	</div>
</body>
</html>
