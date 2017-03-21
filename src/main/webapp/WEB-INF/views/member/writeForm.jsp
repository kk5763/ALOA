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
		.container-fluid{
            background-color: white;
        }
        #nav_searchBar{
            display: none;
            position: fixed;
            top:0px;
            width:100%;
            z-index: 9999999;
        }
	</style>
<!-- <link rel = "stylesheet" type = "text/css" href = "/style/h_style/writeFormStyle.css"/> -->

</head>
<body>
	<div class="container-fluid">
		<div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
		<form action = "/accounts" accept-charset="utf-8" 
              name = "person_info" method = "POST" class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
	       <div class="form-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
	               <input type="email" class="form-control" id="email" name="email" placeholder="이메일 입력">
	           </div>
	       </div>
	       <div class="form-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></div>
	               <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력">
	           </div>
	       </div>
	       <div class="form-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></div>
	               <input type="password" class="form-control" id="password2" placeholder="비밀번호 확인">
	           </div>
	       </div>
	       <div class="form-group">
	           <div class="input-group">
	               <div class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></div>
	               <input type="text" class="form-control" id="fullName" name="fullName" placeholder="이름">
	           </div>
	       </div>
	       <div class="form-group">
	           <button type="submit" class="btn btn-danger btn-block">회원 가입</button>
	       </div>
	    </form>
	</div>
</body>
</html>