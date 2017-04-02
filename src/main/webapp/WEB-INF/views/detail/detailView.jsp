<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/style/detailViewStyle.css" />
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=2ZKlolf32e3C26nU6SA4&amp;submodules=geocoder"></script>
<script type="text/javascript">
   function reportRes() {
      if (document.getElementById("email").value== "") {
         alert("로그인후 이용가능합니다.");
      } else {
         window
               .open(
                     "http://localhost:8000/reportResForm?resno=${resDTO.restaurant.resno}",
                     "reportRes",
                     "toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=500, height=300");
      }
   }
   function reportRev(reviewno) {
      if (document.getElementById("email").value== "") {
         alert("로그인후 이용가능합니다.");
      } else {
         window
               .open(
                     "http://localhost:8000/reportRevForm?resno=${resDTO.restaurant.resno}&reviewno="+reviewno,
                     "reportRev",
                     "toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=500, height=300");
      }
   }

   function reviewWrite() {
      if (document.getElementById("email").value== "")
         alert("로그인후 이용가능합니다.");
      else {
         window
               .open(
                     "http://localhost:8000/reviewWriteForm?resno=${resDTO.restaurant.resno}",
                     "dataForm",
                     "toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=600, height=430");
      }
   }
	function reportRes() {
		if (document.getElementById("email").value== "") {
			alert("로그인후 이용가능합니다.");
		} else {
			window
					.open(
							"http://localhost:8000/reportResForm?resno=${resDTO.restaurant.resno}",
							"reportRes",
							"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=500, height=300");
		}
	}
	function reportRev(reviewno) {
		if (document.getElementById("email").value== "") {
			alert("로그인후 이용가능합니다.");
		} else {
			window
					.open(
							"http://localhost:8000/reportRevForm?resno=${resDTO.restaurant.resno}&reviewno="+reviewno,
							"reportRev",
							"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=500, height=300");
		}
	}

	function reviewWrite() {
		if (document.getElementById("email").value== "")
			alert("로그인후 이용가능합니다.");
		else {
			window
					.open(
							"http://localhost:8000/reviewWriteForm?resno=${resDTO.restaurant.resno}&email="+document.getElementById('email').value,
							"dataForm",
							"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=600, height=430");
		}
	}

   function reservation() {
      window
            .open(
                  "http://localhost:8000/reservation?resno=${resDTO.restaurant.resno}",
                  "reservation",
                  "toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=500, top=200, width=1000, height=700");
   }
   
window.onload = function(){
	
	var reviewCount = ${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2) };
	
	for(i = 0; i < reviewCount; i++) {
		var userImage = document.getElementById('userImage_' + i);
		var random = (Math.floor(Math.random() * 12) + 1);
		userImage.setAttribute("src", "/resources/images/min_image/userImage_" + random + ".PNG");
	}
}

$(function() {
	$(".review").slice(0, 2).show();
	$(".reviews-more").on('click', function(e) {
		e.preventDefault();
		$(".review:hidden").slice(0, 2).slideDown();
		if ($(".review:hidden").length == 0) {
			$(".reviews-more").fadeOut('slow');
		}
		$('html,body').animate({
			scrollTop : $(this).offset().top
		}, 1500);
	});
});

</script>
</head>
<!-- 상단영역 -->
<header> </header>

<!-- 메인영역 -->
<article class="main-scope"> <!-- 상단 이미지 슬라이더 -->
<div class="image-slider-div">
	<c:forEach var="i" begin="1" end="5" step="1">
		<a href="/resources/images/${i }.jpg"> <img class="images"
			src="/resources/images/${i }.jpg" height="100px" />
		</a>
	</c:forEach>
</div>
<!-- 본문 내용  -->
<div class="content-wrapper">
	<div class="content-all">
		<div class="content">
			<div class="content-header">
	
				<div class="restaurant-title">
					<div class="wannago-wrapper">
						<button class="wannago-bt"></button>
						<p class="wannago-txt">신고하기</p>
					</div>
					<h1 class="title">
						<span class="name">${resDTO.restaurant.resname }</span> <span
							class="rate-point">${avg }</span>
					</h1>
	
	
				</div>
				<div class="reportRes-button">
					<img src="/resources/images/min_image/report.PNG"
						onclick="reportRes()" />
				</div>
<<<<<<< HEAD
=======
				<h1 class="title">
					<span class="name">${resDTO.restaurant.resname }</span>
					<c:if test="${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2) > 0 }">
						<span class="rate-point">${avg }</span>
					</c:if>
				</h1>


			</div>
			<div class="reportRes-button">
				<img src="/resources/images/min_image/report.PNG"
					onclick="reportRes()" />
>>>>>>> b7a9fbd4f170239042ae12c9896c4299a2fe496d
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
			<!-- review-bt-wrap -->
	
			<div class="review-bt-wrap">
				<a href="#" class="review-bt" onclick="reservation()">예 약</a>
			</div>
		</div><!-- review-bt-div -->
	
	
		<!-- 리뷰 -->
		<div class="title-wrap">
<<<<<<< HEAD
			<div class="title-wrap">
				<h1 class="review-title">${resDTO.restaurant.resname }의리뷰
					(${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2)})</h1>
				<ul class="review-filter-list">
					<li class="review-filter-item">
						<button class="review-filter-button">전체
							(${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2)})</button>
					</li>
					<li class="review-filter-item">
						<button class="review-filter-button">맛있다
							(${reviewCount.get(0) })</button>
					</li>
					<li class="review-filter-item">
						<button class="review-filter-button">괜찮다
							(${reviewCount.get(1) })</button>
					</li>
					<li class="review-filter-item">
						<button class="review-filter-button">별로
							(${reviewCount.get(2) })</button>
					</li>
				</ul>
			</div>
			<c:forEach begin="0" end="${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2)}"
				varStatus="status">
				<section class="review">
				<ul class="review-list">
					<li class="default-review"><section class="review-item">
						<h1 class="icon">
							<c:if test="${revDTO.reviewBoardList[status.index].grade == 5 }">
								<img src="/resources/images/min_image/good_on.png">
								<strong class="good">맛있다</strong>
							</c:if>
							<c:if test="${revDTO.reviewBoardList[status.index].grade == 3 }">
								<img src="/resources/images/min_image/soso_on.png">
								<strong class="good">괜찮다</strong>
							</c:if>
							<c:if test="${revDTO.reviewBoardList[status.index].grade == 1 }">
								<img src="/resources/images/min_image/bad_on.png">
								<strong class="good">별로</strong>
							</c:if>
						</h1>
						<div class="review-content">
							<figure class="user">
							<div class="user-profile">
								<img id="userImage${status.index }" class="thumb-image" src="userImage(${status.index })" />
							</div>
							<figcaption>${revDTO.accountList[status.index].username }</figcaption>
							
							<div class="reportRev-button">
								<img src="/resources/images/min_image/report.PNG"
									onclick="reportRev(${revDTO.reviewBoardList[status.index].reviewno })" />
							</div>
							</figure>
	
							<p>
								<span class="review-content-coment">${revDTO.reviewBoardList[status.index].content }</span>
							</p>
						</div>
						<p class="sub-info">
							<time> <span class="past-time">${revDTO.reviewBoardList[status.index].createdate }</span></time>
						</p>
						</section></li>
				</ul>
				</section>
			</c:forEach>
			<button class="reviews-more">더보기</button>
	
		</div>
	</div>	
	
	
=======
			<h1 class="review-title">${resDTO.restaurant.resname }의리뷰
				(${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2)})</h1>
			<ul class="review-filter-list">
				<li class="review-filter-item">
					<button class="review-filter-button">전체
						(${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2)})</button>
				</li>
				<li class="review-filter-item">
					<button class="review-filter-button">맛있다
						(${reviewCount.get(0) })</button>
				</li>
				<li class="review-filter-item">
					<button class="review-filter-button">괜찮다
						(${reviewCount.get(1) })</button>
				</li>
				<li class="review-filter-item">
					<button class="review-filter-button">별로
						(${reviewCount.get(2) })</button>
				</li>
			</ul>
		</div>
		<c:forEach begin="1" end="${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2)}"
			varStatus="status">
			<div class="review">
			<ul class="review-list">
				<li class="default-review"><section class="review-item">
					<h1 class="icon">
						<c:if test="${revDTO.reviewBoardList[status.index - 1].grade == 5 }">
							<img src="/resources/images/min_image/good_on.png">
							<strong class="good">맛있다</strong>
						</c:if>
						<c:if test="${revDTO.reviewBoardList[status.index - 1].grade == 3 }">
							<img src="/resources/images/min_image/soso_on.png">
							<strong class="good">괜찮다</strong>
						</c:if>
						<c:if test="${revDTO.reviewBoardList[status.index - 1].grade == 1 }">
							<img src="/resources/images/min_image/bad_on.png">
							<strong class="good">별로</strong>
						</c:if>
					</h1>
					<div class="review-content">
						<figure class="user">
						<div class="user-profile">
							<img id="userImage_${status.index - 1 }" class="thumb-image" src="" />
						</div>
						<figcaption>${revDTO.accountList[status.index - 1].username }</figcaption>
						
						<div class="reportRev-button">
							<img src="/resources/images/min_image/report.PNG"
								onclick="reportRev(${revDTO.reviewBoardList[status.index - 1].reviewno })" />
						</div>
						</figure>

						<p>
							<span class="review-content-coment">${revDTO.reviewBoardList[status.index - 1].content }</span>
						</p>
					</div>
					<p class="sub-info">
						<time> <span class="past-time">${revDTO.reviewBoardList[status.index - 1].createdate }</span></time>
					</p>
					</section></li>
			</ul>
			</div>
		</c:forEach>
		<button class="reviews-more">더보기</button>

	</div>
>>>>>>> b7a9fbd4f170239042ae12c9896c4299a2fe496d
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
                                                + '<span style="cursor: pointer; font-szie: 20px; font-weight: bold; ">${resDTO.restaurant.resname }</span>&nbsp;&nbsp;'
                                                + '<strong style="color: #FF792A; font-size: 20px;">${avg }</strong>'
                                                + '<p style="width:180px; color: #7A7A7A; font-size: 15px; margin-top:7px; overflow: hidden; text-overflow:ellipsis; white-space:nowrap;">${resDTO.restaurant.resaddress } - ${resDTO.restaurant.reskind }</p>'
                                                + '<p style=" margin-top:40px;">'
                                                + '<img src="/resources/images/min_image/review.PNG">'
                                                + '<em style="color: #7A7A7A; font-size: 16px">${reviewCount.get(0) + reviewCount.get(1) + reviewCount.get(2) }</em>&nbsp;'
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
		</div>
	</div>
</div>	
	
</article>
<sec:authorize access="isAnonymous()">
	<input type="hidden" id="email" value="">
</sec:authorize>
<sec:authorize access="isAuthenticated()">
   <input type="hidden" id="email" value="<sec:authentication property='principal.email'/>">
	<input type="hidden" id="email"
		value="<sec:authentication property='principal.email'/>">
	<input type="hidden" id="email" value="">
</sec:authorize>
<sec:authorize access="isAuthenticated()">
	<input type="hidden" id="email"
		value="<sec:authentication property='principal.email'/>">
</sec:authorize>

</body>

</html>