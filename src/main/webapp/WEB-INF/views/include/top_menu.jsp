<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">예약</a></li>
	            	<li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">맛집리스트</a></li>
	                <li><a data-toggle="modal" data-target="#ModalSignUp" style="cursor: pointer;">회원가입</a></li>
	                <li><a href="/login" style="cursor: pointer;">로그인</a></li>
	            </ul>
	        </div>
	    </div>
	</nav>
	<!-- Modal -->
	<div class="modal fade" id="ModalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:80px; z-index: 9999999;">
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