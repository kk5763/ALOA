<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script src="/resources/datepicker/bootstrap-datepicker.js"></script>
<script src="/resources/datepicker/bootstrap-datepicker.kr.js"></script>
<link rel="stylesheet" href="/resources/datepicker/datepicker3.css"> 



<div class="modal" id="ModalReserve" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true" style="top:80px; z-index: 9999999;">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header text-center">
            	<div class="form-group">
					<label for="datepicker">예약 날짜
					<input id="datepicker" class="form-control" type="text" readonly="readonly">
					</label>
				</div>
				<div class="form-group">
					<label for="reserveTime">예약 시간
					<select class="form-control"  name="reservetime" id="reserveTime">
						<option value="">시간을 선택해주세요.</option>
						<option>06:00 ~ 06:30</option>
						<option>06:30 ~ 07:00</option>
						<option>07:00 ~ 07:30</option>
						<option>07:30 ~ 08:00</option>
						<option>08:00 ~ 08:30</option>
						<option>08:30 ~ 09:00</option>  							  
					</select>	
					</label>
				</div>
				<div class="form-group">
					<label for="reservenumber">인원
					<select class="form-control"  name="reservenumber" id="reservenumber">
						<option value="">인원을 선택해주세요.</option>
						<option>1명</option>
						<option>2명</option>
						<option>3명</option>
						<option>4명 이상</option>							  
					</select>	
					</label>
				</div>
				<div class="form-group">
					<label for="request_reserve">요청사항
						<textarea id="request_reserve" class="form-control" rows="3"></textarea>
					</label>
				</div>
				<div id="modal_reserve_alert" class="form-group">
					예약시 회원정보에 저장되어있는 정보들이 예약자의 정보로 저장됩니다.
				</div>
            </div>
            <div class="modal-footer">
                <div class="container-fluid">
                    <div class="row">
       					<button id="reserve_button" type="button" class="btn btn-primary">예약하기</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalReserveConfrim" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true" style="top:80px; z-index: 9999999;">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header text-center">
            	<h3><strong>정상적으로 예약신청이 완료되었습니다.</strong></h3>
            </div>
            <div class="modal-footer">
                <div class="container-fluid">
                    <div class="row">
       					<a href="accounts/reservation" id="reserve_button" type="button" class="btn btn-primary">예약 확인</a>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<script>
		$(document).ready(function(){
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			$('#datepicker').datepicker({
				format: "yyyy-mm-dd",
				startView: 1,
				todayBtn:"linked",
				language: "kr",
				orientation: "top auto",
				keyboardNavigation: false,
				forceParse: false,
				autoclose: true,
				todayHighlight: true
			});
		  	$('#reserve_button').click(function(){
		  		var date = $('#datepicker').val();
		  		var reserveTime = $('#reserveTime').val();
		  		var reserveNumber = $('#reservenumber').val();
		  		var request = $('#request_reserve').val();
		  		if(date == "" || reserveTime == "" || reserveNumber == ""){
		  			$('#modal_reserve_alert').html('날짜, 시간, 인원은 필수 기입사항입니다.').css('color','red');
		  		}else{
			  		$.ajax({
			  			url:'/reservation/khk',
			  			type:'post',
			  			dataType:'json',
			  			data: JSON.stringify({'userid':<sec:authentication property='principal.id'/>,'reservedate':date, 'reservetime':reserveTime, 'member':reserveNumber, 'reserverrequest':request}),
			  			contentType: "application/json; charset=UTF-8",
			  			beforeSend: function(xhr){
							xhr.setRequestHeader(header, token);
						},
						error: function(xhr, status, err){
							if(xhr.status == 200){
								$('#ModalReserve').modal('hide');
								$('#modalReserveConfrim').modal('show');
							}
						}
			  		})
		  		}
		  	})
		  	
		})
		
	</script>





