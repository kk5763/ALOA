<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>검색 필터</title>
<link rel="stylesheet" href="/style/min_style/searchFilter.css" />
</head>
<script type="text/javascript" src="/js/searchFilter.js"></script>
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
				<div id="gang_nam" class="areaNameTitle"
					onclick="openCity('aa', 'gang_nam')">강남</div>
				<div id="gang_buk" class="areaNameTitle"
					onclick="openCity('bb', 'gang_buk')">강북</div>
				<div id="gyeong_gi_do" class="areaNameTitle"
					onclick="openCity('cc', 'gyeong_gi_do')">경기도</div>
				<div class="areaNameTitle">인천</div>
				<div class="areaNameTitle">대구</div>
				<div class="areaNameTitle">더보기</div>
			</div>

			<div id="aa" class="w3-container w3-display-container city">
				<div class="zoneBottom">
					<div class="zoneName" id="gang_nam_yuck" onclick="selectZone('gang_nam_yuck')">강남역</div>
					<div class="zoneName" id="ga_ro_su_gil" onclick="selectZone('ga_ro_su_gil')">가로수길</div>
					<div class="zoneName" id="sin_sa" onclick="selectZone('sin_sa')">신사/압구정</div>
					<div class="zoneName" id="cheong_dam_dong" onclick="selectZone('cheong_dam_dong')">청담동</div>
					<div class="zoneName" id="sin_cheon" onclick="selectZone('sin_cheon')">신천/잠실</div>
					<div class="zoneName" id="yeo_ui_do" onclick="selectZone('yeo_ui_do')">여의도</div>
					<div class="zoneName" id="yeok_sam" onclick="selectZone('yeok_sam')">역삼/선릉</div>
					<div class="zoneName" id="gyo_dae" onclick="selectZone('gyo_dae')">교대/서초</div>
					<div class="zoneName" id="sam_sung_dong" onclick="selectZone('sam_sung_dong')">삼성동</div>
					<div class="zoneName" id="non_hyeon_dong" onclick="selectZone('non_hyeon_dong')">논현동</div>
					<div class="zoneName" id="seo_rae" onclick="selectZone('seo_rae')">서래마을</div>
					<div class="zoneName" id="dong_jak" onclick="selectZone('dong_jak')">동작/사당</div>
				</div>
			</div>

			<div id="bb" class="w3-container w3-display-container city"
				style="display: none">
				<div class="zoneBottom">
					<div class="zoneName" id="hong_dae" onclick="selectZone('hong_dae')">홍대</div>
					<div class="zoneName" id="i_tae_won" onclick="selectZone('i_tae_won')">이태원/한남동</div>
					<div class="zoneName" id="gwang_hwa_moon" onclick="selectZone('gwang_hwa_moon')">광화문</div>
					<div class="zoneName" id="sin_chon" onclick="selectZone('sin_chon')">신촌/이대</div>
					<div class="zoneName" id="ma_po" onclick="selectZone('ma_po')">마포</div>
					<div class="zoneName" id="jong_ro" onclick="selectZone('jong_ro')">종로</div>
					<div class="zoneName" id="dae_hak_ro" onclick="selectZone('dae_hak_ro')">대학로/혜화</div>
					<div class="zoneName" id="gun_ja" onclick="selectZone('gun_ja')">건대/군자/광진</div>
					<div class="zoneName" id="myeong_dong" onclick="selectZone('myeong_dong')">명동/남산</div>
					<div class="zoneName" id="sam_cheong" onclick="selectZone('sam_cheong')">삼청/인사</div>
					<div class="zoneName" id="jung_gu" onclick="selectZone('jung_gu')">중구</div>
					<div class="zoneName" id="si_cheong" onclick="selectZone('si_cheong')">시청/남대문</div>
				</div>
			</div>

			<div id="cc" class="w3-container w3-display-container city"
				style="display: none">
				<div class="zoneBottom">
					<div class="zoneName" id="seong_nam_si" onclick="selectZone('seong_nam_si')">성남시</div>
					<div class="zoneName" id="go_yang_si" onclick="selectZone('go_yang_si')">고양시</div>
					<div class="zoneName" id="su_won_si" onclick="selectZone('su_won_si')">수원시</div>
					<div class="zoneName" id="yong_in_si" onclick="selectZone('yong_in_si')">용인시</div>
					<div class="zoneName" id="an_yang_si" onclick="selectZone('an_yang_si')">안양시</div>
					<div class="zoneName" id="bu_cheon_si" onclick="selectZone('bu_cheon_si')">부천시</div>
					<div class="zoneName" id="gwang_myeong_si" onclick="selectZone('gwang_myeong_si')">광명시</div>
					<div class="zoneName" id="hwa_sung_si" onclick="selectZone('hwa_sung_si')">화성시</div>
					<div class="zoneName" id="nam_yang_ju_si" onclick="selectZone('nam_yang_ju_si')">남양주시</div>
					<div class="zoneName" id="an_san_si" onclick="selectZone('an_san_si')">안산시</div>
					<div class="zoneName" id="gun_po_si" onclick="selectZone('gun_po_si')">군포시</div>
					<div class="zoneName" id="gu_ri_si" onclick="selectZone('gu_ri_si')">구리시</div>
				</div>
			</div>
			<!--zoneBottom -->
		</div>
		<!-- 음식종류 -->
		<div class="foodTypeText">음식종류</div>
		<div class="foodType">
			<div class="foodTypeName" id="0" onclick="foodType('koreanFood',0)">
				<img class="foodImage" id="koreanFood"
					src="/resources/images/min_image/koreanFood_0.PNG"> 한식
			</div>
			<div class="foodTypeName" id="1" onclick="foodType('japanFood',1)">
				<img class="foodImage" id="japanFood"
					src="/resources/images/min_image/japanFood_0.PNG"> 일식
			</div>
			<div class="foodTypeName" id="2" onclick="foodType('chinaFood',2)">
				<img class="foodImage" id="chinaFood"
					src="/resources/images/min_image/chinaFood_0.PNG"> 중식
			</div>
			<div class="foodTypeName" id="3" onclick="foodType('westernFood',3)">
				<img class="foodImage" id="westernFood"
					src="/resources/images/min_image/westernFood_0.PNG"> 양식
			</div>
			<div class="foodTypeName" id="4" onclick="foodType('grobalFood',4)">
				<img class="foodImage" id="grobalFood"
					src="/resources/images/min_image/grobalFood_0.PNG"> 세계음식
			</div>
			<div class="foodTypeName" id="5" onclick="foodType('buffet',5)">
				<img class="foodImage" id="buffet"
					src="/resources/images/min_image/buffet_0.PNG"> 뷔페
			</div>
			<div class="foodTypeName" id="6" onclick="foodType('cafe',6)">
				<img class="foodImage" id="cafe"
					src="/resources/images/min_image/cafe_0.PNG"> 카페
			</div>
			<div class="foodTypeName" id="7" onclick="foodType('bar',7)">
				<img class="foodImage" id="bar"
					src="/resources/images/min_image/bar_0.PNG"> 주점
			</div>
		</div>

		<!-- 주차 -->
		<div class="parkingName">주차</div>
		<div class="parking">
			<div id="absence" onclick="parking(1)">상관없음</div>
			<div id="distantPoints" onclick="parking(2)">가능한 곳만</div>
		</div>
		<div class="choiceButton">
			<div id="cancel" onclick="closeFilter()">취소</div>
			<div id="apply">적용</div>
		</div>
	</div>
</body>
</html>