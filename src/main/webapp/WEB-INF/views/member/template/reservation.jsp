<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" type="text/css" href="/style/reservation_Style/reservationViewStyle.css" />
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
			<tbody>
			</tbody> 
		</table> 
	</div>
</div>
<div class="modal fade" id="modalReservationConfirm" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true" style="top:80px;">
<div class="modal-dialog" id="reservationView">
<div class="modal-content">
	<div class="modal-header" id="reservationConfirmTitle">예약 확인</div><br>
	<form>
	<div id="reservationT">
		<label for="reservationDate"><b>예약 날짜</b><input id="reservationDate" type="text" class="form-control" size="30" readonly/></label>
		<label for="reservationTime"><b>예약 시간</b><input id="reservationTime" type="text" class="form-control" size="30" readonly/></label>
		<label for="reservationName"><b>인원</b><input id="reservationName" type="text" class="form-control" size="30" readonly/></label>
		<label for="reservationStore"><b>식당 이름</b><input id="reservationStore" type="text" class="form-control" size="30" readonly/></label>
		<label for="reservationRequest"><b>추가 요청 사항</b><textarea id="reservationRequest" rows="10" class="form-control" cols="32" readonly resize="none"></textarea></label>
	</div>
	</form>
	<div id="reservationCancell">예약 취소</div>
	<div id="close" onclick="closeButton()">닫기</div>
</div>
</div>
</div>
<script>
	$(document).ready(function(){
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		
		$.ajax({
			url:'/reservation/'+<sec:authentication property='principal.id'/>,
			type: 'get',
			dataType: 'json',
			beforeSend: function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success: function(data, status, xhr){
				if(xhr.status==200){
					console.log('success');
					console.log(data[0]);
					console.log(data.length)
					$('#message_tbody').html('');
					var i = 1;
					for(var i=0; i<data.length; i++){
						$('#message_tbody').append('<tr data-toggle="modal" data-target="#modalReservationConfirm" style="cursor:pointer;"><td id="'+data[i].id+'">'+data[i].reservedate+'</td><td id="'+data[i].id+'">'+data[i].reservetime+'</td><td id="'+data[i].id+'">'+data[i].member+'</td></tr>');
					}
				}else if(xhr.status==204){
					$('#message_tbody').html('<br><div><strong>신청한 예약이 없습니다.</strong></div>');
				}
			},
			error: function(xhr, status, err){
				alert('err 204');
			}
		})
		
		$(document).on('click', '#message_tbody tr', function(e){
			var tg = e.target.id;
			$.ajax({
				url:'/reservationConfirm/'+tg,
				type: 'get',
				dataType: 'json',
				beforeSend: function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success: function(data, status, xhr){
					if(xhr.status == 200){
						$('#reservationDate').val(data.reservedate);
						$('#reservationTime').val(data.reservetime);
						$('#reservationName').val(data.member);
						$('#reservationRequest').val(data.reserverrequest);
					}
				}
			})
		})
	})
</script>









