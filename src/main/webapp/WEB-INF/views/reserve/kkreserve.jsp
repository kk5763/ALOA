<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>ALOA</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="/resources/datepicker/bootstrap-datepicker.js"></script>
<script src="/resources/datepicker/bootstrap-datepicker.kr.js"></script>
<link rel="stylesheet" href="/resources/datepicker/datepicker3.css"> 
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<title>Insert title here</title>
</head>
<body>

<button type="button" data-toggle="modal" data-target="#ModalReserve" class="btn btn-primary">예약하기</button>

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
				<div class="form-group">
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
       					<button id="reserve_button" type="button" class="btn btn-primary">예약 확인</button>
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
		  	})
		  	
		})
		
	</script>
</body>
</html>






