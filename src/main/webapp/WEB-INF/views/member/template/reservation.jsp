<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<ul class="nav nav-tabs nav-justified" id="nav_profile_withdrawal">
  <li role="presentation"><a href="/accounts/message" style="cursor:pointer;">메세지</a></li>
  <li role="presentation" class="active"><a href="#" style="cursor:pointer;">예약 정보</a></li>
  <li role="presentation"><a href="/accounts/userInfo" id="profile_a" style="cursor:pointer;">프로필 / 계정관리</a></li>
  <li role="presentation"><a href="/accounts/widthdrawalUser" id="widthdrawal_a" style="cursor:pointer;">회원탈퇴</a></li>
</ul>
<br><br><br>
<div id="" style="text-align: center;">
	<div class="container" style="border:1px solid #ccc; width:500px; height:500px; display:inline-block; margin:0px 10px;">
		<table class="table table-hover"> 
			<caption>신청한 예약</caption>
			<thead> 
				<tr>
					<th>예약날짜</th> 
					<th>예약시간</th> 
					<th>인원</th> 
					<th>식당이름</th>
					<th>예약확인</th>
				</tr> 
			</thead> 
			<tbody id="message_tbody">
			<tr></tr> 
			<tr></tr> 
			<tr></tr> 
			</tbody> 
		</table> 
	</div>
	
	<div class="container" style="border:1px solid #ccc; width:500px; height:500px; display:inline-block; margin:0px 10px;">
		<table class="table table-hover"> 
		<caption>예약 목록</caption>
		<thead> 
			<tr>
				<th>예약날짜</th> 
				<th>예약시간</th> 
				<th>인원</th> 
				<th>예약자</th>
				<th>예약상태</th>
				</tr> 
			</thead> 
			<tbody id="message_tbody">
			<tr></tr> 
			<tr></tr> 
			<tr></tr> 
			</tbody> 
		</table> 
	</div>
</div>