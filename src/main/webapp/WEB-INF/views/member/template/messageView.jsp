<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function closeButton(){
	window.open('','_self').close();
	
}
</script>
</head>
<body>
<div id="messageView">
	<div id="reservationConfirmTitle">예약 확인</div>
	<div id="reservationT">
		<div id="reservationDate"><b>예약 날짜</b></div><input type="text" value="" size="30" readonly/>
		<div id="reservationTime"><b>예약 시간</b></div><input type="text" value="" size="30" readonly/>
		<div id="reservationName"><b>예약하신분</b></div><input type="text" value="" size="30" readonly/>
		<div id="reservationStore"><b>식당 이름</b></div><input type="text" value="" size="30" readonly/>
		<div id="reservationRequest"><b>추가 요청 사항</b></div><textarea rows="10" cols="32" readonly resize="none"></textarea>
	</div>
	
	<div id="reservationCancell">예약 취소</div>
	<div id="close" onclick="closeButton()">닫기</div>
</div>
</body>
</html>