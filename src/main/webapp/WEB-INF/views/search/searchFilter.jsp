<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>검색 필터</title>
	<link rel="stylesheet" href="/style/min_style/searchFilter.css" />
	
	<script>
	function openCity(cityName) {
	    var i;
	    var x = document.getElementsByClassName("city");
	    for (i = 0; i < x.length; i++) {
	       x[i].style.display = "none";  
	    }
	    document.getElementById(cityName).style.display = "block";  
	}
</script>
</head>
<script type="text/javascript">
	function search(mode) {
		var grade = document.getElementById('grade');
		var popularity = document.getElementById('popularity');
		
		if(mode == 1) {
			grade.style['border'] = "2px solid tomato";
			grade.style['color'] = 'tomato';
			
			popularity.style['border'] = "1px solid #CFCFCF";
			popularity.style['color'] = "#CFCFCF";
		} else if(mode == 2) {
			grade.style['border'] = "1px solid #CFCFCF";
			grade.style['color'] = '#CFCFCF';
			
			popularity.style['border'] = "2px solid tomato";
			popularity.style['color'] = "tomato";
		}
	}// search
	
	function price(mode){
		var money = document.getElementsByClassName('money');
		
		for(i = 0; i < money.length; i++) {
			money[i].style['border'] = "3px solid #CFCFCF";
			money[i].style['color'] = "#CFCFCF";
		}
		
		var selected = document.getElementById(mode);
		
		selected.style['border'] = "3px solid tomato";
		selected.style['color'] = "tomato";
	}// price
	
</script>
<body>
	<div id="filter">
		<!-- 검색 필터 -->
		<div class="searchFilterText">검색 필터</div>
		<div class="searchFilter">
			<div id="grade" onclick="search(1)">평점순</div>
			<div id="popularity" onclick="search(2)">인기순</div>
		</div>
		
		<!-- 가격/1인당 -->
		<div class="priceText">가격/1인당</div>
		<div class="price">
			<div class="money" id="zero" onclick="price('zero')">만원미만</div>
			<div class="money" id="one" onclick="price('one')">1만원대</div>
			<div class="money" id="two" onclick="price('two')">2만원대</div>
			<div class="money" id="three" onclick="price('three')">3만원 이상</div>
		</div>
			
		<!-- 지역 -->
		<div class="areaText">지역</div>
		<div class="area">
			<div class="areaName">
			  <div class="areaNameTitle" onclick="openCity('aa')">강남</div>
			  <div class="areaNameTitle" onclick="openCity('bb')">강북</div>
			  <div class="areaNameTitle" onclick="openCity('cc')">경기도</div>
			  <div class="areaNameTitle" onclick="openCity('aa')">인천</div>
			  <div class="areaNameTitle" onclick="openCity('bb')">대구</div>
			  <div class="areaNameTitle" onclick="openCity('cc')">더보기</div>
			</div>
			
			<div id="aa" class="w3-container w3-display-container city">
			  	<div class="zoneBottom">
		            <div class="zoneName" id="leftZone">강남역</div>
		            <div class="zoneName" id="rightZone">가로수길</div>
		            <div class="zoneName" id="rightZone">신사/압구정</div>
		            <div class="zoneName" id="rightZone">청담동</div>
		            <div class="zoneName" id="leftZone">신천/잠실</div>
		            <div class="zoneName" id="rightZone">여의도</div>
		            <div class="zoneName" id="rightZone">역삼/선릉</div>
		            <div class="zoneName" id="rightZone">교대/서초</div>
		            <div class="zoneName" id="leftZone">삼성동</div>
		            <div class="zoneName" id="rightZone">논현동</div>
		            <div class="zoneName" id="rightZone">서래마을</div>
		            <div class="zoneName" id="rightZone">동작/사당</div>
         		</div>
			</div>
			
			<div id="bb" class="w3-container w3-display-container city" style="display:none">
			  	<div class="zoneBottom">
				 	<div class="zoneName" id="rightZone">홍대</div>
					<div class="zoneName" id="rightZone">이태원/한남동</div>
					<div class="zoneName" id="rightZone">광화문</div>
					<div class="zoneName" id="leftZone">신촌/이대</div>
					<div class="zoneName" id="rightZone">마포</div>
					<div class="zoneName" id="rightZone">종로</div>
					<div class="zoneName" id="rightZone">대학로/혜화</div>
					<div class="zoneName" id="leftZone">건대/군자/광진</div>
					<div class="zoneName" id="rightZone">명동/남산</div>
					<div class="zoneName" id="rightZone">삼청/인사</div>
					<div class="zoneName" id="rightZone">중구</div>
				</div>
			</div>
			
			<div id="cc" class="w3-container w3-display-container city" style="display:none">
			  	<div class="zoneBottom">
				  	<div class="zoneName" id="rightZone">가로수길</div>
					<div class="zoneName" id="rightZone">신사/압구정</div>
					<div class="zoneName" id="rightZone">청담동</div>
					<div class="zoneName" id="leftZone">강남역</div>
					<div class="zoneName" id="rightZone">가로수길</div>
					<div class="zoneName" id="rightZone">신사/압구정</div>
					<div class="zoneName" id="rightZone">청담동</div>
					<div class="zoneName" id="leftZone">강남역</div>
					<div class="zoneName" id="rightZone">가로수길</div>
					<div class="zoneName" id="rightZone">신사/압구정</div>
					<div class="zoneName" id="rightZone">청담동</div>
				</div>
			</div>
				
				<!-- <div class="zoneName" id="leftZone">강남역</div>
				<div class="zoneName" id="rightZone">가로수길</div>
				<div class="zoneName" id="rightZone">신사/압구정</div>
				<div class="zoneName" id="rightZone">청담동</div>
				<div class="zoneName" id="leftZone">강남역</div>
				<div class="zoneName" id="rightZone">가로수길</div>
				<div class="zoneName" id="rightZone">신사/압구정</div>
				<div class="zoneName" id="rightZone">청담동</div>
				<div class="zoneName" id="leftZone">강남역</div>
				<div class="zoneName" id="rightZone">가로수길</div>
				<div class="zoneName" id="rightZone">신사/압구정</div>
				<div class="zoneName" id="rightZone">청담동</div> -->
			</div><!--zoneBottom -->
			
		</div><!-- area -->
		
		<!-- 음식종류 -->
		<div class="foodTypeText">음식종류</div>
		<div class="foodType">
			<div class="foodTypeName" id="koreanFood">
				<img src="/resources/images/min_image/koreanFood_off.PNG" 
				onclick="src='/resources/images/min_image/koreanFood_on.PNG'">
				한식	
			</div>
			<div class="foodTypeName" id="japanFood">
				<img src="/resources/images/min_image/japanFood_off.PNG" 
				onclick="src='/resources/images/min_image/japanFood_on.PNG'">
				일식
			</div>
			<div class="foodTypeName" id="chinaFood">
				<img src="/resources/images/min_image/chinaFood_off.PNG" 
				onclick="src='/resources/images/min_image/chinaFood_on.PNG'">
				중식
			</div>
			<div class="foodTypeName" id="westernFood">
				<img src="/resources/images/min_image/westernFood_off.PNG" 
				onclick="src='/resources/images/min_image/westernFood_on.PNG'">
				양식
			</div>
			<div class="foodTypeName" id="grobalFood">
				<img src="/resources/images/min_image/grobalFood_off.PNG" 
				onclick="src='/resources/images/min_image/grobalFood_on.PNG'">
				세계음식
			</div>
			<div class="foodTypeName" id="buffet">
				<img src="/resources/images/min_image/buffet_off.PNG" 
				onclick="src='/resources/images/min_image/buffet_on.PNG'">
				뷔페
			</div>
			<div class="foodTypeName" id="cafe">
				<img src="/resources/images/min_image/cafe_off.PNG" 
				onclick="src='/resources/images/min_image/cafe_on.PNG'">
				카페
			</div>
			<div class="foodTypeName" id="bar">
				<img src="/resources/images/min_image/bar_off.PNG" 
				onclick="src='/resources/images/min_image/bar_on.PNG'">
				주점
			</div>
		</div>
		
		<!-- 주차 -->
		<div class="parkingName">주차</div>
		<div class="parking">
			<div class="absence">상관없음</div>
			<div class="distantPoints">가능한 곳만</div>
		</div>
	</div>
	<div class="choiceButton">
		<div id="cancel">취소</div>
		<div id="apply">적용</div>
	</div>
</body> 
</html>