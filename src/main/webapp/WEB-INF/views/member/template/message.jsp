<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<ul class="nav nav-tabs nav-justified" id="nav_profile_withdrawal">
  <li role="presentation" class="active"><a style="cursor:pointer;">메세지</a></li>
  <li role="presentation"><a href="/accounts/reservation" style="cursor:pointer;">예약 정보</a></li>
  <li role="presentation" id="presen_pro"><a href="/accounts/userInfo" id="profile_a" style="cursor:pointer;">프로필 / 계정관리</a></li>
  <li role="presentation" id="presen_width"><a href="/accounts/widthdrawalUser" id="widthdrawal_a" style="cursor:pointer;">회원탈퇴</a></li>
</ul>
<br><br><br>
<div id="" style="border:1px solid #ccc; width:90%; height:500px; margin:0 auto; padding-top:20px;">
	<div class="container" >
		<div class="col-sm-3">
		<select class="form-control"> 
			<option>전체 메세지</option> 
			<option>예약 확인</option> 
			<option>수락 신청</option> 
		</select>
		</div>
	</div>
	
	<br>
	
	<div class="container">
		<table class="table table-hover"> 
			<thead> 
				<tr>
					<th>제목</th> 
					<th>보낸이</th> 
					<th>도착시간</th> 
				</tr> 
			</thead> 
			<tbody id="message_tbody"></tbody> 
		</table> 
	</div>
</div> 
<script>
	$(document).ready(function(){
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
			url:'/listEmail/'+<sec:authentication property='principal.id'/>,
			type: 'get',
			dataType: 'json',
			beforeSend: function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success: function(data, status, xhr){
				if(xhr.status==200){
					alert('success');
					alert(data[0].receiver);
					alert(data.length)
					$('#message_tbody').html('');
					var i = 1;
					for(var i=0; i<data.length; i++){
						$('#message_tbody').append('<tr id="message_view_'+i+'"><td>'+(i+1)+'</td><td>'+data[i].sender+'</td><td>'+data[i].contents+'</td></tr>');
					}
				}else if(xhr.status==204){
					$('#message_tbody').html('<tr><td>도착한 메시지가 없습니다.</td></tr>');
				}
			},
			error: function(xhr, status, err){
				alert('err 204');
			}
		})
	})
</script>
