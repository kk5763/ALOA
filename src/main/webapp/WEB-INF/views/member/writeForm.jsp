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
	<c:set var="path" value="${pageContext.request.contextPath }"/>
	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="/resources/jquery.bxslider.min.js"></script>
	<link href="/resources/jquery.bxslider.min.css" rel="stylesheet">
	<title>ALOA</title>
	<style>
	</style>
<!-- <link rel = "stylesheet" type = "text/css" href = "/style/h_style/writeFormStyle.css"/> -->
	<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
	<!-- default header name is X-CSRF-TOKEN -->
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
</head>
<body>
	<br><br>
	<input type="hidden" id="email_hidden"/>
	<input type="hidden" id="password_hidden"/>
	<input type="hidden" id="confirm_hidden"/>
	<input type="hidden" id="name_hidden"/>
	<div class="container-fluid">
		<div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
		<form method="post" action="/accounts" class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
		<input type="hidden" name="tel" value="454545">
	<input type="hidden" name="server" value="000">
	<input type="hidden" name="admin" value="00">
	<input type="hidden" name="emailautho" value="00">
	
	       <div class="form-group" id="email-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
	               <input type="email" class="form-control" id="email" name="email" placeholder="이메일 입력">
	           </div>
	       </div>
	       <div class="form-group text-center" id="email_result">
	       </div>
	       <div class="form-group" id="password-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></div>
	               <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력">
	           </div>
	       </div>
	       <div class="form-group text-center" id="password_result">
	       </div>
	       <div class="form-group" id="confirm-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></div>
	               <input type="password" class="form-control" id="confirm" placeholder="비밀번호 확인">
	           </div>
	       </div>
	       <div class="form-group text-center" id="confirm_result">
	       </div>
	       <div class="form-group" id="name-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></div>
	               <input type="text" class="form-control" id="username" name="username" placeholder="이름">
	           </div>
	       </div>
	       <div class="form-group">
	           <button type="submit" id="person_info_submit" class="btn btn-danger btn-block" >회원 가입</button>
	       </div>
	       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    </form>
	</div>
	<script>
		/* $(document).ready(function(){
			$('#person_info_submit').submit(function(){
				var params = {"username":$('#username').val(),"password":$('#password').val(),"fullName":$('#fullName').val()};   ,${_csrf.parameterName}:'${_csrf.token}' 
				$.ajax({
					type:'post',
					url:'/accounts',
					dataType:'json',
					data:JSON.stringify(params),
					processData : true,
					contentType : "application/json; charset=UTF-8",
					success:function(){
						location="http://localhost:8000";
					},
					error:function(){
						$('#code').css('color', 'red');
						$('#code').html('<em>뭔가 잘못됨</em>');
						$('.form-group').removeAttr('class').attr('class','form-group has-error');
					}
				})
			})
		}) */
		$(document).ready(function(){
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			$('#email').keyup(function(){
				var value = $(this).val();
				$.ajax({
					url:'/inspect',
					dataType:'json',
					type:'POST',
					data:{'data':value,'type':'id'},
					beforeSend: function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success: function(result){
						console.log(result.data);
						if(result.result===true){
							$('#email_result').css('color', 'blue');
							$('#email_result').html('사용 가능한 이메일 주소 입니다.');
							$('#email-group').removeAttr('class').attr('class', 'form-group has-success');
							$('#email_hidden').removeAttr('value').attr('value', 'true');
						}else if(result.result==false){
							$('#email_result').css('color', 'red');
							$('#email_result').html('이미 등록된 이메일 주소 입니다.');
							$('#email-group').removeAttr('class').attr('class', 'form-group has-error');
							$('#email_hidden').removeAttr('value').attr('value', 'false');
						}
					}
				})
			})
			$('#password').keyup(function(){
				var value = $(this).val();
				if(value.length<=7){
					$('#password_result').css('color', 'red');
					$('#password_result').html('비밀번호는 8자 이상 적어주세요.');
					$('#password-group').removeAttr('class').attr('class', 'form-group has-error');
					$('#password_hidden').removeAttr('value').attr('value', 'false');
				}else{
					$('#password_result').css('color', 'blue');
					$('#password_result').html('사용 가능한 비밀번호 입니다.');
					$('#password-group').removeAttr('class').attr('class', 'form-group has-success');
					$('#password_hidden').removeAttr('value').attr('value', 'true');
					check();
				}
				if($('#confirm').val()!=''){
					if($('#confirm').val()!=value){
						$('#confirm_result').css('color', 'red');
						$('#confirm_result').html('비밀번호가 일치하지 않습니다.');
						$('#confirm-group').removeAttr('class').attr('class', 'form-group has-error');
						$('#confirm_hidden').removeAttr('value').attr('value', 'false');
					}else{
						$('#confirm_result').css('color', 'blue');
						$('#confirm_result').html('비밀번호가 일치합니다.');
						$('#confirm-group').removeAttr('class').attr('class', 'form-group has-success');
						$('#confirm_hidden').removeAttr('value').attr('value', 'true');
					}
				}
			})
			$('#confirm').keyup(function(){
				var value = $(this).val();
				if($('#password').val()!=value){
					$('#confirm_result').css('color', 'red');
					$('#confirm_result').html('비밀번호가 일치하지 않습니다.');
					$('#confirm-group').removeAttr('class').attr('class', 'form-group has-error');
					$('#name_hidden').removeAttr('value').attr('value', 'false');
				}else{
					$('#confirm_result').css('color', 'blue');
					$('#confirm_result').html('비밀번호가 일치합니다.');
					$('#confirm-group').removeAttr('class').attr('class', 'form-group has-success');
					$('#name_hidden').removeAttr('value').attr('value', 'true');
				}
			})
			function check(){
				if($('#email_hidden').val()=='true' && $('#password_hidden').val()=='true' && $('#confirm_hidden').val()=='true' && $('#name_hidden').val()=='true'){
					$('#person_info_submit').removeAttr('disabled');
				}
			}
		})
	</script>
	
	
</body>
</html>











