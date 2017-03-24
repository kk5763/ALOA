<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>망고플레이트 맛집 신고</title>
	<style>
		body { margin: 0 0; }
		body h3{ padding-bottom: 10px; border-bottom: 1px solid #E1E1E1; margin: 0 0; }
		#main_head{ padding-bottom: 10px; padding-top: 10px; border-bottom: 1px solid #E1E1E1; margin: 0 0; }
		#main_section { padding-top: 10px; padding-bottom: 10px; border-bottom: 1px solid #E1E1E1; }
		#footer { text-align: right; padding-top: 5px; }
	</style>
</head>
<body>
	<h3>발생한 문제에 대해 알려주세요</h3>
	
	<div id="main">
		<p id="main_head">무슨 문제가 있나요?</p>
		<div id="main_section">
			<input type="radio" name="bt" value="1">존재하지 않는 맛집입니다<br>
			<input type="radio" name="bt" value="2">망고플레이트에 게시되기 적절하지 않습니다<br>
			<input type="radio" name="bt" value="3">부적절한 사진이 포함되어있습니다<br>
			<input type="radio" name="bt" value="4">기타
		</div>
	</div>
	
	<div id="footer">
		<input type="button" value="확인">
	</div>
</body>
</html>








