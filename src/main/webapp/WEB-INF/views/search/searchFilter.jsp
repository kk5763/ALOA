<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>검색 필터</title>
	<link rel="stylesheet" href="/style/min_style/searchFilter.css" />
</head>
<body>
	<div id="filter">
		<!-- 검색 필터 -->
		<div class="searchFilterText">검색 필터</div>
		<div class="searchFilter">
			<div class="grade">평점순</div>
			<div class="popularity">인기순</div>
		</div>
		
		<!-- 가격/1인당 -->
		<div class="priceText">가격/1인당</div>
		<div class="overlapChoice">중복 선택 가능</div>
		<div class="price">
			<div class="money">만원미만</div>
			<div class="money">1만원대</div>
			<div class="money">2만원대</div>
			<div class="money">3만원대</div>
		</div>
		
		<!-- 지역 -->
		<div class="areaText">지역</div>
		<div class="overlapChoice">중복 선택 가능</div>
		<div class="area">
			<div class="areaName">
				<div class="areaNameTitle">강남</div>
				<div class="areaNameTitle">강북</div>
				<div class="areaNameTitle">경기도</div>
				<div class="areaNameTitle">인천</div>
				<div class="areaNameTitle">대구</div>
				<div class="areaNameTitle">더보기</div>
			</div><!-- areaName -->
			<div class="zoneBottom">
				<div class="zoneName" id="leftZone">강남역</div>
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
			</div><!-- zoneBottom -->
		</div><!-- area -->
		
		<!-- 음식종류 -->
		<div class="foodTypeText">음식종류</div>
		<div class="overlapChoice">중복 선택 가능</div>
		<div class="foodType">
			<div class="foodTypeName" id="koreanFood">
				<img src="/resources/images/min_image/koreanFood_off.PNG" 
				onclick="src='/resources/images/min_image/buffet_on.PNG'">
				한식	
			</div>
			<div class="foodTypeName" id="japanFood">
				<img src="/resources/images/min_image/japanFood_off.PNG" 
				onclick="src='/resources/images/min_image/buffet_on.PNG'">
				일식
			</div>
			<div class="foodTypeName" id="chinaFood">
				<img src="/resources/images/min_image/chinaFood_off.PNG" 
				onclick="src='/resources/images/min_image/buffet_on.PNG'">
				중식
			</div>
			<div class="foodTypeName" id="westernFood">
				<img src="/resources/images/min_image/westernFood_off.PNG" 
				onclick="src='/resources/images/min_image/buffet_on.PNG'">
				양식
			</div>
			<div class="foodTypeName" id="grobalFood">
				<img src="/resources/images/min_image/grobalFood_off.PNG" 
				onclick="src='/resources/images/min_image/buffet_on.PNG'">
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