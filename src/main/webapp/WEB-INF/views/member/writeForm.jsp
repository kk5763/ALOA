<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "../style/writeFormStyle.css"/>

</head>
<body onresize = "parent.resizeTo(800,750)" onload="parent.resizeTo(800,750)">
<form id = "my_reg_form" method = "GET" action = "">
<center><h2>망고플레이트 회원가입</h2></center>
<table id = "mytable">
	<tr>
		<td id = "left"><b>아이디</b></b> <font color = "red"><b>*</b></font></td>
		<td><input type = "text" id = "user_id" name = "user_id"/>
			<input type = "button" id =user_id_check" value = "중복확인">
		</td>
	</tr>
	<tr>
		<td id = "left"><b>이메일</b><font color = "red"><b>*</b></font></td>
		<td><input type = "text" name = "user_email"/>@
			<select name = "email_address">
				<option id = "naver" value = "naver.com">naver.com</option>
				<option id = "daum" value = "daum.net">daum.net</option>
				<option id = "gmail" value = "gmail.com">gmail.com</option>
				<option id = "yahoo" value = "yahoo.com">yahoo.com</option>
			</select>
	</tr>
	<tr>
		<td id = "left"><b>비밀번호</b><font color = "red"><b>*</b></font></td>
		<td><input type = "password" id = "user_password" name = "user_password"></td>
	</tr>
	<tr>
		<td id = "left"><b>비밀번호 재확인</b><font color = "red"><b>*</b></font></td>
		<td><input type = "password" id = "user_retype_password" name = "user_retype_password"/></td>
	<tr>
		<td colspan = "2"><hr width = "100%" /></td>
	</tr>
	</tr>
	<tr>
		<td id = "left"><b> 이름</b><font color = "red"><b>*</b></font></td>
		<td><input type = "text" id = "name" name = "name" /></td>
	</tr>
	<tr>
		<td id = "left"><b>성별</b> <font color = "red"><b>*</b></font></td>
		<td><input type = "radio" name = "gender" value = "Male"/>Male
			<input type = "radio" name = "gender" value = "Femal"/>Female
		</td>
	</tr>
	<tr><td colspan = "2"><hr width = "100%" /></td></tr>
	<tr>
	<td id = "left"><b>통신사</b></td>
	<td><input type = "radio" name = "agency" value = "SKT"/>SKT
		<input type = "radio" name = "agency" value = "KT"/>KT
		<input type = "radio" name = "agency" value = "LG"/>LG U+
	</td>	
</tr>
<tr>
	<td id = "left"><b>휴대폰번호</b></td>
	<td><select name = "phone_num1" style = "width:120px;">
		<option value = "010">010</option>
		<option value = "011">011</option>
		<option value = "016">016</option>
		<option value = "017">017</option>
	<input id ="num" type = "text" name = "phone_num2" placeholder = "1234">
	<input id ="num" type = "text" name = "phone_num2" placeholder = "5678"></td>
</tr>
<tr><td colspan = "2"><hr width = "100%" /></td></tr>
<br><br>
<tr>
	<td colspan = "2" align = "center">
		<input id = "register" type = "submit" value = "회원가입">
		<input id = "clear" type = "reset" value = "다시작성">
	</td>
</tr>
</table>
</form>
</body>
</html>