<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="/resources/jquery.bxslider.min.js"></script>
	<link href="/resources/jquery.bxslider.min.css" rel="stylesheet">
	<!-- 자동완성 -->
	<link id="themecss" rel="stylesheet" type="text/css" href="//www.shieldui.com/shared/components/latest/css/light/all.min.css" />
    <script type="text/javascript" src="//www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
	<script type="text/javascript">
		function openStorejoinForm(){
			window.open("http://localhost:8000/storejoinForm",
					"storejoinForm",
					"toolbar=no, status=no, menubar=no, scrollbar=no, resizable=no, left=400, top=100, width=1100, height=800");
			
		}
	</script>

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
        .sui-autocomplete,ul.sui-autocomplete,.sui-autocomplete-loading{
        	z-index:99999999;
        }
        .slider1{
        	z-index: -1;
        }
	</style>
	
<script type="text/javascript">

$(document).ready(function(e){
	$('body').on('click', '#img_div img', function(e){
		var tg = e.target.id;
		
		$('#detailList_form').attr('action', '/detailView/'+tg);
		
		$('#detailList_form').submit();
	})
})
</script>

</head>
<body>
	<%@ include file="../include/top_menu.jsp" %>

<div class="jumbotron text-center" style="background: url('/resources/project_main_image.jpg') no-repeat; background-position: center center; background-size: 100% auto;">
    <h1 style="color:#fff; opacity:0;"></h1>
    <p style="color:tomato; opacity:0;">메인</p>
    <h1 style="color:#fff; opacity:0.5;">웹프로젝트</p>
    <p style="color:tomato; opacity:0;">메인</p>
    <p style="color:tomato; opacity:0;">메인</p>
</div>

<form class="container text-center" id="searchbar" method="get" action="http://localhost:8000/searchList">
    <div class="input-group">
        <input type="text" class="form-control input-lg" placeholder="search" id="search_record" name="searchName">	
        <div class="input-group-btn">
            <button type="submit" class="btn btn-lg btn-danger">검색</button>
        </div>
    </div>
</form>

<form id="nav_searchBar">
    <nav class="navbar navbar-default">
	    <div class="container-fluid">
	        <div class="navbar-header">
	            <a id="nav_mainImg" class="navbar-brand" href="#"><i class="fa fa-home fa-2x" aria-hidden="true" style="color:lightcoral;"></i></a>
	             <form id="nav_searchBar">
				    <div class="input-group" >
			             
				        <input type="text" class="form-control input-lg" placeholder="search" id="search_record2">
				        <div class="input-group-btn">
				            <button type="submit" class="btn btn-lg btn-danger" style="height:100%;"><i class="fa fa-search" aria-hidden="true"></i></button>
				        </div>
				        
				        <button type="button" class="navbar-toggle navbar-right" data-toggle="collapse" data-target="#myNavbar2">
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			            </button>    
				        
		        	</div>
		        	
		        	<div class="collapse navbar-collapse" id="myNavbar2">
				            <ul class="nav navbar-nav navbar-right" >
				            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">예약</a></li>
				            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">맛집리스트</a></li>
				                <li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">회원가입</a></li>
				                <li><a data-toggle="modal" data-target="#ModalLogin" style="cursor: pointer;">로그인</a></li>
				            </ul>
				        </div>
				</form>
	        </div>
	    </div>
	</nav>
</form>
<br><br>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<div class="container">
	<h3>실시간 추천 맛집 리스트</h3>
	<div class="center-block slider1" style=" z-index:999;">
		<div class="slide" style="z-index:9990;">
			<a href="#">
				<img src="https://source.unsplash.com/random" style="height: 300px;"/>
				가게 이름 설명<br>
				별점
			</a>
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;"/>
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;"/>
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;"/>
		</div>
		<div class="slide">
			<img src="https://source.unsplash.com/random" style="height: 300px;"/>
		</div>
	</div>
</div>

<!-- 검색창 포커스(블러)시 배경화면 변경 -->
<div id="search_div" style="background-color:rgba(0,0,0,0.90); position:absolute; top:0px; left:0px; width:100%; height:150%; display:none;"></div>
<script>
    $(document).ready(function(){
        var jbOffset = $('#searchbar').offset();
        $( window ).scroll( function() {
            if ($(document).scrollTop() > jbOffset.top){
                $('#nav_searchBar').slideDown();
            }
            else {
                $('#nav_searchBar').slideUp("");
            }
            $('.sui-autocomplete,ul.sui-autocomplete,.sui-autocomplete-loading').hide();//검색입력창 스크롤 변경시 사라짐
        });
        $('.slider1').bxSlider({
            slideWidth: 300,
            minSlides: 1,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 10
            
        });
    });
    
</script>
<script type="text/javascript">
    var keywords = [
        "홍대", "강남", "이태원", "신촌", "이대", "건대", "Blackberry",
        "홍대입구", "강남 파스타", "강남 레스토랑", "홍대 돈가스", "Currant",
        "Cherry", "Cherimoya", "Cloudberry", "Coconut", "Cranberry", "Cucumber",
        "Damson", "Date", "Dragonfruit", "Durian", "Eggplant", "Elderberry",
        "Feijoa", "Fig", "Goji berry", "Gooseberry", "Grape", "Grapefruit",
        "Guava", "Huckleberry", "Honeydew", "Jackfruit", "Jambul", "Jujube",
        "Kiwi fruit", "Kumquat", "Lemon", "Lime", "Loquat", "Lychee", "Mango",
        "Melon", "Canary melon", "Cantaloupe", "Honeydew", "Watermelon",
        "Rock melon", "Mulberry", "Nectarine", "Nut", "Olive", "Orange",
        "Clementine", "Mandarine", "Tangerine", "Pamelo", "Papaya",
        "Passionfruit", "Peach", "Pepper", "Chili Pepper", "Bell Pepper",
        "Pear", "Persimmon", "Physalis", "Plum/prune", "Pineapple",
        "Pomegranate", "Pomelo", "Purple Mangosteen", "Quince", "Raspberry",
        "Western raspberry", "Rambutan", "Redcurrant", "Salal berry", "Satsuma",
        "Star fruit", "Strawberry", "Tamarillo", "Watermelon"
    ];
    jQuery(function ($) {
        $('#search_record').shieldAutoComplete({
            dataSource: {
                data: keywords
            },
            minLength: 1
        });
        $('#search_record2').shieldAutoComplete({
            dataSource: {
                data: keywords
            },
            minLength: 1
        });
    });
    $('#search_record, #search_record2').focus(function(){
    	$('#search_div').show();
    });
	$('#search_record, #search_record2').blur(function(){
		$('#search_div').hide();
    });
	$('ul.sui-autocomplete').click(function(){
		$('#search_div').show();
	});
</script>

</body>
</html>