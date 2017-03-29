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
/* 작은이미지 클릭하면 큰이미지로 띄우기 */
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
	 
	 var cc = document.getElementById("imageCenter_img").setAttribute("src",aa);	//aa경로 큰이미지 경로로 바꿔주기 

 }
 
/* 슬라이드 이동 */
var num = 1;//사진번호 셋팅 전역변수
function nextGallery()
{	 
	num++;//num에서 1씩증가
	if(num > 30) num = 1;//num이 30을 넘어가면 1로돌아가~
	
	var elem01 = document.getElementById("imageCenter_img");//개체설정
	elem01.src = "/resources/images/detailView_Image/imageCenter_"+num+".jpg";
	
	var ss = document.getElementById("imageCenter_img").getAttribute("src");
	//alert(ss);
	var smallImage = document.getElementsByClassName("smallImage").setAttribute("src",ss);
	for(i=0; i<smallImage.length; i++){//투명도 초기화
		smallImage[i].style.border = "1px solid yellow";
		//alert(smallImage[i]);
	}
	
}

function prevGallery()
{
	num--;//num에서 1씩감소
	if(num < 1) num = 30;//num이 1을 넘어가면 30로돌아가~
	
	var elem01 = document.getElementById("imageCenter_img");//개체설정
	elem01.src = "/resources/images/detailView_Image/imageCenter_"+num+".jpg";
	
	var elem02 = elem01.getAttribute("src");//큰이미지 경로
	//alert(elem02);
	//큰이미지 경로랑 같은 경로를 가지고있는 작은이미지에 보더 주기
	var x = document.getElementById("smallImage").setAttribute("src",elem02);
	x.style.border = "1px solid yellow";
	//alert(x);

	

}
</script>
</head>

<body>
	<div id="imageReviewMain">
		<div id="imageMoveMain">
			<div id="imageReviewButtonleft" onclick="prevGallery()"></div>
			<div id="imageReviewButtonRight" onclick="nextGallery()"></div>
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
			<div id="ReviewName">루이쌍끄</div>
			<div id="ReviewId">
				<img id="ReviewIdImage" src="/resources/images/detailView_Image/moamoa.jpg">
				<div id ="ReviewIdName">모이모이짱</div>
				<div id="ReviewNum"></div>
			</div>
			<div id="ReviewContent">기대하지 않았던 테린이 매우 맛있었다. 평소보다 푸아그라가 큰게 들어가서 운이 좋았던 것도 있지만, 전체적으로 안 짜고 맛도 조화롭고 좋았다. 콜드컷 같은걸 잘 먹지 않는 편인데도 맛있게 먹었다. 글라스로 주문한 쉬라와 잘 어울렸다. 양갈비는 좀 짜고 고기의 겉과 속의 발란스가 생각보단 별로였다. 양파수프는 수프 색이 꽤 진해서 된장찌개 색깔ㅎㅎ 그런데 풍미는 색에 비해 약한것 같다. </div>
			<div id="ReviewDate">2015-11-18</div>
		</div><!--ReviewMain-->
	</div><!--imageReviewMain-->
</body>
</html>