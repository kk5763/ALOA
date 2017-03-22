<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
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
</head>
<body>

<c:url value="/login" var="loginUrl"/>
<div class="container-fluid">
	<div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
	<form class="col-xs-12 col-sm-8 col-md-6 col-lg-4" action="${loginUrl}" method="post">       
		<c:if test="${param.error != null}">        
			<p>
				Invalid username and password.
			</p>
		</c:if>
		<c:if test="${param.logout != null}">       
			<p>
				You have been logged out.
			</p>
		</c:if>
		<div class="form-group">
		    <div class="input-group">
		        <div class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
		        <input type="email" class="form-control" id="username" name="username" placeholder="이메일 입력">
		    </div>
		</div>
		<div class="form-group">
		    <div class="input-group">
		        <div class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></div>
		        <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력">
		    </div>
		</div>
		<%-- <input type="hidden"                        
			name="${_csrf.parameterName}"
			value="${_csrf.token}"/> --%>
		<sec:csrfInput />
		<div class="form-group">
	          <button type="submit" id="person_info_submit" class="btn btn-danger btn-block">회원 가입</button>
		</div>
	</form>
</div>
<hr>
<a href="/">홈으로 이동</a>

</body>
</html>