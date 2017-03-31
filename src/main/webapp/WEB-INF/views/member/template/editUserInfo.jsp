<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<ul class="nav nav-tabs nav-justified" id="nav_profile_withdrawal">
  <li role="presentation"><a href="/accounts/message" style="cursor:pointer;">메세지</a></li>
  <li role="presentation"><a href="/accounts/reservation" style="cursor:pointer;">예약 정보</a></li>
  <li role="presentation" id="presen_pro" class="active"><a id="profile_a" style="cursor:pointer;">프로필 / 계정관리</a></li>
  <li role="presentation" id="presen_width"><a href="/accounts/widthdrawalUser" id="widthdrawal_a" style="cursor:pointer;">회원탈퇴</a></li>
</ul>
<br>
<div id="profile_container">
	<div class="container">
		<form class="form-horizontal col-sm-offset-2 col-sm-8">
			<div id="alert_div_profile" style="border-bottom: 1px solid gray;">
			<h4>프로필 관리</h4>
			</div><br>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="name" value="<sec:authentication property='principal.fullName'/>" disabled>
				</div>
			</div>
			<div class="form-group" id="gender">
				<label for="inputPassword3" class="col-sm-2 control-label">성별</label>
				<div class="col-sm-10">
					<select class="form-control" id="gender"> 
						<option id="gender_0">선택</option> 
						<option id="gender_1">남자</option> 
						<option id="gender_2">여자</option> 
						<option id="gender_3">기타</option>
					</select>
				</div>
			</div>
			<!-- <div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">생년월일</label>
				<div class="col-sm-10">
					<div class="container-fluid" style="float:left;">
						<select class="form-control" style="width: 80px; display:inline-block;" > 
							<option>1월</option> 
							<option>2월</option> 
							<option>3월</option> 
							<option>4월</option> 
							<option>5월</option> 
						</select>
						<select class="form-control" style="width: 80px; display:inline-block;"> 
							<option>1일</option> 
							<option>2월</option> 
							<option>3월</option> 
							<option>4월</option> 
							<option>5월</option> 
						</select>
						<select class="form-control" style="width: 100px; display:inline-block;"> 
							<option>1951년</option> 
							<option>2월</option> 
							<option>3월</option> 
							<option>4월</option> 
							<option>5월</option> 
						</select>
					</div>
				</div>
			</div> -->
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">거주도시</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hometown" placeholder="ex: 프랑스/파리, 한국/서울">
				</div>
			</div>
			<div class="form-group">
				<label for="tel" class="col-sm-2 control-label">휴대폰번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="tel" placeholder="'-' 없이 숫자만 입력해주세요, ex:01087874545">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					<button type="button" id="additUserInfo" class="btn" style="background-color:tomato; color:white;">변경사항 저장</button>
				</div>
			</div>
		</form>
	</div><br>
	<div class="container">
		<form class="form-horizontal col-sm-offset-2 col-sm-8" id="passwordUpdate">
			<div id="alertDiv" style="border-bottom: 1px solid gray;">
			<h4>비밀번호 변경</h4>
			</div><br>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">이전 비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword">
				</div>
			</div>
			<div class="form-group">
				<label for="inputNewPassword" class="col-sm-2 control-label">새 비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputNewPassword">
				</div>
			</div>
			<div class="form-group">
				<label for="inputConfirm" class="col-sm-2 control-label">비밀번호 확인</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputConfirm">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					<button type="button" id="password_change_button" class="btn" style="background-color:tomato; color:white;">비밀번호 변경</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script>
$(document).ready(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$.ajax({
		url:'/accounts/additinfo/'+<sec:authentication property='principal.id'/>,
		type:'GET',
		dataType:'json',
		contentType: "application/json; charset=UTF-8",
		beforeSend: function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success: function(data, status, xhr){
			console.log(data.gender);
			switch(data.gender){
				case 0 : $('#gender_0').attr('selected', 'selected');
						   break;
				case 1 : $('#gender_1').attr('selected', 'selected');
				  		   break;
				case 2 : $('#gender_2').attr('selected', 'selected');
				           break;
				case 3 : $('#gender_3').attr('selected', 'selected');
				           break;
			}
			$('#hometown').val(data.hometown);
			$('#tel').val(data.tel);
		}
	})
	
	$('#additUserInfo').click(function(){
		var name = $('#name').val();
		var gender;
		var hometown = $('#hometown').val();
		var tel = $('#tel').val();
		if($('#gender option:selected').val()=='남자'){
			gender = 1;
		}else if($('#gender option:selected').val()=='여자'){
			gender = 2;
		}else if($('#gender option:selected').val()=='기타'){
			gender = 3;
		}else{
			gender = 0;
		}
		
		$.ajax({
			url:'/accounts/additinfo/'+<sec:authentication property='principal.id'/>,
			type:'PUT',
			dataType:'json',
			data: JSON.stringify({'name':name, 'gender':gender, 'hometown':hometown, 'tel':tel}),
			contentType: "application/json; charset=UTF-8",
			beforeSend: function(xhr){
				xhr.setRequestHeader(header, token);
			},
			error: function(xhr, status, err){
				if(xhr.status == 200){
					$('#alert_div_profile').html('<h4 style="color:green;">프로필 업데이트 성공!</h4>');
					setTimeout(function(){
						$('#alert_div_profile').html('<h4>프로필 관리</h4>');
					}, 4000)
				}
			}
		})
	})
	
	
	$('#password_change_button').click(function(){
		var password = $('#inputPassword').val();
		var newPassword = $('#inputNewPassword').val();
		var confirmPassword = $('#inputConfirm').val();
		if(password == '' || newPassword == '' || confirmPassword == ''){
			$('#alertDiv').html('<h4 style="color:red;">빈칸 없이 모두 입력해 주세요.</h4>');
			setTimeout(function(){
				$('#alertDiv').html('<h4>비밀번호 변경</h4>');
			}, 2000)
		}
		else if(newPassword != confirmPassword){
			$('#alertDiv').html('<h4 style="color:red;">새 비밀번호와 비밀번호 확인이 일치하지 않습니다.</h4>');
			setTimeout(function(){
				$('#alertDiv').html('<h4>비밀번호 변경</h4>');
			}, 2000)
		}else{
			$.ajax({
				url:'/accounts/'+<sec:authentication property='principal.id'/>,
				type: 'patch',
				dataType:'json',
				data: JSON.stringify({'password':password, 'newPassword':newPassword}),
				contentType: "application/json; charset=UTF-8",
				beforeSend: function(xhr){
					xhr.setRequestHeader(header, token);
				},
				error: function(xhr, status, err){
					if(xhr.status == 400){
						$('#alertDiv').html('<h4 style="color:red;">비밀번호가 틀렸습니다.</h4>');
						setTimeout(function(){
							$('#alertDiv').html('<h4>비밀번호 변경</h4>');
						}, 2000)
					}else if(xhr.status == 200){
						$('#inputPassword').val('');
						$('#inputNewPassword').val('');
						$('#inputConfirm').val('');
						$('#alertDiv').html('<h4 style="color:green;">비밀번호가 성공적으로 변경되었습니다!!</h4>');
						setTimeout(function(){
							$('#alertDiv').html('<h4>비밀번호 변경</h4>');
						}, 4000)
					}
				}
			})
		}
	})
})
</script>