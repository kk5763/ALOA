<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ALOA</title>
	<%@ include file="../include/header.jsp" %>
	<script src="/resources/jquery.bpopup.min.js"></script>
	<style>
		#main_img{
			height: 600px;
			padding: 5px;
			background-image: url('https://source.unsplash.com/random');
			background-size: cover;
		}
		#member_update_wrapper, #member_login_wrapper{
			width: 400px;
			height: 500px;
			display: none;
			float: center;
			background-color: white;
			text-align: center;
		}
		#member_login_wrapper{
			display : none;
		}
		.modify{
			width: 350px;
			font-size:1rem;
			margin:15px;
			text-align: center;
		}
		.btn_main_div{
			text-align:right;
		}
	</style>
</head>
<body>
	<%@ include file="../include/menu.jsp" %>
	<div id="main_img"></div>
	
	<script src="/js/member.js"></script>
</body>
</html>