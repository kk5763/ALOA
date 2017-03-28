<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<ul class="nav nav-tabs nav-justified" id="nav_profile_withdrawal">
  <li role="presentation"><a href="/accounts/message" style="cursor:pointer;">메세지</a></li>
  <li role="presentation" id="presen_pro"><a href="/accounts/userInfo" id="profile_a" style="cursor:pointer;">프로필 / 계정관리</a></li>
  <li role="presentation" id="presen_width" class="active"><a id="widthdrawal_a" style="cursor:pointer;">회원탈퇴</a></li>
</ul>
<br>
<div class="container" id="widthdrawal_container">
	<form class="form-horizontal col-sm-offset-2 col-sm-8" id="withdrawal">
		<div id="withdrawalDiv" style="border-bottom: 1px solid gray;">
		<h4>회원 탈퇴</h4>
		</div><br>
		
		<div class="form-group text-left">
			<h4 class="col-sm-offset-2"><strong>왜 떠나는지 알고싶어요.</strong></h4>
			<div class="text-left">
				<div class="radio col-sm-offset-2">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
						개인정보에 대한 우려가 있어서요.
					</label>
				</div>
				<div class="radio col-sm-offset-2">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
						이 어플리케이션의 기능은 쓸모 없어요.
					</label>
				</div>
				<div class="radio col-sm-offset-2">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
						이용 방법을 모르겠어요.
					</label>
				</div>
				<div class="radio col-sm-offset-2">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios4" value="option4">
						기타
					</label>
				</div>
			</div>
		</div>
		<br><br>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">더 자세히 알려줄 수 있나요?</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="5"></textarea>
			</div>
		</div><br>
		<div id="widthdrawal_alert_div">
			<h4 class="text-right">탈퇴하시려면 비밀번호를 입력 후 회원탈퇴버튼을 눌러주세요.</h4>
		</div>
		<div class="form-group">
			<label for="widthdrawalPassword" class="col-sm-2 control-label">비밀번호</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="widthdrawalPassword">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10 text-right">
				<button type="button" id="withdrawal_button" class="btn" style="background-color:tomato; color:white;">회원 탈퇴</button>
			</div>
		</div>
	</form>
</div>

<script>
$(document).ready(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$('#withdrawal_button').click(function(){
		var widthpassword = $('#widthdrawalPassword').val();
		console.log(widthpassword);
		if($('#widthdrawalPassword').val() == ''){
			$('#widthdrawal_alert_div').html('<h4 class="text-right" style="color:red;">비밀번호를 입력해주세요.</h4>')
			setTimeout(function(){
				$('#widthdrawal_alert_div').html('<h4 class="text-right">탈퇴하시려면 비밀번호를 입력 후 회원탈퇴버튼을 눌러주세요.</h4>');
			}, 2000)
		}else{
			$.ajax({
				url:'/accounts/'+<sec:authentication property='principal.id'/>,
				type: 'DELETE',
				dataType: 'json',
				data: {'widthpassword':widthpassword},
				beforeSend: function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success: function(data, status, xhr){
					$('#logout').submit();
				},
				error: function(xhr, status, err){
					if(xhr.status == 400){
						$('#widthdrawal_alert_div').html('<h4 class="text-right" style="color:red;">비밀번호가 틀렸습니다.</h4>')
						setTimeout(function(){
							$('#widthdrawal_alert_div').html('<h4 class="text-right">탈퇴하시려면 비밀번호를 입력 후 회원탈퇴버튼을 눌러주세요.</h4>');
						}, 2000)
					}else{
						$('#widthdrawal_alert_div').html('<h4 class="text-right" style="color:red;">예상하지 못한 에러</h4>');
						setTimeout(function(){
							$('#widthdrawal_alert_div').html('<h4 class="text-right">탈퇴하시려면 비밀번호를 입력 후 회원탈퇴버튼을 눌러주세요.</h4>');
						}, 2000)
					}
				}
			})
		}
	})
})
</script>