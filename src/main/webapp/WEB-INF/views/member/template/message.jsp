<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<ul class="nav nav-tabs nav-justified" id="nav_profile_withdrawal">
  <li role="presentation" class="active"><a style="cursor:pointer;">메세지</a></li>
  <li role="presentation" id="presen_pro"><a href="/accounts/userInfo" id="profile_a" style="cursor:pointer;">프로필 / 계정관리</a></li>
  <li role="presentation" id="presen_width"><a href="/accounts/widthdrawalUser" id="widthdrawal_a" style="cursor:pointer;">회원탈퇴</a></li>
</ul>
<br><br><br>
<div class="container">
	<div class="col-sm-offset-1 col-sm-3">
	<select class="form-control"> 
		<option>전체 메세지</option> 
		<option>예약 확인</option> 
		<option>수락 신청</option> 
	</select>
	</div>
</div>
