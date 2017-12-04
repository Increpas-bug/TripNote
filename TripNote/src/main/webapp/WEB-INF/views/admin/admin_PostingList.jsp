<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<h1>포스팅 목록</h1>
	<table>

		<tr>
			<td>게시글번호</td>
			<td>게시글제목</td>
			<td>게시글날짜</td>
			<td>게시글누적조회수</td>
			<td>게시글주간조회수</td>
			<td>게시글좋아요횟수</td>
			<td>게시글신고횟수</td>
			<td>게시글위치정보</td>
			<td>회원번호</td>
			<td>블로그번호</td>
			<td>게시글내용</td>
			<td><input type="button" value="배드포스팅 조회"
				onclick="location.href='admin_BadPostingList.do';" /></td>
		</tr>
				<!--  itmes: 컨트롤러 모델 속성에 부여된 값 -->
				<c:forEach var="postingVO" items="${admin_selectAllPosting}">
				<tr>	
				<input type="checkbox" name="">			
			
			 	<td>${postingVO.posting_no}</td>
				<td>${postingVO.posting_title}</td>				
				<td>${postingVO.posting_date}</td>
				<td>${postingVO.posting_hitcount}</td>
				<td>${postingVO.posting_weekly_hitcount}</td>
				<td>${postingVO.posting_likecount}</td>
				<td>${postingVO.posting_badcount}</td>
				<td>${postingVO.posting_location}</td>
				<td>${postingVO.user_no}</td>
				<td>${postingVO.blog_no}</td>
				</tr> 
		</c:forEach>
		<c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td>
	
			
	
		
	</table> --%>
	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="1_Header.jsp"%>
<%@include file="2_Header.jsp"%>
	<h1>포스팅 목록</h1><a href="admin_Main.do">메인페이지</a>
	<table>

		<tr>
			
			<td>게시글번호</td>
			<td>게시글제목</td>
			<td>게시글날짜</td>
			<td>게시글누적조회수</td>
			<td>게시글주간조회수</td>
			<td>게시글좋아요횟수</td>
			<td>게시글신고횟수</td>
			<td>게시글위치정보</td>
			<td>회원번호</td>
			<td>블로그번호</td>			
			<td><input type="button" value="신고된 포스팅 조회"
				onclick="location.href='admin_BadPostingList.do';" /></td>
		</tr>
				<!--  itmes: 컨트롤러 모델 속성에 부여된 값 -->
				<c:forEach var="postingVO" items="${admin_selectAllPosting}">
				<tr>	
		<!-- 		<input type="checkbox" name="">		 -->	
			
			 	<td>${postingVO.posting_no}</td>
				<td>${postingVO.posting_title}</td>				
				<td>${postingVO.posting_date}</td>
				<td>${postingVO.posting_hitcount}</td>
				<td>${postingVO.posting_weekly_hitcount}</td>
				<td>${postingVO.posting_likecount}</td>
				<td>${postingVO.posting_badcount}</td>
				<td>${postingVO.posting_location}</td>
				<td>${postingVO.user_no}</td>
				<td>${postingVO.blog_no}</td>
				</tr> 
		</c:forEach>
		<%-- <c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td> --%>
	
			
	
		
	</table>


<%@include file="7_About.jsp"%>
<%@include file="8_TeamInfo.jsp"%>
<%@include file="9_Footer.jsp"%>
