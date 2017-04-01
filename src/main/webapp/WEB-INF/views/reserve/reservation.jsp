<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



 
<!-- // jQuery 기본 js파일 --> 
<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet" href="/style/h_style/jquery-ui.css" type="text/css" /> 
<link rel="" href="/style/h_style/jquery-ui.css" type="text/css" /> 
<!-- toast 알림창 -->
<link rel="stylesheet" href="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.css" />
<script src="//code.jquery.com/jquery-1.6.3.min.js"></script>
<script src="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.js"></script>
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<script src="/style/h_style/angular.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=2ZKlolf32e3C26nU6SA4&amp;submodules=geocoder"></script>
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>


<script type="text/javascript">



</script>
<script type="text/javascript">

$(function() {
    $( "#Datepicker" ).datepicker({
    	 changeMonth: true, 
         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
       	 showButtonpANEL:false,
       
    	
  })
});



</script> 

<script type="text/javascript">

function gogo(mode){
	
	if(mode=='name'){
		var name = /^[가-힣]{2,4}$/;
		
		if(!name.test($('#reservename').val())){
			createToast('name');
		}
	}
	
	if(mode=='tel'){
		var tel = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		   
		if(!tel.test($('#reservetel').val())){
			createToast('tel');
		}
	}
	
	if(mode=='email'){
		var email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(!email.test($('#reserveemail').val())){
			createToast('email');
		}
	}
}

function createToast(t) {
	var toastOffset = $('#reservename').offset();
    
    $('.toast').css({"top": toastOffset.top, "left": toastOffset.left+330});
    
	$.toast.config.align = 'right';
    $.toast.config.width = 400;
    $.toast.options = {
            closeButton: false,
            progressBar: true,
            showMethod: 'slideDown',
            timeOut: 2000
        };
    

    switch (t) {
      case 'name':
        $.toast('<h4>알림!</h4> 이름을 정확히 입력해주세요.', {
          duration: 2000,
          type: 'danger'
        });
        return;
      case 'tel':
        $.toast('<h4>알림!</h4> 휴대폰 번호(000-0000-0000)를 정확히 입력해주세요.', {
          duration: 2000,
          type: 'info'
        });
        return;
      case 'email':
        $.toast('<h4>알림!</h4> 이메일을 정확히 입력해주세요.', {
       	  duration: 2000,
          type: 'success'
        });
        return;
    }
  }


</script>


<link rel="stylesheet" type="text/css" href="/style/h_style/reservation.css" />
<title>Insert title here</title>
</head>
<body>
<form id="reservationForm" method="post" class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email">
<input name="reservestore" type="hidden" value="파씨오네">
	<div id="wrap" class="wrap">
	
		<div id="container" class="container" >
			<div>
				<div class="breadcrumbs">
					<ul class="lst_breadcrumbs">
					
						
						<!---->
						<li class="item" ><span></span> <a href="/" > <span onclick="aw" >메인페이지</span>
						</a></li>
						<!---->
						<li class="item" ng-repeat="item in $ctrl.lists"><span
						
							>&nbsp;&gt;&nbsp;</span> <a > <span
								>예약하기</span>
						</a></li>
						<!---->
					</ul>
				</div>		
				<div class="wrap_inn">
				
				
					<div class="wrap_left">
				
						<div class="section_booking_simple">
				
						
				
							<div class="simple_time_selector large">
								<div class="simple_time_row">
									<strong class="tit">날짜</strong>
									
										
									<div class="select_simple_time">
										<div class="wrap_select" >
											<input type="text" class="sc"  name="reservedate" id="Datepicker" placeholder="날짜를 선택해주세요."> 
											<input type="hidden" value="${resDTO.restaurant.resaddress}"> 
										</div>
									</div>
									
								</div><!-- 날짜 -->
								
								
								<div class="simple_time_row">
									<strong class="tit">시간</strong>

									<div class="select_simple_time">
										<div class="wrap_select" >
										<select class="sc" class="sc"  name="reservetime" id="reservetime">
											  <option value="">시간을 선택해주세요.</option>
											  <option value="06:00 ~ 06:30">06:00 ~ 06:30</option>
											  <option value="06:30 ~ 07:00">06:30 ~ 07:00</option>
											  <option value="07:00 ~ 07:30">07:00 ~ 07:30</option>
											  <option value="07:30 ~ 08:00">07:30 ~ 08:00</option>
											  <option value="08:00 ~ 08:30">08:00 ~ 08:30</option>
											  <option value="08:30 ~ 09:00">08:30 ~ 09:00</option>  							  
											 </select>	
										</div>
									</div>
									
								</div><!-- 시간 -->
								
								<div class="simple_time_row">
									<strong class="tit">인원</strong>

									<div class="select_simple_time">
										<div class="wrap_select" >
										<select class="sc"  name="reservenumber" id="reservenumber">
											  <option value="">인원을 선택해주세요.</option>
											  <option value="2명">2명</option>
											  <option value="3명">3명</option>
											  <option value="4명">4명</option>
											  <option value="5명 이상">5명 이상</option>							  
											 </select>	
										</div>
									</div>
									
								</div><!-- 시간 -->
								
								<div class="simple_time_row">
									<strong class="tit">주소
									</strong>
									
									
									<div class="select_simple_time">
										<div class="wrap_select" >
										<input type="text" name="reserveaddress" id="reserveaddress" class="sc"  value="${resDTO.restaurant.resaddress}" readonly>
										
										 
										
										</div>
									</div> 
									
						
							
								</div><!-- 시간 -->
							
							
							
							</div>

							<div class="mapp" id="map">
									지도
									네이버 지도 API
		<script>
			var MARKER_SPRITE_POSITION = {
				"A0": [0, 0]
			};
			
			var mapOptions = {
				/* center: , */
			    zoom: 10,
			    zoomControl: true,
			    zoomControlOptions: {
			        position: naver.maps.Position.TOP_RIGHT
			    }
			};
			
			var map = new naver.maps.Map('map', mapOptions);
			
			map.setCursor('pointer');
			
			var markers = [],
			infoWindows = [];
			
			function searchAddressToCoordinate(address) {
			  	naver.maps.Service.geocode({
			        address: address
			    }, function(status, response) {
			        if (status === naver.maps.Service.Status.ERROR) {
			            return alert('주소를 더 자세히 입력해주세요.');
			        }// if
			        var item = response.result.items[0],
			        	point = new naver.maps.Point(item.point.x, item.point.y);
			        
			        var position = new naver.maps.LatLng(item.point.y, item.point.x);
			        
			        for (var key in MARKER_SPRITE_POSITION) {
			    	    var marker = new naver.maps.Marker({
			    	        map: map,
			    	        position: position,
			    	        title: key,
			    	        icon: {
			    				url: '/resources/images/min_image/marker.png',
			    				size: new naver.maps.Size(24, 37),
			    	            anchor: new naver.maps.Point(12, 37)
			    	        },
			    	        zIndex: 100
			    	    });
			    	    
			    	
			    	    var infoWindow = new naver.maps.InfoWindow({
			    	        content: '<div style="position:relative; margin:0 0; padding:0 0; border: 0px solid transparent; display: block; width: 330px; height: 135px;">'
			    	        			+'<div style="position:absolute; padding: 15px; ">'
			    	        			+'<img src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/47875_145576688554827.jpg?fit=around|105:105&amp;crop=105:105;*,*&amp;output-format=jpg&amp;output-quality=80">'
			    				        +'</div>'
			    				        +'<div style="position:absolute; margin-left:135px; margin-top:8px;">'
			    					        +'<span style="cursor: pointer; font-szie: 20px; font-weight: bold; ">라이포스트</span>&nbsp;&nbsp;'
			    					        +'<strong style="color: #FF792A; font-size: 20px;">4.6</strong>'
			    					        +'<p style="width:180px; color: #7A7A7A; font-size: 15px; margin-top:7px; overflow: hidden; text-overflow:ellipsis; white-space:nowrap;">이태원/한남동 - 브런치 / 버거 / 샌드위치</p>'
			    					        +'<p style=" margin-top:40px;">'
			    						        +'<img src="/resources/images/min_image/review.PNG">'
			    						        +'<em style="color: #7A7A7A; font-size: 16px">206</em>&nbsp;'
			    						        +'<img src="/resources/images/min_image/favorite.png">'
			    						        +'<em style="color: #7A7A7A; font-size: 16px">5693</em>'
			    					        +'</p>'
			    				        +'</div>'
			    			        +'</div>'
			    	    });
			    	
			    	    markers.push(marker);
			    	    infoWindows.push(infoWindow);
			    	}// for
			    	
			    	for (var i=0, ii=markers.length; i<ii; i++) {
			    	    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
			    	}
			        
			        map.setCenter(point);
			    });
			}// function
			
			$(document).ready(function(){
				$('#reserveaddress').keypress(function(e){
					if(e.which === 13) {
						var ds = $('#reserveaddress').val();
						searchAddressToCoordinate(ds);
					}
				});
			})
			
			naver.maps.onJSContentLoaded = searchAddressToCoordinate('서울특별시 중구 태평로1가 31');
			
			function getClickHandler(seq) { // 마커를 클릭 했을 때
			    return function(e) {
			        var marker = markers[seq],
			            infoWindow = infoWindows[seq];
			
			        if (infoWindow.getMap()) {
			            infoWindow.close();
			        } else {
			            infoWindow.open(map, marker);
			        }// if
			    }// return function
			}// getClickHandler
			</script>
								</div> 

							</div>
					</div>
						
					<div class="wrap_right">
						<div class="section_booking_form">
						
							
							<h3 class="out_tit">
							
							
								<span> <span >예약</span>자
									정보
								</span> <span class="help_txt"> <i class="spr_book ico_nessasary" aria-hidden="true"></i> <span>필수입력</span>
								</span>
							</h3>
							<div class="booking_form_wrap">
										
							
							
								
										<div class="inline_form">
										<label class="label" for="resName" > <span >이름</span> 
										</label>
										
										
										<div class="inline_control">
											<sec:authorize access="isAuthenticated()">
												<input type="text" name="reservename" id="reservename" class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"  maxlength="10"  value="<sec:authentication property="principal.fullName"/>" onchange="gogo('name')">
											</sec:authorize>
										</div>
									</div> <!-- resName -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>연락처</span> <!----></label>
										<div class="inline_control">
											<input type="text" name="reservetel" id="reservetel" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty"  maxlength="50" onchange="gogo('tel')">
										</div>
									</div><!-- resTel -->
									
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm" >
										<label class="label" > <span>이메일</span> <!----></label>
										<div class="inline_control">
											<sec:authorize access="isAuthenticated()">
												<input type="text" name="reserveemail" id="reserveemail" value="<sec:authentication property="principal.email"/>" class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty"  maxlength="50" onchange="gogo('email')">
											</sec:authorize>
										</div>
									</div><!-- resRest -->
									
									
									<!---->
									<!---->
									<div class="inline_form" style="border:1px solid red;">
										<label class="label" for="message">요청사항</label>
										<div class="inline_control">
											<textarea name="reserverequest" id="reserverequest" cols="30" rows="10"
												class="textarea text ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength"
												maxlength="500" placeholder="업체에 요청하실 내용을 적어주세요."></textarea>
										</div>
									</div>
									<!---->
								
							</div>
							
						</div>

							<div class="section_booking_agreement">
								<div class="agreement all">
									<input type="checkbox" id="chk3" name="chk_agree"
										class="chk_agree ng-pristine ng-untouched ng-valid ng-empty"
										ng-model="$ctrl.isRuleAgree" data-tst_agreement="0"
										aria-invalid="false"> <label for="chk3"
										class="label chk_txt" onclick="">이용자 약관 전체동의</label>
									<p class="agreement_nessasary">
										<span class="help_txt">필수동의</span>
									</p>
								</div>
								<!---->
								<div class="agreement"
									ng-class="{open : $ctrl.isOpenAgreement1}"
									ng-if="$ctrl.isShowUseAgreement()" style="">
									<span class="spr_book ico_chk_before" aria-hidden="true"></span>
									<span class="chk_txt">이용약관 고지 및 동의</span> <a href="#"
										class="btn_agreement"
										ng-click="$event.preventDefault(); $ctrl.isOpenAgreement1 = !$ctrl.isOpenAgreement1">
										<span class="under_line">보기</span> <i class="fn fn-down2"
										aria-hidden="true"
										ng-class="{'fn-up2' : $ctrl.isOpenAgreement1, 'fn-down2' : !$ctrl.isOpenAgreement1 }"
										style=""></i>
									</a>
								
								</div>
								<!---->
								<div class="agreement"
									ng-class="{open : $ctrl.isOpenAgreement2}">
									<span class="spr_book ico_chk_before" aria-hidden="true"></span>
									<span class="chk_txt">개인정보 수집 및 이용 동의</span> <a href="#"
										class="btn_agreement"
										ng-click="$event.preventDefault(); $ctrl.isOpenAgreement2 = !$ctrl.isOpenAgreement2">
										<span class="under_line">보기</span> <i class="fn fn-down2"
										aria-hidden="true"
										ng-class="{'fn-up2' : $ctrl.isOpenAgreement2, 'fn-down2' : !$ctrl.isOpenAgreement2 }"></i>
									</a>
									
								</div>
								<div class="agreement last"
									ng-class="{open : $ctrl.isOpenAgreement3}">
									<span class="spr_book ico_chk_before" aria-hidden="true"></span>
									<span class="chk_txt">개인정보 제3자 제공 동의</span> <a href="#"
										class="btn_agreement"
										ng-click="$event.preventDefault(); $ctrl.isOpenAgreement3 = !$ctrl.isOpenAgreement3">
										<span class="under_line">보기</span> <i class="fn fn-down2"
										aria-hidden="true"
										ng-class="{'fn-up2' : $ctrl.isOpenAgreement3, 'fn-down2' : !$ctrl.isOpenAgreement3 }"></i>
									</a>
									<div class="useragreement_details custom_details_wrap">
										<!---->
										<!---->
										
									</div>
								</div>
							</div>


							<!---->
				
						<bk-submit >
						<!----> <!---->
							<div class="bottom_btn disable">
								<button type="button" class="btn" onclick="sub()">
									<!---->
									<!---->
									<i class="fn fn-nbooking-calender2"></i>
									<!---->
									<span>예약신청하기</span>
								</button>
							</div>
							<!----> <!----> <!----> <bk-notify-popup
							copny-info="$ctrl.copnyInfo"
							booking-result-data="$ctrl.bookingResultData">
						<!----> </bk-notify-popup> </bk-submit>
					</div>
				</div>
			</div>
			
		</div>

	</div>
	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
	



<script>
	$(document).ready(function(){
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='csrf_header']").attr("content");
		$.ajax({
			url: '/accounts/additinfo/'+<sec:authentication property='principal.id'/>,
			type:'GET',
			dataType:'json',
			contentType: "application/json; charset=UTF-8",
			beforeSend: function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success: function(data, status, xhr){
				$('#reservetel').val(data.tel);
			}
		})
	})
</script>

<script type="text/javascript">
function sub(){
	
	var Datepicker  = $('#Datepicker').val();
	var reservetime = $('#reservetime').val();
	var reservenumber = $('#reservenumber').val();
	var reserveaddress = $('#reserveaddress').val();
	var reservename = $('#reservename').val();
	var reservetel = $('#reservetel').val();
	var reserveemail = $('#reserveemail').val();
	var reserverequest = $('#reserverequest').val();
	
	
	$('#reservationForm').attr('action', '/reservation/'+Datepicker
														+reservetime
														+reservenumber
														+reserveaddress
														+reservename
														+reservetel
														+reserveemail
														+reserverequest);
	
	
	$('#reservationForm').submit(); 
	
	
}

</script>
	
</body>
</html>