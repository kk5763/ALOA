<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<c:choose>
		<c:when test="${sessionScope.username!=null}">
			<div class="btn_main_div">
				<img src="https://graph.facebook.com/${id}/picture">
				${sessionScope.username }
			</div>
		</c:when>
		<c:otherwise>
			<div class="btn_main_div">
				<span id="signup" style="cursor: pointer;">SIGN UP</span>&nbsp;&nbsp;&nbsp;
				<span id="login" style="cursor: pointer;">LOGIN</span>
			</div>
		</c:otherwise>
	</c:choose>
</header>

<div id="member_update_wrapper">
	<form id="member_update" method="POST" action="/signup">
		<div id="update_main">
			<label>
				<input type="email" class="modify" name="email" id="email" placeholder="e-mail address" autocomplete="off"/>
			</label>
			<div id="result_id"></div>
			<label>
				<input type="password" class="modify" name="password" id="password" placeholder="password" autocomplete="off"/>
			</label>
			<div id="result_pwd"></div>
			<label>
				<input type="password" class="modify" name="password2" id="password2" placeholder="Confirm password" autocomplete="off"/>
			</label>
			<div id="result_pwd2"></div>
			<label>
				<input type="text" class="modify" name="name" placeholder="name" autocomplete="off"/>
			</label>
			<div id="result_name"></div>
			<input type="submit" value="Sign up">
		</div>
	</form>
</div>

<input type="hidden" id="checkEmail" value="0">
<input type="hidden" id="checkPwd" value="0">
<input type="hidden" id="checkPwd2" value="0">


<div id="member_login_wrapper">
	<form id="member_update" method="POST" action="login.php">
		<div id="update_main">
			<label>
				<input type="email" class="modify" name="id" id="id" placeholder="e-mail address" autocomplete="off"/>
			</label>
			<label>
				<input type="password" class="modify" name="pwd" id="pwd"
				placeholder="password" autocomplete="off"/>
			</label>
			<input type="submit" value="login">
		</div>
	</form>
	
	<form action="/connect/facebook" method="post">
		<input type="hidden" name="scope" value="user_posts"/>
	<button>facebook login</button>	
</form>
</div>