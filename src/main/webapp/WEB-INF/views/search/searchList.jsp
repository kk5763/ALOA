<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<c:set var="path" value="${pageContext.request.contextPath }"/>
	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<title>ALOA</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/base/jquery-ui.css" type="text/css" media="all" />
	<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
	<!-- default header name is X-CSRF-TOKEN -->
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    
	<link rel="stylesheet" href="/style/min_style/searchList.css" />
	
	<script type="text/javascript">
		function openFilter() {
			window.open("http://localhost:8000/searchFilter?searchName=${searchName }", "filter", "width=830 height=750 left=300 menubar=yes location=no");
		}
	</script>
	
</head>
<body>
<%@ include file="../include/top_menu.jsp" %>
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