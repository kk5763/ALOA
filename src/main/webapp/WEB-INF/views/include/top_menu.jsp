<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<sec:authorize access="isAnonymous()">
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a id="nav_mainImg" class="navbar-brand" href="/"><i class="fa fa-home fa-2x" aria-hidden="true" style="color:lightcoral;"></i></a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">예약</a></li>
            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">맛집리스트</a></li>
                <li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">회원가입</a></li>
                <li><a href="/login" style="cursor: pointer;">로그인</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Modal -->
<div class="modal fade" id="ModalSignUp" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true" style="top:80px; z-index: 9999999;">
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
                        <a href="/agreeJoin" class="btn btn-lg btn-danger btn-block" type="button" id="signupByEmail">이메일로 회원가입</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
 	<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a id="nav_mainImg" class="navbar-brand" href="/"><i class="fa fa-home fa-2x" aria-hidden="true" style="color:lightcoral;"></i></a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">예약</a></li>
            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">맛집리스트</a></li>
            	<li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><sec:authentication property="principal.fullName"/> <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">내가 본 맛집</a></li>
		            <li><a href="#">내가 한 예약</a></li>
		            <li class="divider"></li>
		            <li><a href="/accounts/editUserInfo">회원정보수정</a></li>
		            <li>
		            <a href="#" id="a_logout">로그아웃</a>
		            <form action="/logout" method="post" id="logout">
		            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="로그아웃" style="display:none;">
				</form></li>
		          </ul>
		        </li>
            </ul>
        </div>
    </div>
</nav>
</sec:authorize>
