<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자 페이지</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/managerIndex/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/resources/managerIndex/css/sb-admin.css" rel="stylesheet" type="text/css">

    <!-- Custom Fonts -->
    <link href="/resources/managerIndex/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<link rel = "stylesheet" type = "text/css" href = "/style/h_style/manageMain.css"/>

	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	$(document).ready(function(e){
	    $('.search-panel .dropdown-menu').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#","");
			var concept = $(this).text();
			$('.search-panel span#search_concept').text(concept);
			$('.input-group #search_param').val(param);
		});//검색어 분류 지정시 항목으로 이름변경
	    
	});
	
	$(document).ready(function(){
	    $('.filterable .btn-filter').click(function(){
	        var $panel = $(this).parents('.filterable'),
	        $filters = $panel.find('.filters input'),
	        $tbody = $panel.find('.table tbody');
	        if ($filters.prop('disabled') == true) {
	            $filters.prop('disabled', false);
	            $filters.first().focus();
	        } else {
	            $filters.val('').prop('disabled', true);
	            $tbody.find('.no-result').remove();
	            $tbody.find('tr').show();
	        }
	    });
	
	    $('.filterable .filters input').keyup(function(e){
	        /* Ignore tab key */
	        var code = e.keyCode || e.which;
	        if (code == '9') return;
	        /* Useful DOM data and selectors */
	        var $input = $(this),
	        inputContent = $input.val().toLowerCase(),
	        $panel = $input.parents('.filterable'),
	        column = $panel.find('.filters th').index($input.parents('th')),
	        $table = $panel.find('.table'),
	        $rows = $table.find('tbody tr');
	        /* Dirtiest filter function ever ;) */
	        var $filteredRows = $rows.filter(function(){
	            var value = $(this).find('td').eq(column).text().toLowerCase();
	            return value.indexOf(inputContent) === -1;
	        });
	        /* Clean previous no-result if exist */
	        $table.find('tbody .no-result').remove();
	        /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
	        $rows.show();
	        $filteredRows.hide();
	        /* Prepend no-result row if all rows are filtered */
	        if ($filteredRows.length === $rows.length) {
	            $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="'+ $table.find('.filters th').length +'">No result found</td></tr>'));
	        }
	    });
	});
	</script>
	
	<script type="text/javascript">
	function restaurantAgreeDetail(){
		var url = "/manager/restaurantAgreeDetail";
		window.open(url ,"", 
		      "toolbar=no, width=840, height=667,  scrollorbars=no, resizable=no"); 

	}
	
	$(document).ready(function(){
		$('#allCheck').click(function(){
			$('.checkPoint').prop('checked',this.checked);
		}); 
	});
	
	</script>
	
	</head>
			
			<body>
			
			    <div id="wrapper">
			
			        <!-- Navigation -->
			        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			            <!-- Brand and toggle get grouped for better mobile display -->
			            <div class="navbar-header">
			                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			                    <span class="sr-only">Toggle navigation</span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                    <span class="icon-bar"></span>
			                </button>
			                <a class="navbar-brand" href="/manager/index">관리자 페이지</a>
			            </div>
			            <!-- Top Menu Items -->
			            <ul class="nav navbar-right top-nav">
			                <li class="dropdown">
			                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
			                    <ul class="dropdown-menu message-dropdown">
			                        <li class="message-preview">
			                            <a href="#">
			                                <div class="media">
			                                    <span class="pull-left">
			                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
			                                    </span>
			                                    <div class="media-body">
			                                        <h5 class="media-heading"><strong>John Smith</strong>
			                                        </h5>
			                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
			                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
			                                    </div>
			                                </div>
			                            </a>
			                        </li>
			                        <li class="message-preview">
			                            <a href="#">
			                                <div class="media">
			                                    <span class="pull-left">
			                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
			                                    </span>
			                                    <div class="media-body">
			                                        <h5 class="media-heading"><strong>John Smith</strong>
			                                        </h5>
			                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
			                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
			                                    </div>
			                                </div>
			                            </a>
			                        </li>
			                        <li class="message-preview">
			                            <a href="#">
			                                <div class="media">
			                                    <span class="pull-left">
			                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
			                                    </span>
			                                    <div class="media-body">
			                                        <h5 class="media-heading"><strong>John Smith</strong>
			                                        </h5>
			                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
			                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
			                                    </div>
			                                </div>
			                            </a>
			                        </li>
			                        <li class="message-footer">
			                            <a href="#">Read All New Messages</a>
			                        </li>
			                    </ul>
			                </li>
			                <li class="dropdown">
			                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
			                    <ul class="dropdown-menu alert-dropdown">
			                        <li>
			                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
			                        </li>
			                        <li>
			                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
			                        </li>
			                        <li>
			                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
			                        </li>
			                        <li>
			                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
			                        </li>
			                        <li>
			                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
			                        </li>
			                        <li>
			                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
			                        </li>
			                        <li class="divider"></li>
			                        <li>
			                            <a href="#">View All</a>
			                        </li>
			                    </ul>
			                </li>
			                <li class="dropdown">
			                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
			                    <ul class="dropdown-menu">
			                        <li>
			                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
			                        </li>
			                        <li>
			                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
			                        </li>
			                        <li>
			                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
			                        </li>
			                        <li class="divider"></li>
			                        <li>
			                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
			                        </li>
			                    </ul>
			                </li>
			            </ul>
			            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			            <div class="collapse navbar-collapse navbar-ex1-collapse">
			                <ul class="nav navbar-nav side-nav">
			                    <li class="active">
			                        <a href="/manager/index"><i class="fa fa-fw fa-dashboard"></i> 관리자 메인</a>
			                    </li>
			
			                    <li>
			                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> 회원 <i class="fa fa-fw fa-caret-down"></i></a>
			                        <ul id="demo" class="collapse">
			                            <li>
			                                <a href="/manager/memberManage">회원 관리</a>
			                            </li>
			                            <li>
			                                <a href="/manager/blacklistManage">블랙리스트 관리</a>
			                            </li>
			                        </ul>
			                    </li>
			                    
			                    <li>
			                        <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="fa fa-fw fa-arrows-v"></i> 맛집 <i class="fa fa-fw fa-caret-down"></i></a>
			                        <ul id="demo1" class="collapse">
			                            <li>
			                                <a href="/manager/restaurantManage">맛집 관리</a>
			                            </li>
			                            <li>
			                                <a href="#" onclick="restaurantAgreeDetail()">맛집 승인</a>
			                            </li>
			                        </ul>
			                    </li>
			                    
			                    <li>
			                        <a href="javascript:;" data-toggle="collapse" data-target="#demo2"><i class="fa fa-fw fa-arrows-v"></i> 신고 <i class="fa fa-fw fa-caret-down"></i></a>
			                        <ul id="demo2" class="collapse">
			                            <li>
			                                <a href="/manager/reviewClaim">리뷰 신고</a>
			                            </li>
			                            <li>
			                                <a href="/manager/restaurantClaim">맛집 신고</a>
			                            </li>
			                        </ul>
			                    </li>
			
			                </ul>
			            </div>
			            <!-- /.navbar-collapse -->
			        </nav>
			
			        <div id="page-wrapper"  style="background-color:rgb(34,34,34);">
						
						<div class="container">
    <div class="creatediv1 marginTop30">
    			
				<div class="row margin-top-50">
					<div class="col-md-12">
						<div class="panel panel-primary filterable">
							<div class="panel-heading">
								<h3 class="panel-title">블랙리스트관리<span style="color: white; font-weight: bold;"> *</span></h3>
								<div class="pull-right">
									<button type="button" class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> 검색</button>
								</div>
							</div>
							<table class="span12">
								<table>
									<tr class="filters">
									<th style= "width:1px;">
										<div class="checkbox radio-margin">
											<label>
												<input type="checkbox" id="allCheck">
												<span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
											</label>
										</div>
									</th>
									<th style="width: 10%">
										<input type="text" class="form-control" placeholder="회원이름" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="아이디" disabled>
									</th>
									<th style="width: 35%">
										<input type="text" class="form-control" placeholder="연락처" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="신고횟수" disabled>
									</th>
									<th style="width: 20%">
										<input type="text" class="form-control" placeholder="비고" disabled>
									</th>
								
									
			
									</tr>
								</table>
								<div class="bg tablescroll">
									<table class="table table-bordered table-striped">
										<c:if test = "${list!=null }">
										<c:forEach var = "memberDTO" items = "${list }">
										<tr>
											<td style= "width:1px;">
												<div class="checkbox radio-margin">
													<label>
														<input type="checkbox" class="checkPoint">
														<span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
													</label>
												</div>
											</td>
											<td style="width: 10%">${memberDTO.username }</td>	
											<td style="width: 15%">${memberDTO.email }</td>
											<td style="width: 35%">${memberDTO.tel }</td>
											<td style="width: 15%">${memberDTO.reportCount }</td>
											<td style="width: 20%"><input type="button" value="삭제"></td>
										</tr>
										</c:forEach>
										</c:if>
									</table>
								</div>
							</table>
						</div>
					</div>
				</div>
    
</div><!-- 테이블 -->
           



        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->



</body>

</html>
