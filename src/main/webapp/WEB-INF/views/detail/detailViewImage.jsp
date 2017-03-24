<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style>
	#imageReviewMain{
		overflow:hidden;
		margin:50px auto;
		width:90%;
		height:850px;
		background:pink;
	}
	#imageMoveMain{
		overflow:hidden;
		width:80%;
		height:850px;
		background:#000;
		border:1px solid red;
		box-sizing:border-box;
		display:inline-block;
	}
	#ReviewMain{
		width:19%;
		height:850px;
		background:#fff;
		border:1px solid red;
		box-sizing:border-box;
		display:inline-block;
	}
	#imageReviewButtonleft{
		position:relative;
		background:url('https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2016102073727sprites_desktop.png?fit=around|*:*&crop=*:*;*,*&output-format=png&output-quality=80');
		background-position:-935px 0px;
		width:28px;
		height:45px;
		opacity:0.5;
		margin-left:10px;
		top:40%;
		cursor:pointer;
	}
	#imageReviewButtonRight{
		position:relative;
		background:url('https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2016102073727sprites_desktop.png?fit=around|*:*&crop=*:*;*,*&output-format=png&output-quality=80');
		background-position:-935px -153px;
		width:28px;
		height:45px;
		opacity:0.5;
		margin-right:10px;
		top:35%;
		float:right;
		cursor:pointer;
	}
	#imageCenter{
		background-image:url('imageCenter_01.jpg');
		background-repeat: no-repeat;
		background-size:auto 100%;
		background-position:center center;
		width:85%;
		height:80%;
		margin: -15px auto 40px auto;
		transition-property: opacity;
		transition-timing-function: linear;
		transition-duration: 0.3s;
	}
	#imageBottom{
		border:1px solid blue;
		height:66px;
		width:1500px;
		

	}/*
	.smallImage{
		background-image:url('imageCenter_01.jpg');
		background-size:100% auto;
		background-position:center center;
		width:66px;
		height:66px;
		float:left;
		cursor:pointer;
	}*/
 </style>

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