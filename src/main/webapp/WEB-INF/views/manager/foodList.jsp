<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
  <title> 맛집리스트 </title>
  <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" /> 
 </head>
<link href="css/foodList.css" rel="stylesheet" type="text/css">

 <body>

	<h1>맛집리스트</h1>
	<div id="foodList">
		<div id="buttonClass">
			<input type="button" value="수정"/>
			<input type="button" value="추가"/>
			<input type="button" value="삭제"/>
		</div>
		<div id="foodTableList">
			<table>
				<tr style="width:50px; border-color:1px solid red;" >
					<th></th><!--삭제하기위한 체크박스-->
					<th>번호</th>
					<th id="foodName">맛집 그룹명</th>
					<th>개수</th>
					<th>분류</th><!--main에 놓을지 말지-->
					<th>날짜</th>
					<th>태그</th>
					<th>태그추가</th>
				</tr>
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">1</td>
					<td id="foodName">믿고 보는 맛집 리스트</td>
					<td class="number">7</td>
					<td>
						<select name="">
							<option value="">분류</option>
							<option value="">Main</option>
							<option value="">Basic</option>
						</select>
					</td>
					<td>2017-03-05</td>
					<td>
						<input type="text"/>
					</td>
					<td>
						<input type="button" value="추가"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">2</td>
					<td>맛집 에디터의 초이스</td>
					<td class="number">20</td>
					<td>
						<select name="">
							<option value="">분류</option>
							<option value="">Main</option>
							<option value="">Basic</option>
						</select>
					</td>
					<td>2017-03-05</td>
					<td>
						<input type="text"/>
					</td>
					<td>
						<input type="button" value="추가"/>
					</td>
				</tr>

				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">3</td>
					<td>망고스토리에 나온 식당</td>
					<td class="number">10</td>
					<td>
						<select name="">
							<option value="">분류</option>
							<option value="">Main</option>
							<option value="">Basic</option>
						</select>
					</td>
					<td>2017-03-05</td>
					<td>
						<input type="text"/>
					</td>
					<td>
						<input type="button" value="추가"/>
					</td>
				</tr>

				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">4</td>
					<td>TV에 나온 식당</td>
					<td class="number">10</td>
					<td>
						<select name="">
							<option value="">분류</option>
							<option value="">Main</option>
							<option value="">Basic</option>
						</select>
					</td>
					<td>2017-03-05</td>
					<td>
						<input type="text"/>
					</td>
					<td>
						<input type="button" value="추가"/>
					</td>
				</tr>

				<tr>
					<td>
						<input type="checkbox"/>
					</td>
					<td class="number">5</td>
					<td>평점이 높은 인기 식당</td>
					<td class="number">10</td>
					<td>
						<select name="">
							<option value="">분류</option>
							<option value="">Main</option>
							<option value="">Basic</option>
						</select>
					</td>
					<td>2017-03-05</td>
					<td>
						<input type="text"/>
					</td>
					<td>
						<input type="button" value="추가"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
 </body>
</html>
