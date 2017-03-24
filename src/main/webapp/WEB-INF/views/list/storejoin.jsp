<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
function check(){
	if(document.storejoin.resname.value=="")
		alert("이름을 입력하세요 ");
	else if(document.storejoin.resaddress.value=="")
		alert("주소를 입력하세요");
	else if(document.storejoin.restel.value=="")
		alert("전화번호를 입력하세요");
	else if(document.storejoin.reskind.value=="")
		alert("음식종류를 입력하세요");
	else if(document.storejoin.resprice.value=="")
		alert("평균가격을 입력하세요");
	else if(document.storejoin.resparking.value=="")
		alert("주차가능여부를 입력하세요");
	else if(document.storejoin.ressaletime.value=="")
		alert("영업시간을 입력하세요 ");
	else if(document.storejoin.resrest.value=="")
		alert("쉬는시간을 입력하세요");
	else if(document.storejoin.resholiday.value=="")
		alert("휴일을 입력하세요");

	else {
		 document.storejoin.submit();
			 
	}
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/style/h_style/storejoin.css" />
</head>
<body>
<form name="storejoin" method="post" action="/storejoin"  class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email" >
<input type="hidden" name="bossemail" value="<sec:authentication property='principal.email'/>">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<div id="container">

<div id="header"><h1 align="center" ><br><br><br>가맹점 신청     </h1></div>

<div id="content">

	<div class="wrap_right">
						<div class="section_booking_form">
							
							
							
							<bk-input-form >
							<h3 class="out_tit">
							
							
								<span> <span >예약</span>자
									정보
								</span> <span class="help_txt"> <i class="spr_book ico_nessasary" aria-hidden="true"></i> <span>필수입력</span>
								</span>
							</h3>
							
							
							<div class="booking_form_wrap">
								
									<div class="inline_form">
										<label class="label" for="resname" > <span >이름</span> 
										</label>
										
										
										<div class="inline_control">
											<input type="text" name="resname" id="resname" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="17" placeholder="가게이름입력"  >
										</div>
									</div> <!-- resName -->
									
									
									
									<div class="inline_form">
										<label class="label" > <span>주소</span> <!---->
										
										<!---->
										</label>
										<div class="inline_control">
											<input type="text" name="resaddress" id="resaddress" class="tel text ng-pristine ng-untouched ng-valid ng-not-empty"  placeholder="서울시 성북구 정릉3동 아이티뱅크" >
										</div>
									</div><!-- resAddress -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>연락처</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="restel" id="restel" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="01046647852" maxlength="50">
										</div>
									</div><!-- resTel -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>음식종류</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="reskind" id="reskind" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="한식" maxlength="30">
										</div>
									</div><!-- resKind -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>평균가격대</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resprice" id="resprice" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="100,000원" maxlength="50">
										</div>
									</div><!-- resPrice -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>주차 여부</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resparking" id="resparking" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="발렛파킹" maxlength="50">
										</div>
									</div><!-- resParking -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>영업 시간</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="ressaletime" id="ressaletime" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="09:00~22:00" maxlength="50">
										</div>
									</div><!-- resSaletime -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>쉬는 시간</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resrest" id="resrest" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="15:00~18:00" maxlength="50">
										</div>
									</div><!-- resRest -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>휴일</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resholiday" id="resholiday" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="매주 월요일" maxlength="50">
										</div>
									</div><!-- resRest -->
									
									
									<div class="inline_form" >
										<label class="label" for="request">요청 사항</label>
										<div class="inline_control">
											<textarea name="request" id="request" cols="30" rows="10" class="textarea text ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" maxlength="300" placeholder="업체에 요청하실 내용을 적어주세요." ></textarea>
										</div>
									</div>
									<!---->
							
							</div>
							
							
							
							</bk-input-form>
						</div><!-- section_booking_form -->
									
			
					<div  class="bottom_btn disable" >
							<button type="button" class="btn" onclick="check()" >
								<!---->
								<!---->
								<i " class="fn fn-nbooking-calender2" ></i>
								<!---->
								<span >예약 신청하기</span>
							</button>
						</div>
						
					</div>
	

</div><!-- content -->




</div><!-- container -->
</form>
</body>
</html>