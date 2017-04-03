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
var check = 'x';
window.onload = function(){
	if('${checkid}'==1){
		alert("아이디가 정확합니다");
		check ='y';
	}
	else if('${checkid}'==2){
		alert("아이디를 잘못입력하였습니다");
	}
	else if('${checkid}'==3){
		alert("해당 아이디로 등록된 맛집이 있습니다");
	}
}; 


function checkId(){
	 var email = document.getElementById("bossemail").value;
	 
   /* alert(email);
	email.replace( / /g, "");
	 alert(email); */
	   // 위와 같이 모든 공백을 제거
	 if(email==""){
		 alert("아이디를 입력해주세요.");
		 return;
	 }
	 
	location.href="/manager/restaurantAgreeDetailCheckId?id="+email;
	 
}

function complete(){
	if(check=='x'){
		alert('아이디 체크를 하세요');
	}
	else if(check=='y'){
		window.opener.name = "parentPage"; // 부모창의 이름 설정
	    document.storejoin.target = "parentPage"; // 타켓을 부모창으로 설정
	    storejoin.submit();
	    self.close();
	}
}

</script>


</head>
<body>

<form name="storejoin" method="post"  class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email" action="restaurantAgreeOk">

<div id="container">

<div id="header"><h1 align="center" ><br><br><br>가맹점 신청     </h1></div>

<div id="content">

	<div class="wrap_right">
						<div class="section_booking_form">
							
							
							
							<bk-input-form >
							<h3 class="out_tit">
							
							
								<span> <span >예약</span>자
									정보
								</span> <span class="help_txt"> <i class="spr_book ico_nessasary" aria-hidden="true"></i> 
								</span>
							</h3>
							
							
							<div class="booking_form_wrap">
							
									<div class="inline_form">
										<label class="label" for="resname" > <span >회원ID</span> 
										</label>
											
										<div class="inline_control">
										
											<input type="button" value="ID체크" onclick="checkId()">
											
											<c:if test="${checkokId==null}">
												<input type="text" name="bossemail" id="bossemail" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="50" placeholder="회원이름입력"   />
											</c:if>
											<c:if test="${checkokId!=null}">
												<input type="text" name="bossemail" id="bossemail" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="50" value="${checkokId}" readonly  />
											</c:if>
										</div>
									</div> <!-- resName -->
								
									<div class="inline_form">
										<label class="label" for="resname" > <span >이름</span> 
										</label>
										
										
										<div class="inline_control">
											<input type="text" name="resname" id="resname" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="17" placeholder="가게이름입력"   />
										</div>
									</div> <!-- resName -->
									
									
									
									<div class="inline_form">
										<label class="label" > <span>주소</span> <!---->
										
										<!---->
										</label>
										<div class="inline_control">
											<input type="text" name="resaddress" id="resaddress" class="tel text ng-pristine ng-untouched ng-valid ng-not-empty"  placeholder="서울시 성북구 정릉3동 아이티뱅크"  >
										</div>
									</div><!-- resAddress -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>연락처</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="restel" id="restel" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="112" maxlength="50" >
										</div>
									</div><!-- resTel -->
									
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>음식종류</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="reskind" id="reskind" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="한식" maxlength="30" >
										</div>
									</div><!-- resKind -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>평균가격대</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resprice" id="resprice" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="100,000원" maxlength="50" >
										</div>
									</div><!-- resPrice -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>주차 여부</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resparking" id="resparking" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="발렛파킹" maxlength="50" >
										</div>
									</div><!-- resParking -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>영업 시간</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="ressaletime" id="ressaletime" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="09:00~22:00" maxlength="50" >
										</div>
									</div><!-- resSaletime -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>쉬는 시간</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resrest" id="resrest" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="15:00~18:00" maxlength="50" >
										</div>
									</div><!-- resRest -->
															
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>휴일</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="resholiday" id="resholiday" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty" placeholder="매주 월요일" maxlength="50" >
										</div>
									</div><!-- resRest -->
									
									<input type="button" value="완료" onclick="complete()">
								
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