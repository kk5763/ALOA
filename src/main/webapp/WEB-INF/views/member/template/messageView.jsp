<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/style/messageViewStyle.css" />
<script type="text/javascript">
function closeButton(){
	window.open('','_self').close();
	
}
</script>
</head>
<body>
<div id="messageView">
	<div id="messageConfirmTitle">메세지 확인</div>
	<div id="messageT">
		<div id="messageName"><b>보낸사람</b></div><input type="text" value="비앙코" size="30" readonly/>
		<div id="messageTime"><b>받은 시간</b></div><input type="text" value="17-03-30 [13:13]" size="30" readonly/>
		<div id="messageRequest"><b>내용</b></div><textarea rows="10" cols="60" readonly resize="none"></textarea>
	</div>
	
	<div id="messageCancell">삭제</div>
	<div id="messageCancell">닫기</div>
</div>
</body>
</html>