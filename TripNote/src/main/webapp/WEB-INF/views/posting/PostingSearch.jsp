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

	<!-- 포스팅  검색 폼 -->

	<div>
		<h1>포스팅 검색</h1>
		<form:form method="post" action="posting_Search.do">
		
		<input type="text" name="tag">
		<input type="submit" value="검색" />
		<input type="reset" value="다시 작성" />
		</form:form>
	</div>
</body>
</html>
