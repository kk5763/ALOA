<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
  <title> new document </title>
  <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" /> 
 </head>
 <style>
 #foodListPop{
	margin:0 auto;
	width:512px;
	overflow:hidden;
 }
 #foodListAll{
	height:350px;
	overflow:auto;
 }
 #line{
	border-right:5px solid #cfcfcf;
	z-index:10;
 }
 #foodListTitle{
	width:500px;
	line-height:30px;
	background-color:#ff792a;
	font-family:sans-serif;
	font-size:15px;
	font-weight:bold;
	color:#fff;
	text-align:center;
	overflow:hidden;
	border-bottom:2px solid #cfcfcf;
 }
 #foodCreate{
	float:right;
	background-color:#ff792a;
	color:#fff;
	border:1px solid #fff;
	width:50px;
	margin-top:4px;
	margin-right:22px;
 }
 #foodCreate:hover{
	background-color:#fff;
	color:#ff792a;
	border:1px solid #ff792a;
	width:50px;
 }
 #foodList{
	padding-top:4px;
	padding-bottom:4px;
	border-bottom:1px solid #cfcfcf;
	overflow:hidden;
 }
  #foodImage{
	background-image:url('img/popup_img01.jpg');
	width:120px; height:120px;
	float:left;
 }
 #foodImage:hover{
	background-image:url('img/popup_img01.jpg');
	width:120px; height:120px;
	opacity:0.5;
	cursor:pointer;
 }
 #foodImageText{
	text-align:center;
	line-height:120px;
	opacity:0;
 }
 #foodImageText:hover{
	text-align:center;
	line-height:120px;
	font-family:sans-serif;
	color:#fff;
	opacity:1;
 }
 #foodContent{
	float:left;
	margin:35px 21px;
 }
 #foodContent input{
	border:1px solid #ff792a;
 }
 #foodGroupTitle{
	display:block;
	margin-bottom:10px;
 }
 #foodListButton{
	border-left:1px solid #cfcfcf;
	float:left;
	height:120px;
	padding-left:11px;
 }
 #foodListButton input{
	background-color:#fff;
	color:#cfcfcf;
	border:2px solid #cfcfcf;
	width:70px;
	margin-top:24px;
 }
 #foodListButton input:hover{
	background-color:#fff;
	color:#ff792a;
	border:2px solid #ff792a;
	width:70px;
 }
 #xButton{
		text-align:right;
		margin-bottom:10px;
}
	#xButton img{
		width:50px;
}
 </style>
<body>
	<div id="foodListPop">
		<div id="xButton"><a href="window.close();"><img src="img/xButton.png"></a></div><!--xButton-->
		<div id="line"></div><!--line-->
		<div id="foodListAll">
			<div id="foodListTitle">믿고 보는 맛집 리스트
				<input type="button" value="추가" id="foodCreate"/>
			</div><!--foodListTitle-->
			<div id="foodList">
				<div id="foodImage">
					<div id="foodImageText">이미지 바꾸기</div>
				</div><!--foodImage-->
				<div id="foodContent">
					<input type="text" id="foodGroupTitle" placeholder="곱창 맛집 베스트 25곳" size="36"/>
					<input type="text" id="foodGroupContent" placeholder="고소한 곱이 한가득~!" size="36"/>
				</div><!--foodContent-->
				<div id="foodListButton">
					<div id="remove">
						<input type="button" value="수정"/>
					</div><!--remove-->
					<div id="deleteButton">
						<input type="button" value="삭제"/>
					</div><!--deleteButton-->
				</div>
			</div><!--foodList-->

			<div id="foodList">
				<div id="foodImage">
					<div id="foodImageText">이미지 바꾸기</div>
				</div><!--foodImage-->
				<div id="foodContent">
					<input type="text" id="foodGroupTitle" placeholder="곱창 맛집 베스트 25곳" size="36"/>
					<input type="text" id="foodGroupContent" placeholder="고소한 곱이 한가득~!" size="36"/>
				</div><!--foodContent-->
				<div id="foodListButton">
					<div id="remove">
						<input type="button" value="수정"/>
					</div><!--remove-->
					<div id="deleteButton">
						<input type="button" value="삭제"/>
					</div><!--deleteButton-->
				</div>
			</div><!--foodList-->

			<div id="foodList">
				<div id="foodImage">
					<div id="foodImageText">이미지 바꾸기</div>
				</div><!--foodImage-->
				<div id="foodContent">
					<input type="text" id="foodGroupTitle" placeholder="곱창 맛집 베스트 25곳" size="36"/>
					<input type="text" id="foodGroupContent" placeholder="고소한 곱이 한가득~!" size="36"/>
				</div><!--foodContent-->
				<div id="foodListButton">
					<div id="remove">
						<input type="button" value="수정"/>
					</div><!--remove-->
					<div id="deleteButton">
						<input type="button" value="삭제"/>
					</div><!--deleteButton-->
				</div>
			</div><!--foodList-->
		</div><!--foodListAll-->
	</div><!--foodListPop-->

</body>
</html>
