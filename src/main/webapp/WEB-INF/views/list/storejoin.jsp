<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function reserve(){
	 alert(" 님아 예약됬음");

	
/* 	if(document.storejoin.subject.value=="")
		alert("제목을 ");
	else if(document.storejoin.content.value=="")
		alert("내용을 ");
	else
		
		document.storejoin.submit();
	 */
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/style/h_style/storejoin.css" />
</head>
<body>
<div id="container">

<div id="header"><h1 align="center" ><br><br><br>가맹점 신청     </h1></div>

<div id="content">

	<div class="wrap_right">
						<div class="section_booking_form">
							
							
							
							<bk-input-form >
							<h3 class="out_tit">
							
							
								<span> <span ng-bind="$ctrl.wordSet.BOOKING_TYPE">예약</span>자
									정보
								</span> <span class="help_txt"> <i class="spr_book ico_nessasary" aria-hidden="true"></i> <span>필수입력</span>
								</span>
							</h3>
							
							
							<div class="booking_form_wrap">
								<form class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email">
									<div class="inline_form">
										<label class="label" for="resName" > <span ng-bind="$ctrl.wordSet.BOOKER">이름</span> 
										</label>
										
										
										<div class="inline_control">
											<input type="text" name="resName" id="resName" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="17" placeholder="장명영"  >
										</div>
									</div> <!-- resName -->
									
									
									
									<div class="inline_form">
										<label class="label" > <span>주소</span> <!---->
										
										<!---->
										</label>
										<div class="inline_control">
											<input type="text" name="resAddress" id="resAddress" class="tel text ng-pristine ng-untouched ng-valid ng-not-empty"  placeholder="서울시 성북구 정릉3동 아이티뱅크" >
										</div>
									</div><!-- resAddress -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>전화번호</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resTel" id="resTel" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="01046647852" maxlength="50">
										</div>
									</div><!-- resTel -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>음식종류</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resKind" id="resKind" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="한식" maxlength="30">
										</div>
									</div><!-- resKind -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>평균가격대</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resPrice" id="resPrice" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="100,000원" maxlength="50">
										</div>
									</div><!-- resPrice -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>주차 여부</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resParking" id="resParking" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="발렛파킹" maxlength="50">
										</div>
									</div><!-- resParking -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>영업 시간</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resSaletime" id="resSaletime" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="09:00~22:00" maxlength="50">
										</div>
									</div><!-- resSaletime -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>쉬는 시간</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resRest" id="resRest" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="15:00~18:00" maxlength="50">
										</div>
									</div><!-- resRest -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>휴일</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resHoliday" id="resHoliday" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="매주 월요일" maxlength="50">
										</div>
									</div><!-- resRest -->
									
									
									<div class="inline_form" >
										<label class="label" for="message">요청 사항</label>
										<div class="inline_control">
											<textarea name="textarea" id="message" cols="30" rows="10" class="textarea text ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" maxlength="500" placeholder="업체에 요청하실 내용을 적어주세요." ng-model="$ctrl.booker.reqMsg" ng-class="{'text_bold': isFocusReqMsg }" ng-focus="isFocusReqMsg = true;" data-tst_req_msg_input_textarea="0" aria-invalid="false"></textarea>
										</div>
									</div>
									<!---->
								</form>
							</div>
							
							
							
							</bk-input-form>
						</div><!-- section_booking_form -->
									
			
					<div  class="bottom_btn disable" >
							<button type="button" class="btn" onclick="reserve()" >
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
	
</body>
</html>