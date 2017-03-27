<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 작성</title>
<link rel="stylesheet" href="/style/min_style/reviewWrite.css">
<script>
/* 평점 */
function clickImg(mode){
	var gg = document.getElementById('good');
	var ss = document.getElementById('soso');
	var bb = document.getElementById('bad');
	if(mode==1){
		gg.style['background-image'] = "url('/resources/images/min_image/good_on.png')";
		ss.style['background-image'] = "url('/resources/images/min_image/soso_off.png')";
		bb.style['background-image'] = "url('/resources/images/min_image/bad_off.png')";
	}else if(mode==2){
		gg.style['background-image'] = "url('/resources/images/min_image/good_off.png')";
		ss.style['background-image'] = "url('/resources/images/min_image/soso_on.png')";
		bb.style['background-image'] = "url('/resources/images/min_image/bad_off.png')";
	}else if(mode==3){
		gg.style['background-image'] = "url('/resources/images/min_image/good_off.png')";
		ss.style['background-image'] = "url('/resources/images/min_image/soso_off.png')";
		bb.style['background-image'] = "url('/resources/images/min_image/bad_on.png')";
	}	
}

/* 파일추가*/
var count = 0;
function addFile(){
	//count++;
	var newFile = document.createElement("div");
	
	newFile.setAttribute("id","fileItem"+count);
	//alert(newFile);
	 
	var html = '<input type="file" name="" id="itemList"/>'
	+'<input type="button" value="-" onclick="removeFile('+count+')"/>';
	
	newFile.innerHTML = html;
	
	var newFileList = document.getElementById('file_section');
	
	newFileList.appendChild(newFile); 
	
	
}
function removeFile(idCount){
	var fileItem = document.getElementById("fileItem"+idCount);
	
	if(fileItem !=null){
		fileItem.parentNode.removeChild(fileItem); 
	}
	
}

function checkReviewWrite(){
	if(document.reviewWriteForm.content_section.value == ""){
		alert("내용을 입력하세요")
	}else{
		alert("등록되었습니다")
		document.reviewWriteForm.submit();
	}
}

</script>
</head>
<body>
	<form name="reviewWriteForm" method="post" enctype="multipart/form-data" action="/reviewWrite">
		<div id="main_section">
		
			<div id="name">파씨오네에 대한 리뷰를 작성해주세요 !</div>
			<div id="grade">
				<div id="grade_text">파씨오네를 다녀온 당신의 점수는 ?</div>
				<div id="grade_img">
					<div id="good" onclick="clickImg(1)"></div>
					<div id="soso" onclick="clickImg(2)"></div>
					<div id="bad" onclick="clickImg(3)"></div>
				</div>
			</div>
			
			<div id="content_section">
				<textarea rows="10" placeholder="300자 내외로 작성해주세요." maxlength="300" ></textarea>
			</div>
		
			<div id="file_section">		
				<input type="file" id="itemList" /><input type="button" value="+" onclick="addFile()" />
			</div>
			
			<div id="button_section"> 
				<div id="write">작성</div>
			<div id="button_section">
				<div id="write" onclick = "checkReviewWrite()">작성</div>
				<div id="cancel">취소</div>
			</div>
			
		</div>
	</form>
</body>
</html>