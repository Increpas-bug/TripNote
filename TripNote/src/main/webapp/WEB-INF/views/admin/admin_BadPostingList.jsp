<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h1>신고받은 포스팅 목록</h1>
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
			<td><input type="button" value="삭제"
				onclick="location.href='deletePosting.do';" /></td>
		</tr>

		<tr style="height: 239px;">
			<c:forEach var="postingVO" items="${listModel.postingVOList}">
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
			</c:forEach>
			<c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td>

		</tr>

		<tr>
	</table>

	<%@include file="9_Footer.jsp"%> --%>

<%-- 	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<h1>신고받은 포스팅 목록</h1>
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
			<form action="">
			<td><input type="submit" value="배드포스팅 삭제"
				onclick="location.href='admin_BadPostList.do';" /></td>
		</tr>
				<!--  itmes: 컨트롤러 모델 속성에 부여된 값 -->
				<c:forEach var="postingVO" items="${admin_selectBadPosting}">
				<tr>	
				<td><input type="checkbox" name="badPosting" value="${postingVO.posting_no}">	</td>		
			
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
		</form>
		<c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td>
	
			
	
		
	</table> --%>


<!--  게시글 내용 제거 후 링크 추가 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<h1>신고받은 포스팅 목록</h1>
<table>

	<tr>
		<th>체크</th>
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
		
		
		<form action="/admin_DeletePosting.do" >
			<td><input type="submit" value="배드포스팅 삭제"
				onclick="location.href='admin_BadPostList.do';" /></td>
	</tr>
	<!--  itmes: 컨트롤러 모델 속성에 부여된 값 -->
	<c:forEach var="postingVO" items="${admin_selectBadPosting}">
		<tr>
			<td><input type="checkbox" name="badPosting"
				value="${postingVO.posting_no}"></td>

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
	</form>
	<%-- <c:forEach var="postingVO" items="${Model.postingVOList}">
				<td>${postingVO.posting_content}</td> --%>




</table>