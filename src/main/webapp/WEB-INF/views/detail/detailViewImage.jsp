<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>
	<div id="imageReviewMain">
		<div id="imageMoveMain">
			<div id="imageReviewButtonleft"></div>
			<div id="imageReviewButtonRight"></div>
			<div id="imageCenter"></div>
			<div id="imageBottom"><!-- 
				<c:forEach var="i" begin="1" end="30" step="1">
					        		<img class="smallImage" src="imageCenter_${i}.jpg" height="100px"/>
				        	</c:forEach> -->
			</div>
		</div><!--imageMoveMain-->
		<div id="ReviewMain">
			
		</div><!--ReviewMain-->
	</div><!--imageReviewMain-->
</body>
</html>