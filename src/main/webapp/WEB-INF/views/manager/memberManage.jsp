<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
    
<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>


<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel = "stylesheet" type = "text/css" href = "/style/h_style/manageMain.css"/>

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
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
});//�˻��� �з� ������ �׸����� �̸�����

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

</head>

<body>

<div class="container">
    <h3>The columns titles are merged with the filters inputs thanks to the placeholders attributes</h3>
    <hr>
    <p>Inspired by this <a href="http://bootsnipp.com/snippets/featured/panel-table-with-filters-per-column">snippet1</a></p>
    <p>Inspired by this <a href="http://bootsnipp.com/snippets/featured/panel-table-with-filters-per-column">snippet2</a></p>
    
    <div class="creatediv1 marginTop30">
    			
				<div class="row margin-top-50">
					<div class="col-md-12">
						<div class="panel panel-primary filterable">
							<div class="panel-heading">
								<h3 class="panel-title">ȸ������<span style="color: white; font-weight: bold;"> *</span></h3>
								<div class="pull-right">
									<button type="button" class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> �˻�</button>
								</div>
							</div>
							<table class="span12">
								<table>
									<tr class="filters">
									<th style="width:0.1%; width:1px;">
										<div class="checkbox radio-margin">
											<label>
												<input type="checkbox" value="">
												<span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
											</label>
										</div>
									</th>
									<th style="width: 10%">
										<input type="text" class="form-control" placeholder="����" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="ȸ���̸�" disabled>
									</th>
									<th style="width: 17%">
										<input type="text" class="form-control" placeholder="ȸ��ID" disabled>
									</th>
									<th style="width: 20%">
										<input type="text" class="form-control" placeholder="����ó" disabled>
									</th>
									<th style="width: 20%">
										<input type="text" class="form-control" placeholder="���Գ�¥" disabled>
									</th>
									<th style="width: 10%">
										<input type="text" class="form-control" placeholder="����" disabled>
									</th>
									<th style="width: 15%">
										<input type="text" class="form-control" placeholder="���" disabled>
									</th>
									
									
									</tr>
								</table>
								<div class="bg tablescroll">
									<table class="table table-bordered table-striped">
										<tr>
											<td style="width: 0.1%; width:1px;">
												<div class="checkbox radio-margin">
													<label>
														<input type="checkbox" value="">
														<span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
													</label>
												</div>
											</th>
											<td style="width: 10%">������</td>	
											<td style="width: 15%">��ȣ��</td>
											<td style="width: 17%">khjfdsfa</td>
											<td style="width: 20%">542584612548</td>
											<td style="width: 20%">542584612548</td>
											<td style="width: 10%">54212548</td>
											<td style="width: 15%">54258461</td>
										</tr>
									
										
									</table>
								</div>
							</table>
						</div>
					</div>
				</div>
    
</div><!-- ���̺� -->

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
</nav><!-- ����¡ -->
  
  <div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">�˻� ����</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#contains">�̸�</a></li>
                      <li><a href="#its_equal">����</a></li>
                      <li><a href="#greather_than">����</a></li>
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
</div><!-- �˻����Է� -->




</body>
</html>