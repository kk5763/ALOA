<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 작성</title>
<link rel="stylesheet" href="/style/min_style/reviewWrite.css">
<script type="text/javascript">

$(function() {
	  $('.good').click(function() {
	    $(this).css('background-image', 'url(/resources/images/min_image/good_on.png)');
	  });
});
</script>
</head>
<body>
	<form name="" method="post" enctype="multipart/form-data" action="">
		<div id="main_section">
		
			<div id="name">파씨오네에 대한 리뷰를 작성해주세요 !</div>
			<div id="grade">
				<div id="grade_text">파씨오네를 다녀온 당신의 점수는 ?</div>
				<div id="grade_img">
					<div class="good" onclick="function()"></div>
					<div id="soso"></div>
					<div id="bad"></div>
				</div>
			</div>
			
			<div id="content_section">
				<textarea rows="25" cols="90" placeholder="이곳에 내용을 입력하세요."></textarea>
			</div>
		
			<div id="file_section">
				<input type="file" name=""><input type="button" value="+" />
			</div>
			
			<div id="button_section">
				<div id="write">작성</div>
				<div id="cancel">취소</div>
			</div>
			
		</div>
	</form>
</body>
</html>