<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<meta charset="UTF-8">
<!-- 버튼+서밋버튼용w3c -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
<title>국가들을 선택하세요!</title>

<style type="text/css">
img {
width: 200px;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
	/* 1. 모든 국가 버튼을 우선 숨긴다.
	2. 고객이 관심있는 국가이미지를 클릭하면 해당 국가 버튼을 보여준다.(선택기능)
	3. 국가 버튼을 다시 누르면 국가 버튼을 숨긴다.(취소기능) */
	 $("button").hide(); 
	$("img#koreaImg").click(function() {
		/* $("#hid").append("" ); */
		/* $("#koreab").toggle(); */
		$("#koreaB").show();
		$("#korea").attr("name","country");
	});
	$("img#japanImg").click(function() {
		$("#japanB").show();
		$("#japan").attr("name","country");
	});
	$("img#chinaImg").click(function() {
		$("#chinaB").show();
		$("#china").attr("name","country");
	});
	$("img#taiwanImg").click(function() {
		$("#taiwanB").show();
		$("#taiwan").attr("name","country");
	});
	$("img#vietnamImg").click(function() {
		$("#vietnamB").show();
		$("#vietnam").attr("name","country");
	});
	
	$("#koreaB").click(function() {
		$("#koreaB").hide();
		$("#korea").attr("name","no");
		});
	$("#japanB").click(function() {
		$("#japanB").hide();
		$("#japan").attr("name","no");
		});
	$("#chinaB").click(function() {
		$("#chinaB").hide();
		$("#china").attr("name","no");
		});	
	$("#taiwanB").click(function() {
		$("#taiwanB").hide();
		$("#taiwan").attr("name","no");
		});	
	$("#vietnamB").click(function() {
		$("#vietnamB").hide();
		$("#vietnam").attr("name","no");
		});	
});
</script>
</head>
<body>

<!-- 국가별 이미지 버튼 -->
<img id="koreaImg" alt="" src="<c:url value ='resource/img/country/korea.png'/>">
<img id="japanImg" alt="" src="<c:url value ='resource/img/country/japan.png'/>">
<img id="chinaImg" alt="" src="<c:url value ='resource/img/country/china.png'/>">
<img id="taiwanImg" alt="" src="<c:url value ='resource/img/country/taiwan.png'/>">
<img id="vietnamImg" alt="" src="<c:url value ='resource/img/country/vietnam.png'/>">

<hr>
<!-- 국가별 선택 버튼 (이미지 버튼을 누르면 보이고(선택), 이 버튼을 누르면 사라짐(취소)) -->
<div class="container" style="background-color: white; float: left; height: 90px; width: 100%">
<button id='koreaB' class='btn'>Korea</button>
<button id='japanB' class='btn btn-primary'>Japan</button>
<button id='chinaB' class='btn btn-secondary'>China</button>
<button id='taiwanB' class='btn btn-success'>Taiwan</button>
<button id='vietnamB' class='btn btn-info'>Vietnam</button>

<button type="button" class="btn">Basic</button>
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-info">Info</button>

<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-dark">Dark</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-link">Link</button>    
</div>

<form action="insertFC.do">
<!-- hidden 넘기기 선택된 국가 + user_no -->
<input type="hidden" value="0" name="country" id="basic">
<input type="hidden" value="1" name="no" id="korea">
<input type='hidden' value="2" name='no' id='japan'>
<input type='hidden' value="3" name='no' id='china'>
<input type='hidden' value="4" name='no' id='taiwan'>
<input type='hidden' value="5" name='no' id='vietnam'>
<input type="hidden" value="${user_no}" name="user_no">

<div style="clear: both; width: 100%; padding-left: 20px;">
<input type="submit" class="btn btn-primary" value="Submit">
</div>

</form>

<hr>




</body>
</html>