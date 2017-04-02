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
<div class="modal-content text-center">
	<div class="modal-header" id="reservationConfirmTitle">
		예약 확인
		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	</div><br>
	<div class="modal-body">
		<div class="container-fluid">
			<div class="row">
				<input type="hidden" id="hidden_reservNo">
				<div class="col-xs-6">
					<div class="panel panel-default">
						<div class="panel-heading"><b>예약 날짜</b></div>
						<div id="reservationDate" class="panel-body">
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="panel panel-default">
						<div class="panel-heading"><b>예약 시간</b></div>
						<div id="reservationTime" class="panel-body">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<div class="panel panel-default">
						<div class="panel-heading"><b>인원</b></div>
						<div id="reservationMember" class="panel-body">
						</div>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="panel panel-default">
						<div class="panel-heading"><b>식당 이름</b></div>
						<div id="reservationStore" class="panel-body">
						</div>
					</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading"><b>추가 요청사항</b></div>
				<div id="reservationRequest" class="panel-body">
				</div>
			</div>
		</div>
	</div>
	<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="reserv_cancle_btn">예약 취소하기</button>
    </div>
</div>
</div>
</div>

<div class="modal fade" id="model_cancle_alert">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">예약 취소</h4>
      </div>
      <div class="modal-body">
        <p>예약이 취소되었습니다!&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
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
					$('#message_tbody').html('');
					var i = 1;
					for(var i=0; i<data.length; i++){
						if(data[i].resercancle==1){
							$('#message_tbody').append('<tr class="danger"style="cursor:pointer;"><td id="'+data[i].id+'">'+data[i].reservedate+'</td><td id="'+data[i].id+'">'+data[i].reservetime+'</td><td id="'+data[i].id+'">'+data[i].member+'</td></tr>');
						}else{
							$('#message_tbody').append('<tr id="'+data[i].id+'" data-toggle="modal" data-target="#modalReservationConfirm" style="cursor:pointer;"><td id="'+data[i].id+'">'+data[i].reservedate+'</td><td id="'+data[i].id+'">'+data[i].reservetime+'</td><td id="'+data[i].id+'">'+data[i].member+'</td></tr>');
						}
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
						$('#hidden_reservNo').val(data.id);
						$('#reservationDate').html(data.reservedate);
						$('#reservationTime').html(data.reservetime);
						$('#reservationMember').html(data.member);
						$('#reservationRequest').html(data.reserverrequest);
					}
				}
			})
		})
		$('#reserv_cancle_btn').click(function(){
			var tg = $('#hidden_reservNo').val();
			$.ajax({
				url:'/reservationCancle/'+tg,
				type: 'patch',
				dataType: 'json',
				beforeSend: function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success: function(data, status, xhr){
					if(xhr.status == 200){
						$('#'+data.id).attr('class','danger').removeAttr('data-toggle').removeAttr('data-target');
						$('#modalReservationConfirm').modal('hide');
						$('#model_cancle_alert').modal('show');
					}
				}
			})
		})
	})
</script>









