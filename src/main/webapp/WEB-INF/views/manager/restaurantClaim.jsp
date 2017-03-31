<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function agreeDetail(){
		window.open("reviewClaimDetail.jsp","","width=1100,height=870,resizable=no");
	}
</script>
</head>
<body>
<div style="margin-bottom:20px; margin-top:50px;">
	<table border="1" width="90%" cellspacing="0" align="center" >
	<tr>
	<td width="50"></td>
	<td colspan="8" align="center"><h3>맛집신고</h3></td>
	</tr>
	<tr height="50">
		<td align="center"><input type="checkbox"></td>
		<th width="10%">신고자</th>
		<th width="15%">신고제목</th>
		<th width="15%">신고맛집</th>
		<th width="15%">신고대상자</th>
		<th width="15%">처리여부</th>
		<th width="10%">처리상태</th>
		<th>비고</th>
	</tr>
<%-- <c:if test="${list!=null }">
	<c:forEach var="" items="${list }"> --%>
	<tr height="50" align="center">
		<td><input type="checkbox"></td>
		<td>가맹점</td>
		<td>도민준</td>
		<td>DoMJ</td>
		<td>2017-03-05</td>
		<td>11</td>
		<td><span style="cursor:pointer; color:blue;" onclick="agreeDetail()"><strong>처리중</strong></span></td>
		<td><input type="button" value="삭제"></td>
	</tr>
<!-- 	</c:forEach>
</c:if> -->
	
	</table>
</div>
<div style="left:25%; position:relative; width:50%; text-align:center; valgin:top;">
	<select style="top:-35px; height:25px;">
		<option>분류</option>
		<option>등급</option>
		<option>이름</option>
		<option>아이디</option>
	</select>
	<input type="text" id="search" style="height:20px;">
	<!-- <div style="position:relative; "> -->
	<img height="30" style="top-margin:10px; left:74%;"src="../image/search.png" onclick="">
	<!-- </div> -->
</div>
</body>
</html>