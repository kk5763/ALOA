<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ALOA</title>
	<%@ include file="../include/header.jsp" %>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="/resources/jquery.bxslider.min.js"></script>
    <link href="/resources/jquery.bxslider.min.css" rel="stylesheet">
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
	<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a id="nav_mainImg" class="navbar-brand" href="#"><i class="fa fa-home fa-2x" aria-hidden="true" style="color:lightcoral;"></i></a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">회원가입</a></li>
                <li><a data-toggle="modal" data-target="#ModalLogin" style="cursor: pointer;">로그인</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Modal -->
<div class="modal fade" id="ModalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <button type="button" class="btn btn-primary btn-block">Facebook 로그인</button>
                <button type="button" class="btn btn-info btn-block">Google 로그인</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                            <input type="email" class="form-control" id="email" name="email" placeholder="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></div>
                            <input type="password" class="form-control" id="password" name="password" placeholder="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-danger btn-block">로그인</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="ModalSignUp" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <button type="button" class="btn btn-lg btn-primary btn-block">Facebook 로그인</button>
                <button type="button" class="btn btn-lg btn-info btn-block">Google 로그인</button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <button class="btn btn-lg btn-danger btn-block" type="submit">이메일로 회원가입</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="jumbotron text-center" style="background-color: white">
    <h1 style="color:paleturquoise">kgitbank pj</h1>
    <p style="color:tomato">뭐 이미지나 잡다한거 들어갈 자리</p>
    <p style="color:black">뭐 이것저것 해보고싶은게 많았는데 제 능력으론 여기가 한계입니다.</p>
</div>

<form class="container text-center" id="searchbar">
    <div class="input-group">
        <input type="text" class="form-control input-lg" placeholder="search">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-lg btn-danger"><i class="fa fa-search" aria-hidden="true"></i></button>
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
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <a href="#">
                            <div class="thumbnail">
                                <img src="https://source.unsplash.com/random" style="height: 300px;">
                                <div class="caption">
                                    음식점 이름<br>
                                    별점 점수
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar5"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar6"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar7"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar8"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar9"></div>
    </div>
</div>
<div class="container">
    <h3>어제 추천 맛집 리스트</h3>
    <div class="center-block slider2">
        <div class="slide">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <a href="#">
                            <div class="thumbnail">
                                <img src="https://source.unsplash.com/random" style="height: 300px;">
                                <div class="caption">
                                    음식점 이름<br>
                                    별점 점수
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar5"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar6"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar7"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar8"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar9"></div>
    </div>
</div>
<div class="container">
    <h3>내일 추천 맛집 리스트</h3>
    <div class="center-block slider3">
        <div class="slide">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <a href="#">
                            <div class="thumbnail">
                                <img src="https://source.unsplash.com/random" style="height: 300px;">
                                <div class="caption">
                                    음식점 이름<br>
                                    별점 점수
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar5"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar6"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar7"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar8"></div>
        <div class="slide"><img src="http://placehold.it/350x150&text=FooBar9"></div>
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
            slideWidth: 300,
            minSlides: 2,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 10
        });
        $('.slider2').bxSlider({
            slideWidth: 300,
            minSlides: 2,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 10
        });
        $('.slider3').bxSlider({
            slideWidth: 300,
            minSlides: 2,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 10
        });
    });
</script>
</body>
</html>