<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
  <title> 맛집 팝업창 </title>
  <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" /> 
   
<style>
	#popupMain{
		margin:0 auto;
		width:400px;
	}
	#popup{
		margin:0 auto;

		width:400px; height:430px;
		overflow:auto;
	}
	#fixedMenu{
		background-color:#ff792a;
	}
	table{
		margin:0 auto;
		border-collapse:collapse;
	}
	table tr th{
		width:400px;
		font-family:sans-serif;
		color:#fff;
		padding:5px 5px;
		border-bottom:2px solid #cfcfcf;
	}
	table tr td{
		font-family:sans-serif;
		font-size:15px;
		padding:5px 10px;
		border-bottom:1px solid #cfcfcf;
	}
	table tr td span{
		font-weight:bold;
		text-align:top;
		/* border:1px solid black; */
	}
	table tr td p{
		/* border:1px solid black; */
	}
	#delete{
		border-left:1px solid #cfcfcf;
	}
	#deleteButton{
		border-left:1px solid #cfcfcf;
		color:#cfcfcf;
		background:none;
		cursor:pointer;
	}
	#deleteButton:hover{
		border-left:1px solid #cfcfcf;
		color:#ff792a;
		background:white;
	}
	#xButton{
		text-align:right;
		margin-bottom:10px;
	}
	#xButton img{
		width:50px;
	}
</style>
<script>
document.write('<a href="#" onclick="self.close()"></a>')
</script>
</head>

<body>
	<div id="popupMain">
		<div id="xButton"><a href="window.close();"><img src="img/xButton.png"></a></div>
		<div id="popup">
			<table>
				<tr id="fixedMenu">
					<th colspan="2">치즈케이크 맛집 베스트 10곳</th>
					<th style="border-left:1px solid #cfcfcf;">
						<input type="button" value="추가"/>
					</th>
				</tr>
				<tr>
					<td align="center">
						<a href="#"><img src="img/popup_img01.jpg"></a>
					</td>
					<td style="width:700px;"><span id="food'">굿나잇앤굿럭</span><p>치즈함량이 80%인 진한 치즈케익이 인기가 많은 라이프 스타일 카페</p></td>
					<td id="deleteButton" align="center">삭제</td>
				</tr>
				<tr>
					<td align="center">
						<a href="#"><img src="img/popup_img02.jpg"></a>
					</td>
					<td><span>슈가대디</span><p>바나나 케이크랑 당근 케이크가 제일 유명한 곳</p></td>
					<td id="deleteButton" align="center">삭제</td>
				</tr>
				<tr>
					<td align="center">
						<a href="#"><img src="img/popup_img03.jpg"></a>
					</td>
					<td><span>C27</span><p>캔들, 비누 등 아기자기한 물품등을 구경하는 재미도 있는 곳</p></td>
					<td id="deleteButton" align="center">삭제</td>
				</tr>
				<tr>
					<td align="center">
						<img src="img/popup_img03.jpg">
					</td>
					<td><span>C27</span><p>캔들, 비누 등 아기자기한 물품등을 구경하는 재미도 있는 곳</p></td>
					<td id="deleteButton" align="center">삭제</td>
				</tr>

			</table>
		</div>
	</div>
</body>
</html>
