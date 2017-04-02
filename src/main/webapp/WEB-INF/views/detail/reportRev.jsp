<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>망고플레이트 리뷰 신고</title>
	<style>
		body { margin: 0 0; }
		body h3{ padding-bottom: 10px; border-bottom: 1px solid #E1E1E1; margin: 0 0; }
		#main_head{ padding-bottom: 10px; padding-top: 10px; border-bottom: 1px solid #E1E1E1; margin: 0 0; }
		#main_section { padding-top: 10px; padding-bottom: 10px; border-bottom: 1px solid #E1E1E1; }
		#footer { text-align: right; padding-top: 5px; }
	</style>
	<script type="text/javascript">
	function change(){
		if(document.getElementById('4').checked==true){
			document.getElementById('content1').readOnly=0; 
			document.getElementById('report').value=4;
		}else if(document.getElementById('3').checked==true){
			document.getElementById('report').value=3;
			document.getElementById('content1').readOnly=1;
			document.getElementById('content1').value="";
		}else if(document.getElementById('2').checked==true){
			document.getElementById('report').value=2;
			document.getElementById('content1').readOnly=1;
			document.getElementById('content1').value="";
		}else {
			document.getElementById('report').value=1;
			document.getElementById('content1').readOnly=1;
			document.getElementById('content1').value="";
		}
		
	}
	function check(){
		if(document.getElementById('4').checked==false&&
				document.getElementById('3').checked==false&&
				document.getElementById('2').checked==false&&
				document.getElementById('1').checked==false){
			alert("번호를 선택하세요.");
		}else if(document.getElementById('4').checked==true&&
				document.getElementById('content1').value==""){
			alert("내용을 입력하세요");
		}else {
			alert("신고가 정상적으로 접수되었습니다.");
			document.reportRev.submit();
			window.close();
		}
	}
	</script>
</head>
<body>
	<form name="reportRev" action="http://localhost:8000/reportRev" method="POST">
	<h3>발생한 문제에 대해 알려주세요</h3>
			<input type="hidden" name="resno" value="${resno}">
			<input type="hidden" id="report" name="report" value="0">
			<input type="hidden" name="reviewno" value="${reviewno}">
			<input type="hidden" name="email" value="<sec:authentication property='principal.email'/>">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<div id="main">
		<p id="main_head">무슨 문제가 있나요?</p>
		<div id="main_section">
			<input type="radio" id="1" name="bt" value="1" onclick="change()">욕설 등 부적절한 언어가 포함되어 있습니다<br>
			<input type="radio" id="2" name="bt" value="2" onclick="change()">맛집 리뷰에 게시되기 적절하지 않습니다<br>
			<input type="radio" id="3" name="bt" value="3" onclick="change()">사행성 광고가 포함되어 있습니다.<br>
			<input type="radio" id="4" name="bt" value="4" onclick="change()">기타
		</div>
		<textarea id="content1" name="content" cols="20" style="width:500px; height:60px;" ></textarea>
	</div>
	
	<div id="footer">
		<input type="button" value="확인" onclick="check()">
	</div>
	</form>
</body>
</html>








