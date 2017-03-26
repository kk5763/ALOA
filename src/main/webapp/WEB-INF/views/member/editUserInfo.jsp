<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
	<!-- default header name is X-CSRF-TOKEN -->
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
</head>
<body>
<%@ include file="../include/top_menu.jsp" %>
<ul class="nav nav-tabs nav-justified" id="nav_profile_withdrawal">
  <li role="presentation" id="presen_pro" class="active"><a id="profile_a" style="cursor:pointer;">프로필 / 계정관리</a></li>
  <li role="presentation" id="presen_width"><a id="widthdrawal_a" style="cursor:pointer;">회원탈퇴</a></li>
</ul>
<br>
<div id="profile_container">
	<div class="container">
		<form class="form-horizontal col-sm-offset-2 col-sm-8">
			<div style="border-bottom: 1px solid gray;">
			<h4>프로필 관리</h4>
			</div><br>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3" value="<sec:authentication property='principal.fullName'/>">
				</div>
			</div>
			<div class="form-group" id="gender">
				<label for="inputPassword3" class="col-sm-2 control-label">성별</label>
				<div class="col-sm-10">
					<select class="form-control"> 
						<option>선택</option> 
						<option>남자</option> 
						<option>여자</option> 
						<option>기타</option>
					</select>
				</div>
			</div>
			<div class="form-group">
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
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">거주도시</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">자기소개</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="5"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					<button type="submit"  class="btn" style="background-color:tomato; color:white;">변경사항 저장</button>
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
<div class="container" id="widthdrawal_container" style="display:none;">
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
		$('body').on('click', '#nav_profile_withdrawal li a', function(e){
			var tg = e.target.id;
			var profile = $('#profile_container');
			var widthdrawal = $('#widthdrawal_container');
			var pre_pro = $('#presen_pro');
			var pre_wid = $('#presen_width');
			if(tg === 'profile_a'){
				profile.removeAttr('style');
				pre_wid.removeAttr('class');
				pre_pro.attr('class', 'active');
				widthdrawal.css('display','none');
			}else if(tg === 'widthdrawal_a'){
				widthdrawal.removeAttr('style');
				pre_pro.removeAttr('class');
				pre_wid.attr('class', 'active');
				profile.css('display', 'none');
			}
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
					type: 'delete',
					dataType: 'json',
					data: {'widthpassword':widthpassword},
					beforeSend: function(xhr){
						xhr.setRequestHeader(header, token);
					},
					error: function(xhr, status, err){
						if(xhr.status == 400){
							$('#widthdrawal_alert_div').html('<h4 class="text-right" style="color:red;">비밀번호가 틀렸습니다.</h4>')
							setTimeout(function(){
								$('#widthdrawal_alert_div').html('<h4 class="text-right">탈퇴하시려면 비밀번호를 입력 후 회원탈퇴버튼을 눌러주세요.</h4>');
							}, 2000)
						}else{
							alert('회원탈퇴 성공');
						}
					}
				})
			}
		})
	})
</script>

</body>
</html>