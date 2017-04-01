<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/style/h_style/storejoin.css" />

<script type="text/javascript">
function aa(){
	window.opener.name = "parentPage"; // �θ�â�� �̸� ����
    document.storejoin.target = "parentPage"; // Ÿ���� �θ�â���� ����
    document.storejoin.submit();
    self.close();
}
</script>
</head>
<body>

<form name="storejoin" method="post" class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email" action="/manager/restaurantUpdate">
<input type="hidden" name="resno" value="${restaurant.resno }"/>


<div id="container">

<div id="header"><h1 align="center" ><br><br><br>������ ��û     </h1></div>

<div id="content">

	<div class="wrap_right">
						<div class="section_booking_form">
							
							
							
							<bk-input-form >
							<h3 class="out_tit">
							
							
								<span> <span >����</span>��
									����
								</span> <span class="help_txt"> <i class="spr_book ico_nessasary" aria-hidden="true"></i> 
								</span>
							</h3>
							
							
							<div class="booking_form_wrap">
							
									<div class="inline_form">
										<label class="label" for="resname" > <span >ȸ��ID</span> 
										</label>
											
										<div class="inline_control">
										
											<input type="text" name="bossemail" id="bossemail" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="50" value="${restaurant.bossemail}" readonly  />
											
										</div>
									</div> <!-- resName -->
								
									<div class="inline_form">
										<label class="label" for="resname" > <span >�̸�</span> 
										</label>
										
										
										<div class="inline_control">
											<input type="text" name="resname" id="resname" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="17" value="${restaurant.resname}"   />
										</div>
									</div> <!-- resName -->
									
									
									
									<div class="inline_form">
										<label class="label" > <span>�ּ�</span> <!---->
										
										<!---->
										</label>
										<div class="inline_control">
											<input type="text" name="resaddress" id="resaddress" class="tel text ng-pristine ng-untouched ng-valid ng-not-empty"  value="${restaurant.resaddress}"  >
										</div>
									</div><!-- resAddress -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>����ó</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="restel" id="restel" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.restel}" maxlength="50" >
										</div>
									</div><!-- resTel -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>��������</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="reskind" id="reskind" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.reskind}" maxlength="30" >
										</div>
									</div><!-- resKind -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>��հ��ݴ�</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resprice" id="resprice" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.resprice}" maxlength="50" >
										</div>
									</div><!-- resPrice -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>���� ����</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resparking" id="resparking" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.resparking}" maxlength="50" >
										</div>
									</div><!-- resParking -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>���� �ð�</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="ressaletime" id="ressaletime" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.ressaletime}" maxlength="50" >
										</div>
									</div><!-- resSaletime -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>���� �ð�</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resrest" id="resrest" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.resrest}" maxlength="50" >
										</div>
									</div><!-- resRest -->
															
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>����</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resholiday" id="resholiday" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" value="${restaurant.resholiday}" maxlength="50" >
										</div>
									</div><!-- resRest -->
									
									<input type="button" value="�Ϸ�" onclick="aa()">
								
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<!---->
									<br>

							</div>
							</bk-input-form>
						</div><!-- section_booking_form -->
						</div>
</div><!-- content -->
</div><!-- container -->
</form>
</body>
</html>