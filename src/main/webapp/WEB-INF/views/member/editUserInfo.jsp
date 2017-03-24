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
	<style>
		.jumbotron div form #gender a{
			cursor:pointer;
		}
	</style>
</head>
<body>
<%@ include file="../include/top_menu.jsp" %>
<ul class="nav nav-tabs nav-justified">
  <li role="presentation" class="active"><a href="#">프로필</a></li>
  <li role="presentation"><a href="#">계정관리</a></li>
  <li role="presentation"><a href="#">예약목록</a></li>
</ul>
<div class="jumbotron">
	<div class="container text-center">
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3">
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
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Sign in</button>
				</div>
			</div>
		</form>
	</div>
</div>


<script>
	$(document).ready(function(){
		$('#man_a').click(function(){
			$('#man').removeAttr('class').attr('class', 'active');
			$('#woman').removeAttr('class');
			$('#etc').removeAttr('class');
		})
		$('#woman_a').click(function(){
			$('#woman').removeAttr('class').attr('class', 'active');
			$('#man').removeAttr('class');
			$('#etc').removeAttr('class');
		})
		$('#etc_a').click(function(){
			$('#etc').removeAttr('class').attr('class', 'active');
			$('#man').removeAttr('class');
			$('#woman').removeAttr('class');
		})
		$( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true
        });
	})
</script>

</body>
</html>