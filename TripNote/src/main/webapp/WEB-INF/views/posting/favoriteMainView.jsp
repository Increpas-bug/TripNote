<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="1_Header.jsp" %>
<html lang="en" class="demo-2 no-js">
	<head>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>- Trip Note -</title>
		<meta name="description" content="Hover Effects with animated SVG Shapes using Snap.svg" />
		<meta name="keywords" content="animated svg, hover effect, grid, svg shape html, " />
		<meta name="author" content="Codrops" /> 
		
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css2/normalize.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css2/demo.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value ='resource/css2/component.css'/>" />
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
		<script src="<c:url value ='resource/js2/snap.svg-min.js'/>"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
	<!-- 부트스트랩 관련 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
<style type="text/css">
/* ul li {
opacity: 0;
} */

img {
width: 233px;
height: 417px;
}
</style>

</head>

<h3>main페이지</h3>
<br>
<a href="favoriteMainView.do">카테고리</a>
<br>
<hr>
<br>
포스팅화면 똬똬똬똬
<head>
<style type="text/css">
.col-sm-4 {
	padding-bottom: 10px;
}
</style>

<script type="text/javascript">
    $(function() {
    	/* Tooltip 사용 */
	    /* $('[data-toggle="tooltip"]').tooltip('toggle'); */
	    
    	/* comment 댓글등록 */
		$('[data-name="comment"]').click(function(e) { //e = 이벤트 객체
			e.preventDefault(); //2. 기본 HTML 섭밋 이벤트 처리 방지
			var data_key = $(this).eq(0).attr("data-key");
			var data_type = $(this).eq(0).attr("data-type");
			var frm_type = '';
			if (data_type == 'modal') { frm_type = '_modal';}
			//폼기반 요청
			var params = $('#frm_comment_'+data_key+frm_type).serialize();
			console.log("댓글등록");
            // form 전송
			$.ajax({
				type : 'post',
				url : '<c:url value="/commentWrite.do"/>',
				data : params,
				async : true,
				dataType : 'json',
				success : function(data) {
					/* alert('댓글등록성공'); */
					$.each(data, function(index ,item){
                        /* 댓글리스트에 추가 */
                        console.log(item['posting_no']);
                        console.log(item['comment_no']);
                        // 댓글 추가
                        var add_comment = '';
			   			add_comment += '<span id="cmt_'+item['comment_no']+'">';
                        add_comment += item['user_nickname'] + " : " + item['comment_content'];
                        add_comment += '<a href="#" title="삭제"><span data-name="comment_delete" data-key="'+item['comment_no']+'" class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>';
				   		add_comment += '</span>';
			   			$('#comment_'+item['posting_no']).append(add_comment);
			   			// 댓글 모달창에 추가
			   			add_comment = '';
			   			add_comment += '<span id="modal_cmt_'+item['comment_no']+'">';
                        add_comment += item['user_nickname'] + " : " + item['comment_content'];
                        add_comment += '<a href="#" title="삭제"><span data-name="comment_delete" data-key="'+item['comment_no']+'" class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>';
				   		add_comment += '</span>';
			   			$('#modal_comment_'+item['posting_no']).append(add_comment);
				   		
                        $('input[name="comment_content"]').val("");
                    });
                },
				error : function(xhr, status, err) {//응답 결과 상태코드가 실패했을때 콜백함수
					alert(err + " => 오류 발생")
				}
			});
		});
    	/* comment 댓글삭제 */
		$('[data-name="comment_delete"]').click(function(e) { //e = 이벤트 객체
			e.preventDefault(); //2. 기본 HTML 섭밋 이벤트 처리 방지
			var data_key = $(this).eq(0).attr("data-key"); // comment_no
			console.log(data_key);
			// 폼기반 요청
            // form 생성
            var form = $('<form></form>');
            form.attr('action', 'commentDelete.do');
            form.attr('method', 'post');
            form.attr('id', 'frm_comment_delete_'+data_key);
            form.appendTo('body');

            var comment_no = $('<input type="hidden" name="comment_no" value="'+data_key+'">');
            form.append(comment_no);

			var params = $('#frm_comment_delete_'+data_key).serialize();
			console.log("댓글삭제");
            // form 전송
			$.ajax({
				type : 'post',
				url : '<c:url value="/commentDelete.do"/>',
				data : params,
				async : true,
				dataType : 'json',
				success : function(data) {
					/* alert('댓글삭제성공'); */
					$.each(data, function(index ,item){
                        /* 댓글리스트에서 삭제 */
                        $('#cmt_'+item['comment_no']).remove();
                        $('#modal_cmt_'+item['comment_no']).remove();
                    });
                },
				error : function(xhr, status, err) {//응답 결과 상태코드가 실패했을때 콜백함수
					alert(err + " => 오류 발생")
				}
			});
			
		});
    	/* likes 좋아요/취소 처리 */
		$('.glyphicon-heart-empty, .glyphicon-heart').click(function(e) { //e = 이벤트 객체
			e.preventDefault(); //2. 기본 HTML 섭밋 이벤트 처리 방지
			var data_key = $(this).eq(0).attr("data-key");
			//폼기반 요청
			var params = $('#frm_common_'+data_key).serialize();
			if ($(e.target).is('.glyphicon-heart-empty')) {
				console.log("좋아요");
	            // form 전송
				$.ajax({
					type : 'post',
					url : '<c:url value="/like.do"/>',
					data : params,
					async : true,
					dataType : 'json',
					success : function(data) {
						/* alert("좋아요") */
						$.each(data, function(index ,item){
                            /* 좋아요 아이콘 처리 */
							$('span[data-name=like][data-key='+ data_key +']').removeClass("glyphicon-heart-empty");
							$('span[data-name=like][data-key='+ data_key +']').addClass("glyphicon-heart");
                            /* 좋아요 갯수 처리 */
                            $('span[data-name=likeCnt][data-key='+ data_key +']').text(item['likecount']);
						});
	                },
					error : function(xhr, status, err) {//응답 결과 상태코드가 실패했을때 콜백함수
						alert(err + " => 오류 발생")
					}
				});
			} else if ($(e.target).is('.glyphicon-heart')) {
				console.log("좋아요취소");
	            // form 전송
				$.ajax({
					type : 'post',
					url : '<c:url value="/likeCancel.do"/>',
					data : params,
					async : true,
					dataType : 'json',
					success : function(data) {
						/* alert("좋아요취소") */
						$.each(data, function(index ,item){
                            /* 좋아요 아이콘 처리 */
							$('span[data-name=like][data-key='+ data_key +']').removeClass("glyphicon-heart");
							$('span[data-name=like][data-key='+ data_key +']').addClass("glyphicon-heart-empty");
                            /* 좋아요 갯수 처리 */
                            $('span[data-name=likeCnt][data-key='+ data_key +']').text(item['likecount']);
						});
	                },
					error : function(xhr, status, err) {//응답 결과 상태코드가 실패했을때 콜백함수
						alert(err + " => 오류 발생")
					}
				});
			}
		});
    	/* keeping 보관/삭제 처리 */
		$('.glyphicon-save, .glyphicon-saved').click(function(e) { //e = 이벤트 객체
			e.preventDefault(); //2. 기본 HTML 섭밋 이벤트 처리 방지
			var data_key = $(this).eq(0).attr("data-key");
			//폼기반 요청
			var params = $('#frm_common_'+data_key).serialize();
			if ($(e.target).is('.glyphicon-save')) {
				console.log("보관");
	            // form 전송
				$.ajax({
					type : 'post',
					url : '<c:url value="/keeping.do"/>',
					data : params,
					async : true,
					dataType : 'json',
					success : function(data) {
						alert("보관처리")
						$.each(data, function(index ,item){
							if (item['rownum'] == 1) {
								$('span[data-name=save][data-key='+ data_key +']').removeClass("glyphicon-save");
								$('span[data-name=save][data-key='+ data_key +']').addClass("glyphicon-saved");
							}
						});
	                },
					error : function(xhr, status, err) {//응답 결과 상태코드가 실패했을때 콜백함수
						console.log("code:"+xhr.status+"\n"+"message:"+xhr.responseText+"\n"+"error:"+error);
						alert(err + " 오류 발생")
					}
				});
			} else if ($(e.target).is('.glyphicon-saved')) {
				console.log("삭제");
	            // form 전송
				$.ajax({
					type : 'post',
					url : '<c:url value="/keepingCancel.do"/>',
					data : params,
					async : true,
					dataType : 'json',
					success : function(data) {
						alert("보관취소")
						$.each(data, function(index ,item){
							if (item['rownum'] == 1) {
								$('span[data-name=save][data-key='+ data_key +']').removeClass("glyphicon-saved");
								$('span[data-name=save][data-key='+ data_key +']').addClass("glyphicon-save");
							}
						});
	                },
					error : function(xhr, status, err) {//응답 결과 상태코드가 실패했을때 콜백함수
						console.log("code:"+xhr.status+"\n"+"message:"+xhr.responseText+"\n"+"error:"+error);
						alert(err + " 오류 발생")
					}
				});
			}
		});
	});
</script>
</head>

<div class="container">
	<div class="row panel-group">
		<c:forEach var="posting" items="${postingList}" varStatus="stat">
		<!-- 보관(keeping), 좋아요(likes) -->
		<form action="" id="frm_common_${posting.posting_no}">
			<input type="hidden" name="user_no" value="${sessionScope.member.user_no}">
			<input type="hidden" name="posting_no" value="${posting.posting_no}">
		</form>
			<div class="col-sm-4" >
				<!-- 포스팅 화면 띄우기 -->
				<article class="panel panel-default">
				   	<div class="panel-body">
				   		<!-- 블로그 제목 -->
				   		${posting.blog_title}<p>
				   		<div>
					   		<!-- 포스팅 사진 -->
					   		<c:if test="${not empty posting.posting_uploadpath}">
								<!-- Trigger the modal with a button -->
								<a data-toggle="modal" data-target="#photoView_${posting.posting_no}">
									<img alt="${posting.posting_uploadpath}" src="/upload/${posting.posting_uploadpath}" width="200">
								</a>
					   			<p>
					   		</c:if>
					   		<!-- 포스팅 제목 / 포스팅 날짜 -->
					   		${posting.posting_title} <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${posting.posting_date}"/><p>
					   		<!-- 포스팅 내용 -->
					   		${posting.posting_content}<p>
				   		</div>
				   		<!-- 해시태그 리스트 -->
				   		<c:forEach var="hashtag" items="${posting.hashtag}">
				   		#${hashtag.tag}&nbsp;
				   		</c:forEach>
				   	</div>
				   	<div class="panel-footer">
				   		<!-- 좋아요 / 좋아요 갯수 -->
						<c:choose>
							<c:when test="${posting.likesYN =='N'}">
								<c:set var="hearticon" value="heart-empty"></c:set>
							</c:when>
							<c:when test="${posting.likesYN =='Y'}">
								<c:set var="hearticon" value="heart"></c:set>
							</c:when>
						</c:choose>
						<!-- data-toggle="tooltip" 왜인지 안먹어서 일단 뺐다.. -->
				   		<a href="#" title="좋아요"><span data-name="like" data-key="${posting.posting_no}" class="glyphicon glyphicon-${hearticon}" aria-hidden="true"></span></a>
				   		좋아요 <span data-name="likeCnt" data-key="${posting.posting_no}">${posting.posting_likecount}</span>개
				   		<!-- 댓글 -->
						<a href="#comment_${posting.posting_no}" data-toggle="collapse" title="댓글"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></a>
						<!-- 보관 -->
						<c:choose>
							<c:when test="${posting.keepingYN =='N'}">
								<c:set var="saveicon" value="save"></c:set>
							</c:when>
							<c:when test="${posting.keepingYN =='Y'}">
								<c:set var="saveicon" value="saved"></c:set>
							</c:when>
						</c:choose>
						<a href="#" title="보관"><span data-name="save" data-key="${posting.posting_no}" class="glyphicon glyphicon-${saveicon}" aria-hidden="true"></span></a>
						<!-- 신고 -->
						<a href="#" title="신고"><span class="glyphicon glyphicon-filter" aria-hidden="true"></span></a>
						
						<!-- 댓글 리스트 -->
						<div id="comment_${posting.posting_no}" class="collapse">
							<p>
							<!-- 댓글입력폼 -->
				   			<form action="" id="frm_comment_${posting.posting_no}">
								<input type="hidden" name="user_no" value="${sessionScope.member.user_no}">
								<input type="hidden" name="posting_no" value="${posting.posting_no}">
				   				${sessionScope.member.user_nickname} : <input type="text" name="comment_content" >
								<a href="#" title="댓글"><span data-name="comment" data-key="${posting.posting_no}">댓글</span></a>
				   			</form>
				   			<!-- 댓글리스트 -->
					   		<c:forEach var="comments" items="${posting.comments}" varStatus="cmtStat">
					   			<!-- 댓글내용 -->
						   		<span id="cmt_${comments.comment_no}">
						   			${comments.user_nickname} : ${comments.comment_content}
						   			<a href="#" title="삭제"><span data-name="comment_delete" data-key="${comments.comment_no}" class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>
						   		</span>
					   		</c:forEach>
						</div>
			   		</div>
				</article>
			</div>
			
  <!-- Modal -->
  <div class="modal fade" id="photoView_${posting.posting_no}" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">${posting.blog_title}</h4>
        </div>
        <div class="modal-body">
        	<p><img alt="${posting.posting_uploadpath}" src="/upload/${posting.posting_uploadpath}" width="568"></p>
	   		<!-- 포스팅 제목 / 포스팅 날짜 -->
	   		${posting.posting_title} <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${posting.posting_date}"/><p>
	   		<!-- 포스팅 내용 -->
	   		${posting.posting_content}<p>
	   		<!-- 해시태그 리스트 -->
	   		<c:forEach var="hashtag" items="${posting.hashtag}">
	   		#${hashtag.tag}&nbsp;
	   		</c:forEach>
        </div>
        <div class="modal-footer">
        	<div style="text-align: left;">
		   		<!-- 좋아요 / 좋아요 갯수 -->
				<c:choose>
					<c:when test="${posting.likesYN =='N'}">
						<c:set var="hearticon" value="heart-empty"></c:set>
					</c:when>
					<c:when test="${posting.likesYN =='Y'}">
						<c:set var="hearticon" value="heart"></c:set>
					</c:when>
				</c:choose>
				<!-- data-toggle="tooltip" 왜인지 안먹어서 일단 뺐다.. -->
		   		<a href="#" title="좋아요"><span data-name="like" data-key="${posting.posting_no}" class="glyphicon glyphicon-${hearticon}" aria-hidden="true"></span></a>
		   		좋아요 <span data-name="likeCnt" data-key="${posting.posting_no}">${posting.posting_likecount}</span>개
		   		<!-- 댓글 -->
				<a href="#modal_comment_${posting.posting_no}" data-toggle="collapse" title="댓글"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></a>
				<!-- 보관 -->
				<c:choose>
					<c:when test="${posting.keepingYN =='N'}">
						<c:set var="saveicon" value="save"></c:set>
					</c:when>
					<c:when test="${posting.keepingYN =='Y'}">
						<c:set var="saveicon" value="saved"></c:set>
					</c:when>
				</c:choose>
				<a href="#" title="보관"><span data-name="save" data-key="${posting.posting_no}" class="glyphicon glyphicon-${saveicon}" aria-hidden="true"></span></a>
				<!-- 신고 -->
				<a href="#" title="신고"><span class="glyphicon glyphicon-filter" aria-hidden="true"></span></a>
				
				<!-- 댓글 리스트 -->
				<div id="modal_comment_${posting.posting_no}" class="collapse">
					<p>
					<!-- 댓글입력폼 -->
		   			<form action="" id="frm_comment_${posting.posting_no}_modal">
						<input type="hidden" name="user_no" value="${sessionScope.member.user_no}">
						<input type="hidden" name="posting_no" value="${posting.posting_no}">
		   				${sessionScope.member.user_nickname} : <input type="text" name="comment_content">
						<a href="#" title="댓글"><span data-name="comment" data-key="${posting.posting_no}">댓글</span></a>
		   			</form>
		   			<!-- 댓글리스트 -->
			   		<c:forEach var="comments" items="${posting.comments}" varStatus="cmtStat">
			   			<!-- 댓글내용 -->
				   		<span id="modal_cmt_${comments.comment_no}">
				   			${comments.user_nickname} : ${comments.comment_content}
				   			<a href="#" title="삭제"><span data-name="comment_delete" data-key="${comments.comment_no}" class="glyphicon glyphicon-remove" aria-hidden="true"></span></a><br>
				   		</span>
			   		</c:forEach>
				</div>
			</div>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
		</c:forEach>
	</div>
	<p>
</div>

<%@ include file="3_Footer.jsp" %>