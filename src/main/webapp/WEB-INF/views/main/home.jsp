<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="../include/header.jsp" %>
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
</head>
<body>
	<%@ include file="../include/top_menu.jsp" %>


<div class="jumbotron text-center" style="background-color: white">
    <h1 style="color:paleturquoise">kgitbank pj</h1>
    <p style="color:tomato">뭐 이미지나 잡다한거 들어갈 자리</p>
    <p style="color:black">.....</p>
</div>

<form class="container text-center" id="searchbar">
    <div class="input-group">
        <input type="text" class="form-control input-lg" placeholder="지역, 식당 또는 음식">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-lg btn-danger">검색</button>
        </div>
    </div>
</form>


<form id="nav_searchBar">
    <div class="input-group">
        <div class="input-group-btn btn-group">
            <button type="button" class="btn btn-lg btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-home fa-1x" aria-hidden="true"></i> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">회원가입</a></li>
                <li><a data-toggle="modal" data-target="#ModalLogin" style="cursor: pointer;">로그인</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
            </ul>
        </div>
        <input type="text" class="form-control input-lg" placeholder="search">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-lg btn-danger"><i class="fa fa-search" aria-hidden="true"></i></button>
        </div>
    </div>
</form>
<br><br>
<div class="container">
	<h3>실시간 추천 맛집 리스트</h3>
	<div class="center-block slider1">
		<div class="slide">
			<a href="#">
				<img src="https://source.unsplash.com/random" style="height: 300px;">
				가게 이름 설명<br>
				별점
			</a>
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;">
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;">
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;">
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;">
		</div>
	</div>
</div>
<script>
    $(document).ready(function(){
        var jbOffset = $('#searchbar').offset();
        $( window ).scroll( function() {
            if ($(document).scrollTop() > jbOffset.top){
                $('#nav_searchBar').slideDown();
            }
            else {
                $('#nav_searchBar').slideUp();
            }
        });
        $('.slider1').bxSlider({
            slideWidth: 250,
            minSlides: 1,
            maxSlides: 5,
            moveSlides: 1,
            slideMargin: 10
        });
    });
</script>
</body>
</html>