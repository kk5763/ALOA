<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
  <title> 맛집리스트 </title>
  <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" /> 
 </head>
<style>
	#foodList{	
		margin:0 auto;
		width:900px;
		/* border:1px solid green; */
	}
	#buttonClass{
		overflow:hidden;
		/*border:1px solid red;*/
		margin-bottom:10px;
		width:100%;
	}
	#buttonClass input{
		float:right;
		margin-left:5px;
		color:#B8B8B8;
		background-color:#fff;
		border:1px solid #cfcfcf;
		cursor:pointer;
	}

	#buttonClass input:hover{
		float:right;
		margin-left:5px;
		color:#ff792a;
		background-color:#fff;
		border:1px solid #ff792a;
	}

	table{
		margin:0 auto;
		border-collapse:collapse;
	}
	table tr th{
		/*border:2px solid pink;*/
		font-family:sans-serif;
		color:#fff;
		background-color:#ff792a;
		padding:5px 5px;
		border-bottom:2px solid #cfcfcf;
	}
	#foodName{
		width:300px;
		cursor:pointer;
	}
	table tr td{
		font-family:sans-serif;
		padding:5px 10px;
		border-bottom:1px solid #cfcfcf;
	}
	table tr td select{
		border:1px solid #ff792a;
	}
	table tr .number{
		text-align:center;
	}
	#foodTableList{	
		/*border:1px solid blue;*/
	}
</style>

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
