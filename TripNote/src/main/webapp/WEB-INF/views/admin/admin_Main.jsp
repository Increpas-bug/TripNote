<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="1_admin_Header.jsp"%>
<br />
<br />
<br />
<br />
<br />
<br />


<!-- <h1>관리자 페이지</h1> -->

<a href="admin_MemberList.do">전체 회원 조회</a>
<br>
<a href="admin_Blacklist.do">블랙 리스트 조회</a>
<br>
<a href="admin_PostingList.do">전체 포스팅 조회</a>
<br>
<a href="admin_BadPostingList.do">배드 포스팅 조회</a>

<%@include file="9_Footer.jsp"%>





