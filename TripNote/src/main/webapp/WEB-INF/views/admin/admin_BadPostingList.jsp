<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 스프링  태그 라이브러리 사용 -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="1_admin_Header.jsp"%>

<script>

	function delft(no) {
		location.href = "/tripnote/admin_DeletePosting.do?posting_no="+no;
	}

</script>
<br />
<br />
<br />
<br />
<br />
<br />

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

		<!-- 
		<form action="/admin_DeletePosting.do" >
			<td><input type="submit" value="배드포스팅 삭제"
				onclick="location.href='admin_BadPostList.do';" /></td>
	</tr> -->
		<!--  itmes: 컨트롤러 모델 속성에 부여된 값 -->
		<c:forEach var="postingVO" items="${admin_selectBadPosting}">
			<tr>
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

				<!-- 추가 -->
				<td><input type="button" value="포스트 삭제"
					onclick="delft(${postingVO.posting_no})"></td>
			</tr>


		</c:forEach>
	</tr>


</table>
<br />
<br />
<br />

<%@include file="9_Footer.jsp"%>