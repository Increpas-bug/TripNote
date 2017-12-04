<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 	<h1>관리자 페이지</h1>
			<a href="admin_MemberList.do">전체 회원 조회</a>
			<br>
			<a href="admin_SelectBlacklist.do">블랙 리스트 조회</a>
			<br>
			<a href="admin_selectAllPosting.do">전체 포스팅 조회</a>
			<br>
			<a href="admin_selectBadPosting.do">배드 포스팅 조회</a>
 -->
<%@include file="1_Header.jsp"%>
<%@include file="2_Header.jsp"%>


<h1>관리자 페이지</h1>
<a href="admin_MemberList.do">전체 회원 조회</a>
<br>
<a href="admin_Blacklist.do">블랙 리스트 조회</a>
<br>
<a href="admin_PostingList.do">전체 포스팅 조회</a>
<br>
<a href="admin_BadPostingList.do">배드 포스팅 조회</a>
<%@include file="7_About.jsp"%>
<%@include file="8_TeamInfo.jsp"%>
<%@include file="9_Footer.jsp"%>





