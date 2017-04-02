<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
    
<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel = "stylesheet" type = "text/css" href = "/style/h_style/manageMain.css"/>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(e){
    $('.search-panel .dropdown-menu').find('a').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("href").replace("#","");
		var concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #search_param').val(param);
	});
});//검색어 분류 지정시 항목으로 이름변경

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

//체크버튼
$(document).ready(function(){
	$('.check-all').click(function(){
		$('.check-each').prop('checked', this.checked);
	});
});

function reviewRemove(){
	document.reviewClaim.submit();
}

</script>

</head>

<body>
<form id = "reviewClaim" method = "post" action = "/manager/reviewRemove">
<div class="container">
    <div class="creatediv1 marginTop30">
    			
				<div class="row margin-top-50">
					<div class="col-md-12">
						<div class="panel panel-primary filterable">
							<div class="panel-heading">
								<h3 class="panel-title">리뷰신고<span style="color: white; font-weight: bold;"> *</span></h3>
								<div class="pull-right">
									<button type="button" class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> 검색</button>
								</div>
							</div>
							<table class="span12">
								<table>
									<tr class="filters">
									<th style= "width:1%;">
										<div class="checkbox radio-margin">
											<label>
												<input type="checkbox" class = "check-all">
												<span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
											</label>
										</div>
									</th>
									<th style="width: 10%">
										<input type="text" class="form-control" placeholder="신고인" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="신고제목" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="리뷰넘버" disabled>
									<th style="width: 35%">
										<input type="text" class="form-control" placeholder="피신고인" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="처리상태" disabled>
									</th>
									
								
									
			
									</tr>
								</table>
								<div class="bg tablescroll">
									<table class="table table-bordered table-striped">
										<c:if test = "${list!=null }">	
										<c:forEach var = "reportRevDTO" items = "${list }">
										
										<tr>
											<td style= "width:1%;">
												<div class="checkbox radio-margin">
													<label>
														<input type="checkbox" class = "check-each" value = "${reportRevDTO.resNo }">
														<span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
													</label>
												</div>
											</th>
											<td style="width: 10%">${reportRevDTO.reEmail }</td>	
											<td style="width: 15%">${reportRevDTO.reportName }</td>
											<td style="width: 15%">${reportRevDTO.reviewNo }</td>
											<td style="width: 35%">${reportRevDTO.deEmail }</td>
											<td style="width: 15%">${reportRevDTO.reStatus }</td>
											
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
	<div align = "right">
 	<button id = "remove" value = "삭제" onclick = "listRemove()">삭제</button>
 	</div>
	<nav>
  <ul class="pagination">
    <li>
      <span>
        <span aria-hidden="true">&laquo;</span>
      </span>
    </li>
    <li class="active">
      <span>1 <span class="sr-only">(current)</span></span>
    </li>
    <li>
      <span>2 </span>
    </li>
    <li class="active">
      <span>3 <span class="sr-only">(current)</span></span>
    </li>
    <li>
      <span>4 <span class="sr-only">(current)</span></span>
    </li>
    <li class="active">
      <span>5 <span class="sr-only">(current)</span></span>
    </li>
   <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav><!-- 페이징 -->
  <!-- 검색 div 
  <div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">검색 조건</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#contains">이름</a></li>
                      <li><a href="#its_equal">제목</a></li>
                      <li><a href="#greather_than">내용</a></li>
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
	</div>
</div>
-->
<!-- 검색어입력 -->


</form>

</body>
</html>