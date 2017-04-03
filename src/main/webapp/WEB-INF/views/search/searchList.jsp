<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
    <title>망고플레이트 맛집 인기 검색순위</title>
    
	<link rel="stylesheet" href="/style/min_style/searchList.css" />
	
	<script type="text/javascript">
		function openFilter() {
			window.open("http://localhost:8000/searchFilter?searchName=${searchName }", "filter", "width=830 height=750 left=300 menubar=yes location=no");
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
			<h2>${searchName } 맛집 인기 검색순위</h2>
			
			<span class="filter" onclick="openFilter()">
				<img src="/resources/images/min_image/filter.PNG"/>
				<span>필터</span>
			</span>
		</div>
		
		<div class="content">
			<c:if test="${resList != null }">
				<!-- 검색한 식당의 수 만큼 반복 -->
				<c:forEach var="dto" items="${resList }" varStatus="status">
					<c:if test="${status.index % 2 == 0}">
						<div class="left_div">
							<c:if test="${dto.imagelist[0].image != null }">
								<a onclick="location.href='http://localhost:8000/detailView?resno=${dto.restaurant.resno}'">
								<img class="main_img" src="/resources/images/${dto.imagelist[0].image }.jpg" /></a>
							</c:if>
							<c:if test="${dto.imagelist[0].image == null }">
								<a onclick="location.href='http://localhost:8000/detailView?resno=${dto.restaurant.resno}'">
								<img class="main_img" src="/resources/images/min_image/noneImage.PNG" /></a>
							</c:if>
							<p class="title" onclick="location.href='http://localhost:8000/detailView?resno=${dto.restaurant.resno}'">${dto.restaurant.resname }&nbsp;&nbsp;
							<span class="point">${dto.resGrade[0] }</span></p>
							<p class="info">${dto.restaurant.resaddress } - <span class="keywords">${dto.restaurant.reskind }</span></p>
							<p class="view_review">
								<img src="/resources/images/min_image/review.PNG" /><span class="review">${dto.resReviewCount[0] }</span>
							</p>
						</div>
					</c:if>
					
					<c:if test="${status.index % 2 == 1}">
						<div class="right_div">
							<c:if test="${dto.imagelist[0].image != null }">
								<a onclick="location.href='http://localhost:8000/detailView?resno=${dto.restaurant.resno}'">
								<img class="main_img" src="/resources/images/${dto.imagelist[0].image }.jpg" /></a>
							</c:if>
							<c:if test="${dto.imagelist[0].image == null }">
								<a onclick="location.href='http://localhost:8000/detailView?resno=${dto.restaurant.resno}'">
								<img class="main_img" src="/resources/images/min_image/noneImage.PNG" /></a>
							</c:if>
							<p class="title" onclick="location.href='http://localhost:8000/detailView?resno=${dto.restaurant.resno}'">${dto.restaurant.resname }&nbsp;&nbsp;
							<span class="point">${dto.resGrade[0] }</span></p>
							<p class="info">${dto.restaurant.resaddress } - <span class="keywords">${dto.restaurant.reskind }</span></p>
							<p class="view_review">
								<img src="/resources/images/min_image/review.PNG" /><span class="review">${dto.resReviewCount[0] }</span>
							</p>
						</div>
					</c:if>
				</c:forEach>
			</c:if>
		</div>
	</section>
</body>
</html>