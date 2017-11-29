<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>프로필 사진 변경 테스트</h1>
	<form:form method="post" action="blog_theme_update.do"
	enctype="multipart/form-data" commandName="blog">
		<table>
			<tr>
				<th>프로필 사진 등록</th>
				<td>
					<input type="file" name="mfile">
				</td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form:form>
</body>
</html>