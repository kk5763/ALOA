<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" type = "text/css" href = "../style/detailViewStyle.css"/>
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=RS_xGeGWx9dfFLe5r03g"></script>

<link rel="stylesheet" type="text/css" href="/style/photobox.css">
<script src="/js/jquery-1.7.2.js"></script>
<script src="/js/jquery.photobox.js"></script>

<script type="text/javascript">
$(function(){
	
	$(".image-slider-div").photobox();//플러그인 적용
	
	});
</script>

</head>
<!-- 상단영역 -->
<header>

</header>

<!-- 메인영역 -->
<article class="main-scope">
	<!-- 상단 이미지 슬라이더 -->
<!-- 	<div class="image-slider" > -->
		
			<div class="image-slider-div">
				<c:forEach var="i" begin="1" end="5" step="1">
		        	<a href="/resources/images/${i }.jpg">
		        		<img class="images" src="/resources/images/${i }.jpg" height="100px"/>
		        	</a>
	        	</c:forEach>
			</div>
	<!-- </div> -->
	<!-- 본문 내용  -->
	<div class="content-wrapper">
		<div class="content">
			<div class="content-header">
				<div class="restaurant-title">
					<div class="wannago-wrapper">
						<button class="wannago-bt"></button>
						<p class="wannago-txt">가고싶다</p>
					</div>
					<h1 class="title">
						<span class="name">파씨오네</span>
						<span class="rate-point">4.6</span>
					</h1>
				</div>
				<div class="restaurant-status">
					<span class="hit">
						<span class="hidden">조회수:</span>
						24,013
					</span>
					<span class="review">
						<span class="hidden">리뷰수:</span>
						32
					</span>
					<span class="favorite">
						<span class="hidden">가고싶다수 : </span>
						1,477
					</span>
				</div>
			</div>
			<table class="content-detail">
					<!-- 레스토랑 상세 정보 -->
					<tbody>
						<tr>
							<th class="show">주소:</th>
							<td>서울시 강남구 신사동 646-23</td>
						</tr>
						<tr>
							<th class="show">전화번호:</th>
							<td>02-546-7719</td>
						</tr>
						<tr>
							<th class="show">음식 종류:</th>
							<td>프랑스 음식</td>
						</tr>
						<tr>
							<th class="show">가격대:</th>
							<td>4만원 이상</td>
						</tr>
						<tr>
							<th class="show">주차:</th>
							<td>발렛</td>
						</tr>
						<tr>
							<th class="show">영업시간:</th>
							<td>12:00~22:00</td>
						</tr>
						<tr>
							<th class="show">쉬는시간:</th>
							<td>15:00~18:00</td>
						</tr>
						<tr>
							<th class="show">휴일:</th>
							<td>일</td>
						</tr>
					</tbody>
			</table>	
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
				<li class="default-review">
				<section class="review-item">
					<h1 class="icon">
					<strong class="good">맛있다</strong>
					</h1>
					<div class="review-content">
					 <figure class="user">
					  <div class="user-profile">
					   <img class="thumb-image" src="https://mp-seoul-image-production-s3.mangoplate.com/444936_1474722607601?resize=64:64"/></div>
					  <figcaption>쩡.</figcaption>
					  <p class="user-info">
					   <em class="user-review">123</em>
					   <em class="user-hit">64</em>
					  </p>
					 </figure>
					  <p>
					   <span class="review-content-coment">런치 가성비가 엄청납니다(41,800)
 메뉴는 코스 1가지밖에 없구요 그날그날 조금씩 바뀝니다 육류는 등심 양갈비 오리가슴살 오리다리콩피 중 선택이에요
5코스임에도 각 플레이트가 양이 많아서 위장 많이 비우고 가셔야해요 사진 저게 다 1인분
양질의 프렌치를 합리적인 가격으로 즐기고 싶다면 강추합니다  특히 해산물 플레이트가 가장 인상깊었네요.</span>
					  </p>	 
					</div>
					<p class="sub-info">
					 <time><span class="past-time">2016-02-04</span></time>
					</p>
					<p class="list-photos">
					 <button class="photo-bt"><img class="photo" src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80></button>
					 <button class="photo-bt"><img class="photo" src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80></button>
					 <button class="photo-bt"><img class="photo" src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80></button>
					 <button class="photo-bt"><img class="photo" src=https://mp-seoul-image-production-s3.mangoplate.com/13936/444936_1456304575639_356921?fit=around|120:120&crop=120:120;*,*&output-format=jpg&output-quality=80></button>
					</p>
				</section>
				</li>
			</ul>
		</section>
		 </c:forEach>
		 <button class="reviews-more">더보기</button>
		<!-- 관련식당 -->
		 <section class="related-restaurant">
		  <h1 class="related-title">
		  <a href="#"><span class="title-underline">2017 프렌치 인기 맛집 TOP 20</span></a>
		   에 있는 다른 식당
		   </h1>
		   <ul class="restaurant-list">
		    <c:forEach var="i" begin="1" end="4" step="1">
		    <li>
		     <a href="#" style="text-decoration:none;">
		       <figure class="restaurant-item">
		        <div class="thumb">
		         <img class="list-image" src="/resources/images/2.jpg">
		        </div>
		       <figcaption class="image-info">
		        <div class="restaurant-info">
		         <span class="title-list">루이쌍크</span>
		         <strong class="point">4.6</strong>
		         <p class="etc">신사/압구정 - 프랑스음식</p>
		        </div>
		       </figcaption>
		       </figure>
		     </a>
		    </li>
		    </c:forEach>
		   </ul>
		 </section>
		
	</div>
	<!-- 사이드영역 -->
	<div class="side-wrap">
		<div class="side-content">
			<!-- 지도 -->
			<div id="map"></div>
			<script>
				var mapOptions = {
					center : new naver.maps.LatLng(37.3595704, 127.105399),
					zoom : 10
				};
	
				var map = new naver.maps.Map('map', mapOptions);
				
				var marker = new naver.maps.Marker({
				    position: new naver.maps.LatLng(37.3595704, 127.105399),
				    map: map
				});
			</script>
		 <div class="inner">
		  <div class="near-restaurant">
		   <h1 class="near-title">주변 인기 식당</h1>
		   <ul class="near-restaurant-list">
		    <li class="near-item">
		     <figure class="near-thumb">
		      <div class="near-thumb-item">
		       <img class="thumb-image" src="https://mp-seoul-image-production-s3.mangoplate.com/386/34440_1466003144545_1081557">
		       <a href="#">더키친살바토레쿠오모</a>
		      </div>
		      <figcaption>
		       <div class="near-info">
		        <span class="near-mini-title">더키친살바토레쿠오모</span>
		        <strong class="near-point">4.4</strong>
		        <p class="near-etc">음식종류:이탈리안</p>
		        <p class="near-etc">음식종류:이탈리안</p>
		        <p class="near-etc">음식종류:이탈리안</p>
		       </div>
		      </figcaption>
		     </figure>
		    </li>
		   </ul>
		  </div>
		 </div>
		</div>
	</div>

</article>



</body>
</html>