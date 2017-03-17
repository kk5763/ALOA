<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>망고플레이트 맛집 인기 검색순위</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=2ZKlolf32e3C26nU6SA4&amp;submodules=geocoder"></script>
	<link rel="stylesheet" href="/style/min_style/searchList.css" />
	<script type="text/javascript">
		function openFilter() {
			window.open("http://localhost:8000/searchFilter", "filter", "width=830 height=750 left=300 menubar=yes location=no");
		}
	</script>
</head>
<body>
	<!-- 상단 -->
	<header>
	
	</header>
	
	<!-- 본문 -->
	<section class="main_section">
		
		<div class="subject_filter">
			<h2>이태원 맛집 인기 검색순위</h2>
			
			<span class="filter" onclick="openFilter()">
				<img src="/resources/images/min_image/filter.PNG"/>
				<span>필터</span>
			</span>
		</div>
		
		<div class="list">
			<a href="#">한식</a>	<span>|</span>
			<a href="#">분식</a>	<span>|</span>
			<a href="#">양식</a>	<span>|</span>
			<a href="#">세계음식</a>	<span>|</span>
			<a href="#">뷔페</a>	<span>|</span>
			<a href="#">디저트</a>	<span>|</span>
			<a href="#">카페</a>	<span>|</span>
			<a href="#">술집</a>	<span>|</span>
			<a href="#">치킨</a>	<span>|</span>
			<a href="#">브런치</a>	<span>|</span>
			<a href="#">이탈리안</a>	<span>|</span>
		</div>
		
		<div class="content">
		
			<div class=both_div>
		
				<div class="left_div">
					<img class="main_img" src="/resources/images/min_image/bubbleAndCockles.PNG" />
					<p class="title">버블앤코클스&nbsp;&nbsp;<span class="point">4.8</span></p>
					<p class="info">이태원/한남동 - <span class="keywords">시푸드 요리</span></p>
					<p class="view_review">
						<img src="/resources/images/min_image/view.PNG" /><span class="view">12,011</span>&nbsp;&nbsp;
						<img src="/resources/images/min_image/review.PNG" /><span class="review">16</span>
					</p>
				</div>
				
				<div class="right_div">
					<img class="main_img" src="/resources/images/min_image/ryePost.PNG" />
					<p class="title">라이포스트&nbsp;&nbsp;<span class="point">4.6</span></p>
					<p class="info">이태원/한남동 - <span class="keywords">브런치 / 버거 / 샌드위치</span></p>
					<p class="view_review">
						<img src="/resources/images/min_image/view.PNG" /><span class="view">135,011</span>&nbsp;&nbsp;
						<img src="/resources/images/min_image/review.PNG" /><span class="review">231</span>
					</p>
				</div>
			
			</div>
			
			<div class=both_div>
			
				<div class="left_div">
					<img class="main_img" src="/resources/images/min_image/downTowner.PNG" />
					<p class="title">다운타우너&nbsp;&nbsp;<span class="point">4.6</span></p>
					<p class="info">이태원/한남동 - <span class="keywords">브런치 / 버거 / 샌드위치</span></p>
					<p class="view_review">
						<img src="/resources/images/min_image/view.PNG" /><span class="view">64,173</span>&nbsp;&nbsp;
						<img src="/resources/images/min_image/review.PNG" /><span class="review">126</span>
					</p>
				</div>	
				
				<div class="right_div">
					<img class="main_img" src="/resources/images/min_image/manimalSmokeHouse.PNG" />
					<p class="title">매니멀스모크하우스&nbsp;&nbsp;<span class="point">4.6</span></p>
					<p class="info">이태원/한남동 - <span class="keywords">스테이크 / 바베큐</span></p>
					<p class="view_review">
						<img src="/resources/images/min_image/view.PNG" /><span class="view">101,301</span>&nbsp;&nbsp;
						<img src="/resources/images/min_image/review.PNG" /><span class="review">88</span>
					</p>
				</div>		
			
			</div>	
			
			<div class="pageNumber">
				<div class="page">1</div>
			</div> <!-- page number -->
			
		</div> <!-- content -->
		
	</section>
	
	<!-- 사이드 -->
	<aside class="side_map_topList">
		<div id="map"></div>
		<div class="top_list">
			<h2>관련 탑리스트</h2>
		</div>
		<div class="surrounding_area">
			<h2><span>이태원</span> 주변지역</h2>
		</div>
	</aside>
	
	<!-- 하단 -->
	<footer>
		<h2>하단 영역</h2>
	</footer>
	
	<!-- 네이버 지도 API -->
	<script>
	var MARKER_SPRITE_POSITION = {
		"A0": [0, 0]
	};
	
	var mapOptions = {
		/* center: , */
	    zoom: 10,
	    zoomControl: true,
	    zoomControlOptions: {
	        position: naver.maps.Position.TOP_RIGHT
	    }
	};
	
	var map = new naver.maps.Map('map', mapOptions);
	
	map.setCursor('pointer');
	
	var markers = [],
	infoWindows = [];
	
	function searchAddressToCoordinate(address) {
	  	naver.maps.Service.geocode({
	        address: address
	    }, function(status, response) {
	        if (status === naver.maps.Service.Status.ERROR) {
	            return alert('Something Wrong!');
	        }// if
	        var item = response.result.items[0],
	        	point = new naver.maps.Point(item.point.x, item.point.y);
	        
	        var position = new naver.maps.LatLng(item.point.y, item.point.x);
	        
	        for (var key in MARKER_SPRITE_POSITION) {
	    	    var marker = new naver.maps.Marker({
	    	        map: map,
	    	        position: position,
	    	        title: key,
	    	        icon: {
	    				url: '/resources/images/min_image/marker.png',
	    				size: new naver.maps.Size(24, 37),
	    	            anchor: new naver.maps.Point(12, 37)
	    	        },
	    	        zIndex: 100
	    	    });
	    	    
	    	
	    	    var infoWindow = new naver.maps.InfoWindow({
	    	        content: '<div style="position:relative; margin:0 0; padding:0 0; border: 0px solid transparent; display: block; width: 330px; height: 135px;">'
	    	        			+'<div style="position:absolute; padding: 15px; ">'
	    	        			+'<img src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/47875_145576688554827.jpg?fit=around|105:105&amp;crop=105:105;*,*&amp;output-format=jpg&amp;output-quality=80">'
	    				        +'</div>'
	    				        +'<div style="position:absolute; margin-left:135px; margin-top:8px;">'
	    					        +'<span style="cursor: pointer; font-szie: 20px; font-weight: bold; ">라이포스트</span>&nbsp;&nbsp;'
	    					        +'<strong style="color: #FF792A; font-size: 20px;">4.6</strong>'
	    					        +'<p style="width:180px; color: #7A7A7A; font-size: 15px; margin-top:7px; overflow: hidden; text-overflow:ellipsis; white-space:nowrap;">이태원/한남동 - 브런치 / 버거 / 샌드위치</p>'
	    					        +'<p style=" margin-top:40px;">'
	    						        +'<img src="/resources/images/min_image/review.PNG">'
	    						        +'<em style="color: #7A7A7A; font-size: 16px">206</em>&nbsp;'
	    						        +'<img src="/resources/images/min_image/favorite.png">'
	    						        +'<em style="color: #7A7A7A; font-size: 16px">5693</em>'
	    					        +'</p>'
	    				        +'</div>'
	    			        +'</div>'
	    	    });
	    	
	    	    markers.push(marker);
	    	    infoWindows.push(infoWindow);
	    	}// for
	    	
	    	for (var i=0, ii=markers.length; i<ii; i++) {
	    	    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
	    	}
	        
	        map.setCenter(point);
	    });
	}// function
	
	naver.maps.onJSContentLoaded = searchAddressToCoordinate('서울 용산구 이태원로 164-1');
	
	function getClickHandler(seq) { // 마커를 클릭 했을 때
	    return function(e) {
	        var marker = markers[seq],
	            infoWindow = infoWindows[seq];
	
	        if (infoWindow.getMap()) {
	            infoWindow.close();
	        } else {
	            infoWindow.open(map, marker);
	        }// if
	    }// return function
	}// getClickHandler
	</script>
</body>
</html>