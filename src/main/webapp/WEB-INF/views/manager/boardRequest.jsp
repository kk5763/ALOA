<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> 게시글요청 </title>
  <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" /> 
 </head>
<link href="css/boardRequest.css" rel="stylesheet"/>
 <body>

	<h1>게시글요청</h1>
	<div id="boardList">
		<div id="buttonClass">
			<input type="button" value="승인"/>
			<input type="button" value="보류"/>
			<input type="button" value="삭제"/>
		</div>
		<div id="boardTableList">
			<table>
				<tr style="width:50px; border-color:1px solid red;" >
					<th></th><!--삭제하기위한 체크박스-->
					<th>번호</th>
					<th id="boardName">글 제목</th>
					<th>작성자</th>
					<th>요청 분류</th><!--main에 놓을지 말지-->
					<th>날짜</th>
					<th>승인상태</th>
				</tr>
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">1</td>
					<td id="boardName">달콤카페</td>
					<td class="number">이유미</td>
					<td>추가요청</td>
					<td>2017-03-05</td>
					<td>보류</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">2</td>
					<td id="boardName">불타는닭</td>
					<td class="number">이성현</td>
					<td>리뷰삭제요청</td>
					<td>2017-03-05</td>
					<td>승인</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">3</td>
					<td id="boardName">오뎅이맛있는 부대찌개집</td>
					<td class="number">김민준</td>
					<td>허위글신고</td>
					<td>2017-03-05</td>
					<td>승인</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">4</td>
					<td id="boardName">소스가맛있는 돈까스집</td>
					<td class="number">김민</td>
					<td>추가요청</td>
					<td>2017-03-05</td>
					<td>승인</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">5</td>
					<td id="boardName">맥도날드</td>
					<td class="number">장명영</td>
					<td>리뷰삭제요청</td>
					<td>2017-03-05</td>
					<td>보류</td>
				</tr>
				
			</table>
		</div>
	</div>
 </body>
</html>