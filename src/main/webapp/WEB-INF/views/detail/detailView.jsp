<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/style/detailViewStyle.css" />
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=2ZKlolf32e3C26nU6SA4&amp;submodules=geocoder"></script>
<script type="text/javascript">
	function reportRes() {
		
		window.open("http://localhost:8000/reportRes",
					"reportRes",
					"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=500, height=210");
	}
	
	function reportRev() {
		window.open("http://localhost:8000/reportRev",
					"reportRev",
					"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=500, height=210");
	}
	
	function reviewWrite(){
			window.open("http://localhost:8000/reviewWriteForm?resno=${resDTO.restaurant.resno}",
				"dataForm",
				"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=600, height=550");
		
	}
	
	function 11(){
		
	
}
</script>
</head>
<!-- 상단영역 -->
<header> </header>

<!-- 메인영역 -->
<article class="main-scope"> <!-- 상단 이미지 슬라이더 -->
${reslist.get(0).reviewlist.image }
<div class="image-slider-div">
	<c:forEach var="i" begin="1" end="5" step="1">
		<a href="/resources/images/${i }.jpg"> <img class="images"
			src="/resources/images/${i }.jpg" height="100px" />
		</a>
	</c:forEach>
</div>
<!-- 본문 내용  -->
<div class="content-wrapper">
	<div class="content">
		<div class="content-header">

			<div class="restaurant-title">
				<div class="wannago-wrapper">
					<button class="wannago-bt"></button>
					<p class="wannago-txt">신고하기</p>
				</div>
				<h1 class="title">
					<span class="name" >${resDTO.restaurant.resname}</span> <span class="rate-point">4.6</span>
				</h1>
				
				
			</div>

			<div class="restaurant-status">
					<div class="review-bt-wrap">
						<a href="#" class="review-bt" onclick="reviewWrite()">예  약</a>
					</div>			
								
			</div>

			<div class="reportRes-button">
				<img src="/resources/images/min_image/report.PNG"
					onclick="reportRes()" />
			</div>
		</div>
		<table class="content-detail">
			<!-- 레스토랑 상세 정보 -->
			<tbody>
				<tr>
					<th class="show">주소:</th>
					<td>${resDTO.restaurant.resaddress}</td>
				</tr>
				<tr>
					<th class="show">전화번호:</th>
					<td>${resDTO.restaurant.restel}</td>
				</tr>
				<tr>
					<th class="show">음식 종류:</th>
					<td>${resDTO.restaurant.reskind}</td>
				</tr>
				<tr>
					<th class="show">가격대:</th>
					<td>${resDTO.restaurant.resprice}</td>
				</tr>
				<tr>
					<th class="show">주차:</th>
					<td>${resDTO.restaurant.resparking}</td>
				</tr>
				<tr>
					<th class="show">영업시간:</th>
					<td>${resDTO.restaurant.ressaletime}</td>
				</tr>
				<tr>
					<th class="show">쉬는시간:</th>
					<td>${resDTO.restaurant.resrest}</td>
				</tr>
				<tr>
					<th class="show">휴일:</th>
					<td>${resDTO.restaurant.resholiday}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="review-bt-div">
		<div class="review-bt-wrap">
		<c:if test="${resDTO.restaurant.resno!=null }">
			<a href="#" class="review-bt" onclick="reviewWrite()">리뷰작성</a>
		</c:if>
		<c:if test="${resDTO.restaurant.resno==null }">
			<a href="#" class="review-bt" onclick="reviewWrite(0)">리뷰작성</a>
		</c:if>
		
		
		</div>
	</div>
	<!-- 리뷰 -->
	<c:forEach var="i" begin="1" end="5" step="1">
		<section class="review">
		<div class="title-wrap">
			<h1 class="review-title">파씨오네의 리뷰 (32)</h1>
			<ul class="review-filter-list">
				<li class="review-filter-item">
					<button class="review-filter-button">전체 (32)</button>
				</li>
				<li class="review-filter-item">
					<button class="review-filter-button">맛있다 (16)</button>
				</li>
				<li class="review-filter-item">
					<button class="review-filter-button">괜찮다 (16)</button>
				</li>
				<li class="review-filter-item">
					<button class="review-filter-button">별로 (0)</button>
				</li>
			</ul>
		</div>
		<ul class="review-list">
			<li class="default-review"><section class="review-item">
				<h1 class="icon">
					<strong class="good">맛있다</strong>
				</h1>
				<div class="review-content">
					<figure class="user">
					<div class="user-profile">
						<img class="thumb-image"
							src="https://mp-seoul-image-production-s3.mangoplate.com/444936_1474722607601?resize=64:64" />
					</div>
					<figcaption>쩡.</figcaption>
					<p class="user-info">
						<em class="user-review">123</em> <em class="user-hit">64</em>
					</p>
					<div class="reportRev-button">
						<img src="/resources/images/min_image/report.PNG"
							onclick="reportRev()" />
					</div>
					</figure>
					
					<p>
						<span class="review-content-coment">런치 가성비가 엄청납니다(41,800)
							메뉴는 코스 1가지밖에 없구요 그날그날 조금씩 바뀝니다 육류는 등심 양갈비 오리가슴살 오리다리콩피 중 선택이에요
							5코스임에도 각 플레이트가 양이 많아서 위장 많이 비우고 가셔야해요 사진 저게 다 1인분 양질의 프렌치를 합리적인
							가격으로 즐기고 싶다면 강추합니다 특히 해산물 플레이트가 가장 인상깊었네요.</span>
					</p>
				</div>
				<p class="sub-info">
					<time>
					<span class="past-time">2016-02-04</span></time>
				</p>
				<p class="list-photos">
					<button class="photo-bt">
						<img class="photo"
							src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80>
					</button>
					<button class="photo-bt">
						<img class="photo"
							src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80>
					</button>
					<button class="photo-bt">
						<img class="photo"
							src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80>
					</button>
					<button class="photo-bt">
						<img class="photo"
							src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80>
					</button>
				</p>
				</section></li>
		</ul>
		</section>
	</c:forEach>
	<button class="reviews-more">더보기</button>
	<!-- 관련식당 -->
	<section class="related-restaurant">
	<h1 class="related-title">
		<a href="#"><span class="title-underline">2017 프렌치 인기 맛집
				TOP 20</span></a> 에 있는 다른 식당
	</h1>
	<ul class="restaurant-list">
		<c:forEach var="i" begin="1" end="4" step="1">
			<li><a href="#" style="text-decoration: none;"> <figure
						class="restaurant-item">
					<div class="thumb">
						<img class="list-image" src="/resources/images/2.jpg">
					</div>
					<figcaption class="image-info">
					<div class="restaurant-info">
						<span class="title-list">루이쌍크</span> <strong class="point">4.6</strong>
						<p class="etc">신사/압구정 - 프랑스음식</p>
					</div>
					</figcaption> </figure>
			</a></li>
		</c:forEach>
	</ul>
	</section>

</div>
<!-- 사이드영역 -->
<div class="side-wrap">
	<div class="side-content">
		<!-- 지도 -->
		<div id="map"></div>
		<!-- 네이버 지도 API -->
		<script>
			var address = '${resDTO.restaurant.resaddress}';
							
			var MARKER_SPRITE_POSITION = {
				"A0" : [ 0, 0 ]
			};

			var mapOptions = {
				/* center: , */
				zoom : 10,
				zoomControl : true,
				zoomControlOptions : {
					position : naver.maps.Position.TOP_RIGHT
				}
			};

			var map = new naver.maps.Map('map', mapOptions);

			map.setCursor('pointer');

			var markers = [], infoWindows = [];

			function searchAddressToCoordinate(address) {
				naver.maps.Service
						.geocode(
								{
									address : address
								},
								function(status, response) {
									if (status === naver.maps.Service.Status.ERROR) {
										return alert('Something Wrong!');
									}// if
									var item = response.result.items[0], point = new naver.maps.Point(
											item.point.x, item.point.y);

									var position = new naver.maps.LatLng(
											item.point.y, item.point.x);

									for ( var key in MARKER_SPRITE_POSITION) {
										var marker = new naver.maps.Marker(
												{
													map : map,
													position : position,
													title : key,
													icon : {
														url : '/resources/images/min_image/marker.png',
														size : new naver.maps.Size(
																24, 37),
														anchor : new naver.maps.Point(
																12, 37)
													},
													zIndex : 100
												});

										var infoWindow = new naver.maps.InfoWindow(
												{
													content : '<div style="position:relative; margin:0 0; padding:0 0; border: 0px solid transparent; display: block; width: 330px; height: 135px;">'
															+ '<div style="position:absolute; padding: 15px; ">'
															+ '<img src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/47875_145576688554827.jpg?fit=around|105:105&amp;crop=105:105;*,*&amp;output-format=jpg&amp;output-quality=80">'
															+ '</div>'
															+ '<div style="position:absolute; margin-left:135px; margin-top:8px;">'
															+ '<span style="cursor: pointer; font-szie: 20px; font-weight: bold; ">라이포스트</span>&nbsp;&nbsp;'
															+ '<strong style="color: #FF792A; font-size: 20px;">4.6</strong>'
															+ '<p style="width:180px; color: #7A7A7A; font-size: 15px; margin-top:7px; overflow: hidden; text-overflow:ellipsis; white-space:nowrap;">이태원/한남동 - 브런치 / 버거 / 샌드위치</p>'
															+ '<p style=" margin-top:40px;">'
															+ '<img src="/resources/images/min_image/review.PNG">'
															+ '<em style="color: #7A7A7A; font-size: 16px">206</em>&nbsp;'
															+ '<img src="/resources/images/min_image/favorite.png">'
															+ '<em style="color: #7A7A7A; font-size: 16px">5693</em>'
															+ '</p>'
															+ '</div>'
															+ '</div>'
												});

										markers.push(marker);
										infoWindows.push(infoWindow);
									}// for

									for (var i = 0, ii = markers.length; i < ii; i++) {
										naver.maps.Event.addListener(
												markers[i], 'click',
												getClickHandler(i));
									}

									map.setCenter(point);
								});
			}// function
			
			naver.maps.onJSContentLoaded = searchAddressToCoordinate(address);
			
			function getClickHandler(seq) { // 마커를 클릭 했을 때
				return function(e) {
					var marker = markers[seq], infoWindow = infoWindows[seq];

					if (infoWindow.getMap()) {
						infoWindow.close();
					} else {
						infoWindow.open(map, marker);
					}// if
				}// return function
			}// getClickHandler
		</script>
		<div class="inner">
			<div class="near-restaurant">
				<h1 class="near-title">주변 인기 식당</h1>
				<ul class="near-restaurant-list">
					<li class="near-item"><figure class="near-thumb">
						<div class="near-thumb-item">
							<img class="thumb-image"
								src="https://mp-seoul-image-production-s3.mangoplate.com/386/34440_1466003144545_1081557">
							<a href="#">더키친살바토레쿠오모</a>
						</div>
						<figcaption>
						<div class="near-info">
							<span class="near-mini-title">더키친살바토레쿠오모</span> <strong
								class="near-point">4.4</strong>
							<p class="near-etc">음식종류:이탈리안</p>
							<p class="near-etc">음식종류:이탈리안</p>
							<p class="near-etc">음식종류:이탈리안</p>
						</div>
						</figcaption> </figure></li>
				</ul>
			</div>
		</div>
	</div>
</div>

</article>
</body>
</html>