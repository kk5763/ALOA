<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "/style/detailViewImage.css"/>
<script>
/* 작은이미지 큰이미지로 띄우기 */
 function roun(su) {
	var smallImage = document.getElementsByClassName("smallImage"); //smallImage클래스를 배열로 저장
	for(i=0; i<smallImage.length; i++){//투명도 초기화
		smallImage[i].style.opacity="0.5";
		smallImage[i].style.border="none";
	}	
	
	var bb = document.getElementById("smallImage" + su);//작은이미지 + 선택한이미지번호
	 
	 bb.style.opacity = "1";
	 bb.style.border = "1px solid yellow";
	 
	 var aa = document.getElementById("smallImage" + su).getAttribute("src");//작은이미지 경로 가져와서 aa에 저장
	 
	 document.getElementById("imageCenter_img").setAttribute("src",aa);	//aa경로 큰이미지 경로로 바꿔주기 
 }
 
/* 슬라이드 이동 */
var num = 1;//사진번호 셋팅 전역변수
function nextGallery()
{	 
	num++;//num에서 1씩증가
	if(num > 30) num = 1;//num이 30을 넘어가면 1로돌아가~
	
	var elem01 = document.getElementById("imageCenter_img");//개체설정
	elem01.src = "/resources/images/detailView_Image/imageCenter_"+num+".jpg";
}
function prevGallery()
{
	num--;//num에서 1씩감소
	if(num < 1) num = 30;//num이 1을 넘어가면 30로돌아가~
	
	var elem01 = document.getElementById("imageCenter_img");//개체설정
	elem01.src = "/resources/images/detailView_Image/imageCenter_"+num+".jpg";
	alert(elem01.src);	
}
</script>
</head>

<body>
	<div id="imageReviewMain">
		<div id="imageMoveMain">
			<div id="imageReviewButtonleft" onclick="nextGallery()"></div>
			<div id="imageReviewButtonRight" onclick="prevGallery()"></div>
			<div id="imageCenter">
					<img id="imageCenter_img" src="/resources/images/detailView_Image/imageCenter_1.jpg" height="100px"/>
			</div>
			<div id="imageBottom">
				<c:forEach var="i" begin="1" end="30" step="1">
					<img id="smallImage${i}" class="smallImage" onclick="roun(${i})" src="/resources/images/detailView_Image/imageCenter_${i}.jpg" height="100px"/>
				</c:forEach>
			</div>
		</div><!--imageMoveMain-->
		<div id="ReviewMain">
			
		</div><!--ReviewMain-->
	</div><!--imageReviewMain-->
</body>
</html>