<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/style/h_style/reservation.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" class="wrap"
		ng-class="{ home : '/' === $ctrl.location.path(), adminbookinglogin : $ctrl.location.path().match('/booked/bind') }">
	
		<div id="container" class="container" ui-view="content">
			<bk-old-restaurant resoc-info="$resolve.resocInfo"
				copny-info="$resolve.copnyInfo" prev-state="$resolve.prevState">
			<div>
				<bk-breadcrumb lists="$ctrl.breadCrumb">
				<div class="breadcrumbs">
					<ul class="lst_breadcrumbs">
						<!---->
						<li ng-if="$ctrl.lists[0]" class="item"><a
							ng-href="/#/4/booking/svc/17042" class="lnk_page" title="홈"
							href="/#/4/booking/svc/17042"> <i class="fn fn-home1"> <span
									class="sr_only">홈</span>
							</i>
						</a></li>
						<!---->
						<!---->
						<li class="item" ng-repeat="item in $ctrl.lists"><span
							ng-bind="($index === 0 ? '' : '&nbsp;>&nbsp;')"
							aria-hidden="true"></span> <a ng-href="/#/4/booking/svc/17042"
							ng-click="$ctrl.fItemClick($event,item)" class="lnk_page"
							ng-class="{ active : $index >= $ctrl.lists.length - 1 }"
							href="/#/4/booking/svc/17042"> <span ng-bind="item.text">루이쌍끄</span>
						</a></li>
						<!---->
						<li class="item" ng-repeat="item in $ctrl.lists"><span
							ng-bind="($index === 0 ? '' : '&nbsp;>&nbsp;')"
							aria-hidden="true">&nbsp;&gt;&nbsp;</span> <a ng-href=""
							ng-click="$ctrl.fItemClick($event,item)" class="lnk_page active"
							ng-class="{ active : $index >= $ctrl.lists.length - 1 }"> <span
								ng-bind="item.text">예약하기</span>
						</a></li>
						<!---->
					</ul>
				</div>
				</bk-breadcrumb>
				<div class="wrap_inn">
					<div class="wrap_left">
				
						<div class="section_booking_simple">
							<bk-content-header copny-info="$ctrl.copnyInfo"
								resoc-info="$ctrl.resocInfo"
								booking-date-bar-text="$ctrl.infoText.bookingDateBarText"
								booking-start-date="$ctrl.booking.bookingStartDate">
							<div class="box_service_info box_service_info_s">
								<div class="service_info service_info_s">
									<h2 class="service_info_tit" ng-bind="$ctrl.previewTitle">루이쌍끄</h2>
									<!---->
									<!---->
								</div>
							</div>
							</bk-content-header>
							<bk-booking-calendar
								calendar-change="$ctrl.onCalendarChange(calendarElement, calendarInfo)"
								calendar-type="1" copny-info="$ctrl.copnyInfo"
								booking-start-date="$ctrl.booking.bookingStartDate"
								booking-end-date="$ctrl.booking.bookingEndDate"
								calendar-data-draw="$ctrl.onCalendarDataDraw(elCalendar, calendarInfo, htCalendarData)"
								calendar="$ctrl.calendar" resoc-info="$ctrl.resocInfo"
								qty="$ctrl.qty"
								calendar-click="$ctrl.onCalendarDateClick(e, calendarElement, targetElement, dateInfo)"><!---->
							<bk-calendar ng-if="$ctrl.calendar.currentDate"
								base-date="$ctrl.calendar.currentDate"
								data="$ctrl.calendar.data" options="$ctrl.calendar.options"
								on-click="$ctrl.onCalendarClick(e, elCalendar, elTarget, oDateInfo)"
								on-change="$ctrl.onCalendarChange(calendarElement, calendarInfo)"
								on-draw="$ctrl.calendarDraw"
								on-data-draw="$ctrl.onCalendarDataDraw(elCalendar, calendarInfo, htCalendarData)"
								class="">
							<div id="calendar" class="calendar">
								<!---->
								<!---->
								<div class="tit_calendar">
									<a href="#" class="calendar-btn calendar-btn-prev-mon"
										ng-class="{ 'off' : $ctrl.isOffPrevMonthBtn }"
										ng-click="$ctrl.fClickPrevMonthBtnClick($event)" title="이전달">
										<i class="fn fn-backward2" aria-hidden="true"></i>
									</a> <strong class="calendar-title"> <span
										ng-bind="$ctrl.year">2017</span>.<span ng-bind="$ctrl.month">3</span>
									</strong> <a href="#" class="calendar-btn calendar-btn-next-mon"
										ng-click="$ctrl.fClickNextMonthBtnClick($event)" title="다음달">
										<i class="fn fn-forward2" aria-hidden="true"></i>
									</a>
								</div>
								<table class="tb_calendar">
									<caption>달력 테이블</caption>
									<thead class="tb_header">
										<tr>
											<th>SUN</th>
											<th>MON</th>
											<th>TUE</th>
											<th>WED</th>
											<th>THU</th>
											<th>FRI</th>
											<th>SAT</th>
										</tr>
									</thead>
									<!---->
									<tbody class="tb_body" ng-if="!$ctrl.options.isHtmlAppend">
										<!---->
										<tr ng-repeat="aRow in $ctrl.aCalendarRowData">
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="0" data-cal-datetext="2017-02-26"
												data-cal-year="2017" data-cal-month="2" data-cal-day="26"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sun calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">26</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="1" data-cal-datetext="2017-02-27"
												data-cal-year="2017" data-cal-month="2" data-cal-day="27"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">27</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="2" data-cal-datetext="2017-02-28"
												data-cal-year="2017" data-cal-month="2" data-cal-day="28"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">28</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="3" data-cal-datetext="2017-03-01"
												data-cal-year="2017" data-cal-month="3" data-cal-day="1"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable calendar-dayoff"
												style=""><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">1</span> <span class="txt offday"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"
													style="">삼일절</span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="4" data-cal-datetext="2017-03-02"
												data-cal-year="2017" data-cal-month="3" data-cal-day="2"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">2</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="5" data-cal-datetext="2017-03-03"
												data-cal-year="2017" data-cal-month="3" data-cal-day="3"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">3</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="6" data-cal-datetext="2017-03-04"
												data-cal-year="2017" data-cal-month="3" data-cal-day="4"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sat calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">4</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
										</tr>
										<!---->
										<tr ng-repeat="aRow in $ctrl.aCalendarRowData">
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="7" data-cal-datetext="2017-03-05"
												data-cal-year="2017" data-cal-month="3" data-cal-day="5"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sun calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">5</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="8" data-cal-datetext="2017-03-06"
												data-cal-year="2017" data-cal-month="3" data-cal-day="6"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">6</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="9" data-cal-datetext="2017-03-07"
												data-cal-year="2017" data-cal-month="3" data-cal-day="7"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">7</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="10" data-cal-datetext="2017-03-08"
												data-cal-year="2017" data-cal-month="3" data-cal-day="8"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">8</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="11" data-cal-datetext="2017-03-09"
												data-cal-year="2017" data-cal-month="3" data-cal-day="9"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">9</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="12" data-cal-datetext="2017-03-10"
												data-cal-year="2017" data-cal-month="3" data-cal-day="10"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">10</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="13" data-cal-datetext="2017-03-11"
												data-cal-year="2017" data-cal-month="3" data-cal-day="11"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sat calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">11</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
										</tr>
										<!---->
										<tr ng-repeat="aRow in $ctrl.aCalendarRowData">
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="14" data-cal-datetext="2017-03-12"
												data-cal-year="2017" data-cal-month="3" data-cal-day="12"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sun calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">12</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="15" data-cal-datetext="2017-03-13"
												data-cal-year="2017" data-cal-month="3" data-cal-day="13"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">13</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="16" data-cal-datetext="2017-03-14"
												data-cal-year="2017" data-cal-month="3" data-cal-day="14"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">14</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="17" data-cal-datetext="2017-03-15"
												data-cal-year="2017" data-cal-month="3" data-cal-day="15"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">15</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="18" data-cal-datetext="2017-03-16"
												data-cal-year="2017" data-cal-month="3" data-cal-day="16"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">16</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="19" data-cal-datetext="2017-03-17"
												data-cal-year="2017" data-cal-month="3" data-cal-day="17"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-unselectable"><a href="#"
												class="calendar-date" ng-click="$event.preventDefault();">
													<span class="num" ng-bind="oDate.day">17</span> <span
													class="txt" ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="20" data-cal-datetext="2017-03-18"
												data-cal-year="2017" data-cal-month="3" data-cal-day="18"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sat calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">18</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
										</tr>
										<!---->
										<tr ng-repeat="aRow in $ctrl.aCalendarRowData">
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="21" data-cal-datetext="2017-03-19"
												data-cal-year="2017" data-cal-month="3" data-cal-day="19"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sun calendar-unselectable">
												<a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">19</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a>
											</td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="22" data-cal-datetext="2017-03-20"
												data-cal-year="2017" data-cal-month="3" data-cal-day="20"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-today calendar-unselectable"
												style=""><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">20</span> <span class="txt today"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text">오늘</span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="23" data-cal-datetext="2017-03-21"
												data-cal-year="2017" data-cal-month="3" data-cal-day="21"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="start-day calendar-selected"><a
												href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">21</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="24" data-cal-datetext="2017-03-22"
												data-cal-year="2017" data-cal-month="3" data-cal-day="22"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">22</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="25" data-cal-datetext="2017-03-23"
												data-cal-year="2017" data-cal-month="3" data-cal-day="23"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">23</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="26" data-cal-datetext="2017-03-24"
												data-cal-year="2017" data-cal-month="3" data-cal-day="24"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">24</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="27" data-cal-datetext="2017-03-25"
												data-cal-year="2017" data-cal-month="3" data-cal-day="25"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sat calendar-unselectable"
												style=""><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">25</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
										</tr>
										<!---->
										<tr ng-repeat="aRow in $ctrl.aCalendarRowData">
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="28" data-cal-datetext="2017-03-26"
												data-cal-year="2017" data-cal-month="3" data-cal-day="26"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sun calendar-unselectable"
												style=""><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">26</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="29" data-cal-datetext="2017-03-27"
												data-cal-year="2017" data-cal-month="3" data-cal-day="27"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">27</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="30" data-cal-datetext="2017-03-28"
												data-cal-year="2017" data-cal-month="3" data-cal-day="28"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">28</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="31" data-cal-datetext="2017-03-29"
												data-cal-year="2017" data-cal-month="3" data-cal-day="29"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">29</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="32" data-cal-datetext="2017-03-30"
												data-cal-year="2017" data-cal-month="3" data-cal-day="30"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">30</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="33" data-cal-datetext="2017-03-31"
												data-cal-year="2017" data-cal-month="3" data-cal-day="31"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0"><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">31</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
											<td ng-repeat="oDate in aRow" ng-class="oDate.className"
												data-cal-index="34" data-cal-datetext="2017-04-01"
												data-cal-year="2017" data-cal-month="4" data-cal-day="1"
												ng-click="$ctrl.fCalendarDateClick($event);" role="button"
												tabindex="0" class="calendar-sat calendar-unselectable"
												style=""><a href="#" class="calendar-date"
												ng-click="$event.preventDefault();"> <span class="num"
													ng-bind="oDate.day">1</span> <span class="txt"
													ng-class="oDate.textClassName"
													ng-bind="oDate.userText ? oDate.userText : oDate.text"></span>
											</a></td>
											<!---->
										</tr>
										<!---->
									</tbody>
									<!---->
									<!---->
								</table>
							</div>
							</bk-calendar><!----> </bk-booking-calendar>
							<div class="simple_time_selector large">
								<div class="simple_time_row text_row">
									<strong class="tit">날짜</strong>
									<p class="simple_day"
										ng-bind="$ctrl.booking.bookingStartDate ? $ctrl.booking.bookingStartDate.format('YYYY.M.D.(ddd)') : '날짜를 선택해 주세요'">2017.3.21.(화)</p>
								</div>
								<div class="simple_time_row">
									<strong class="tit">시간</strong>
									<bk-simple-selector
										selected-index="$ctrl.booking.timeSelect.index" type="time"
										name="시간을 선택해 주세요" copny-info="$ctrl.copnyInfo"
										booking-start-date="$ctrl.booking.bookingStartDate"
										data="$ctrl.booking.timeSelect.data"
										on-select="$ctrl.onSelectTime(index)">
									<div class="select_simple_time">
										<div class="wrap_select" ng-class="{'open' : $ctrl.isOpen}">
											<select title="시간을 선택해 주세요" name="시간을 선택해 주세요"
												class="select ng-pristine ng-untouched ng-valid ng-empty"
												ng-model="$ctrl.selectedIndex" aria-invalid="false"><option
													value="? undefined:undefined ?" selected="selected"></option>
												<!---->
												<option value="0" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													06:00</option>
												<!---->
												<option value="1" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													06:15</option>
												<!---->
												<option value="2" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													06:30</option>
												<!---->
												<option value="3" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													06:45</option>
												<!---->
												<option value="4" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													07:00</option>
												<!---->
												<option value="5" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													07:15</option>
												<!---->
												<option value="6" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													07:30</option>
												<!---->
												<option value="7" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													07:45</option>
												<!---->
												<option value="8" ng-repeat="token in $ctrl.data"
													ng-bind="token.name"
													ng-selected="$ctrl.selectedIndex == $index" class="">오후
													08:00</option>
												<!---->
											</select>
											<div class="select_label" aria-hidden="true"
												ng-click="$ctrl.open($event);"
												ng-class="{ active : $ctrl.selectedIndex !== $index}"
												data-tst_select_box_click="0" role="button" tabindex="0">
												<span
													ng-bind="$ctrl.data[$ctrl.selectedIndex] ? $ctrl.data[$ctrl.selectedIndex].name : $ctrl.name">시간을
													선택해 주세요</span> <i class="fn fn-down2" aria-hidden="true"></i>
											</div>
											<div class="select_layer" aria-hidden="true">
												<div class="wrap_lst_select">
													<ul class="lst_select">
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 06:00</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 06:15</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 06:30</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 06:45</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 07:00</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 07:15</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 07:30</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 07:45</span>
														</li>
														<!---->
														<li class="item" unselectable="on"
															ng-class="{ over : token.isMouseOver, selected : $ctrl.selectedIndex == $index}"
															ng-repeat="token in $ctrl.data"
															ng-click="$ctrl.onItemClick($event, $index)"
															ng-mouseover="token.isMouseOver = true;"
															ng-mouseleave="token.isMouseOver = false;"
															data-tst_select_list_click="0" role="button" tabindex="0">
															<span ng-bind="token.name">오후 08:00</span>
														</li>
														<!---->
													</ul>
												</div>
											</div>
										</div>
									</div>
									</bk-simple-selector>
								</div>
								<div class="simple_time_row">
									<strong class="tit">인원</strong>
									<bk-simple-selector
										selected-index="$ctrl.booking.cntSelect.index" type="person"
										name="인원을 선택해 주세요" copny-info="$ctrl.copnyInfo"
										booking-start-date="$ctrl.booking.bookingStartDate"
										time-index="$ctrl.booking.timeSelect.index"
										data="$ctrl.booking.cntSelect.data"
										on-select="$ctrl.onSelectCnt(index)">
									<div class="select_simple_time">
										<div class="wrap_select" ng-class="{'open' : $ctrl.isOpen}">
											<select title="인원을 선택해 주세요" name="인원을 선택해 주세요"
												class="select ng-pristine ng-untouched ng-valid ng-empty"
												ng-model="$ctrl.selectedIndex" aria-invalid="false"><option
													value="? undefined:undefined ?" selected="selected"></option>
												<!---->
											</select>
											<div class="select_label" aria-hidden="true"
												ng-click="$ctrl.open($event);"
												ng-class="{ active : $ctrl.selectedIndex !== $index}"
												data-tst_select_box_click="0" role="button" tabindex="0">
												<span
													ng-bind="$ctrl.data[$ctrl.selectedIndex] ? $ctrl.data[$ctrl.selectedIndex].name : $ctrl.name">인원을
													선택해 주세요</span> <i class="fn fn-down2" aria-hidden="true"></i>
											</div>
											<div class="select_layer" aria-hidden="true">
												<div class="wrap_lst_select">
													<ul class="lst_select">
														<!---->
													</ul>
												</div>
											</div>
										</div>
									</div>
									</bk-simple-selector>
								</div>
							</div>
							<bk-option copny-info="$ctrl.copnyInfo" option="$ctrl.option"
								booking-start-date="$ctrl.booking.bookingStartDate"
								booking-end-date="$ctrl.booking.bookingEndDate">
							<div class="section_booking_further ng-hide"
								ng-show="$ctrl.option.validOptLength > 0 &amp;&amp; !$ctrl.slotInfo &amp;&amp; $ctrl.copnyInfo.biztpId !== 13 &amp;&amp; $ctrl.copnyInfo.biztpId !== 6"
								aria-hidden="true">
								<div class="bar_tit">
									<i class="fn-booking fn-booking-cross-in-circle"
										aria-hidden="true"></i>
									<h3 class="option_label" ng-bind="$ctrl.option.title">옵션선택</h3>
								</div>
								<div class="group_option_further">
									<!---->
								</div>
							</div>
							<div class="section_booking_further ng-hide"
								ng-show="$ctrl.option.opts.length > 0 &amp;&amp; $ctrl.option.validOptLength == 0 &amp;&amp; $ctrl.copnyInfo.biztpId == 4"
								aria-hidden="true">
								<div class="item_noresults">
									<div class="noresults_inn">
										<i class="spr_book ico_i_gray_b"></i>
										<h4 class="tit">선택일정에 추가상품이 없습니다.</h4>
										<p class="dsc">다른 일정을 선택해 보세요.</p>
									</div>
								</div>
							</div>
							</bk-option>
							<!---->
						</div>
					</div>
					<div class="wrap_right">
						<div class="section_booking_form">
							<bk-extra-input copny-info="$ctrl.copnyInfo"> <!---->
							</bk-extra-input>
							<bk-input-form copny-info="$ctrl.copnyInfo" booker="$ctrl.booker"
								booking="$ctrl.booking" qty="$ctrl.qty"
								get-info-text="$ctrl.getInfoText()">
							<h3 class="out_tit">
								<span> <span ng-bind="$ctrl.wordSet.BOOKING_TYPE">예약</span>자
									정보
								</span> <span class="help_txt"> <i
									class="spr_book ico_nessasary" aria-hidden="true"></i> <span>필수입력</span>
								</span>
							</h3>
							<div class="booking_form_wrap">
								<form
									class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email">
									<div class="inline_form">
										<label class="label" for="name"> <span
											ng-bind="$ctrl.wordSet.BOOKER">예약자</span> <i
											class="spr_book ico_nessasary"
											data-tst_booker_name_input_text="required">필수</i>
										</label>
										<div class="inline_control">
											<input type="text" name="name" id="name"
												class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"
												value="네이버" ng-model="$ctrl.booker.name" maxlength="17"
												ng-blur="$ctrl.booker.validCheck(false)"
												ng-class="{'text_bold': isFocusName }"
												ng-focus="isFocusName = true;"
												data-tst_booker_name_input_text="0" aria-invalid="false"
												style="">
										</div>
									</div>
									<div class="inline_form">
										<label class="label" for="tel"> <span>연락처</span> <!---->
											<i class="spr_book ico_nessasary"
											ng-if="!$ctrl.booker.isNomember"
											data-tst_booker_tel_input_text="required">필수</i>
										<!---->
										</label>
										<div class="inline_control">
											<input mg-input-filter="addHyphenPhone" type="tel" name="tel"
												id="tel"
												class="tel text ng-pristine ng-untouched ng-valid ng-not-empty"
												value="01012345678" placeholder=""
												ng-class="{'text_bold': isFocusPhone }"
												ng-focus="isFocusPhone = true;"
												ng-model="$ctrl.booker.phone"
												ng-blur="$ctrl.booker.validCheck(false)"
												data-tst_booker_tel_input_text="0" aria-invalid="false"
												style="">
										</div>
									</div>
									<div class="inline_form" ng-show="$ctrl.isShowEmailForm"
										aria-hidden="false" style="">
										<label class="label" for="email"> <span>이메일</span> <!---->
										</label>
										<div class="inline_control">
											<input type="email" name="email" id="email"
												class="email text ng-pristine ng-untouched ng-valid ng-valid-email ng-valid-maxlength ng-not-empty"
												value="navercorp@naver.com" maxlength="50"
												ng-model="$ctrl.booker.email"
												ng-blur="$ctrl.booker.validCheck(false)"
												ng-class="{'text_bold': isFocusEmail }"
												ng-focus="isFocusEmail = true;"
												data-tst_booker_email_input_text="0" aria-invalid="false"
												style="">
										</div>
									</div>
									<!---->
									<!---->
									<div class="inline_form" ng-show="$ctrl.booker.isUseReqMsg"
										ng-if="$ctrl.copnyInfo.biztpId !== 5 &amp;&amp; $ctrl.copnyInfo.biztpId !== 11 &amp;&amp; $ctrl.copnyInfo.biztpId !== 12"
										aria-hidden="false">
										<label class="label" for="message">요청사항</label>
										<div class="inline_control">
											<textarea name="textarea" id="message" cols="30" rows="10"
												class="textarea text ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength"
												maxlength="500" placeholder="업체에 요청하실 내용을 적어주세요."
												ng-model="$ctrl.booker.reqMsg"
												ng-class="{'text_bold': isFocusReqMsg }"
												ng-focus="isFocusReqMsg = true;"
												data-tst_req_msg_input_textarea="0" aria-invalid="false"></textarea>
										</div>
									</div>
									<!---->
								</form>
							</div>
							</bk-input-form>
						</div>
						<bk-agreement copny-info="$ctrl.copnyInfo"
							is-rule-agree="$ctrl.booking.isRuleAgree" booker="$ctrl.booker">
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
							<div class="agreement" ng-class="{open : $ctrl.isOpenAgreement1}"
								ng-if="$ctrl.isShowUseAgreement()">
								<span class="spr_book ico_chk_before" aria-hidden="true"></span>
								<span class="chk_txt">이용약관 고지 및 동의</span> <a href="#"
									class="btn_agreement"
									ng-click="$event.preventDefault(); $ctrl.isOpenAgreement1 = !$ctrl.isOpenAgreement1">
									<span class="under_line">보기</span> <i class="fn fn-down2"
									aria-hidden="true"
									ng-class="{'fn-up2' : $ctrl.isOpenAgreement1, 'fn-down2' : !$ctrl.isOpenAgreement1 }"></i>
								</a>
								<div class="useragreement_details">
									<bk-policy>
									<dl class="policy_list">
										<dt class="title first">제 1조 (목적)</dt>
										<dd class="desc">이 약관(이하 "약관"이라고 합니다)은 네이버 주식회사(이하 "회사"라고
											합니다)가 제공하는 네이버 예약 서비스의 이용과 관련하여 회사와 예약이용자 간의 권리, 의무 및 책임사항,
											기타 필요한 사항을 규정함을 목적으로 합니다.</dd>
										<dt class="title">제 2조 (정의)</dt>
										<dd class="desc">
											"약관"에서 사용하는 용어의 정의는 아래와 같습니다.<br>① "네이버 예약 서비스" (이하
											"서비스"라고 합니다)라 함은 "예약이용자"와 상품 또는 용역 등(이하 "상품 등"이라고 합니다)을 제공하는
											"사업자회원"간 거래에 대하여 예약 등을 중개하는 서비스를 의미합니다.
										</dd>
										<dd class="desc">② "예약이용자"라 함은 "회사"의 "서비스"를 이용하기 위해 네이버
											서비스(www.naver.com 또는 m.naver.com) 아이디로 로그인 후 "약관"에 따라 "회사"와
											이용계약을 체결하고 "사업자회원"이 제공하는 "상품 등"을 이용하기 위하여 "서비스"를 통하여 예약신청을 하는
											자를 의미합니다.</dd>
										<dd class="desc">③ "사업자회원"이라 함은 회사의 "서비스"를 이용하기 위해 "약관"에
											따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 사업자를 의미합니다.</dd>
										<dd class="desc">④ "네이버 예약 홈"이라 함은 "예약이용자"가 "서비스"의 이용과
											관련된 사항 및 예약이용현황 등을 확인할 수 있도록 "회사"가 제공하는 웹사이트를 의미합니다.</dd>
										<dd class="desc">⑤ "예약솔루션"(이하 "솔루션"이라고 합니다)이라 함은 "사업자회원"이
											"서비스"를 이용하여 제작한 "예약이용자"의 예약 등을 받을 수 있는 도구 등의 산출물을 의미합니다.</dd>
										<dd class="desc">
											⑥ "게시정보"라 함은 "사업자회원"이 "솔루션"" 상에 기재, 게시한 부호ㆍ문자ㆍ이미지 등의 정보 및 링크
											등을 의미하며, 아래 각호와 같이 구분됩니다.<br> 1. 업체정보: "상품 등"을 공급하는
											"사업자회원"의 업체에 관한 정보<br> 2. 예약대상정보: "사업자회원"이 업체정보에 등록하여
											제공하는 개별 예약 대상에 관한 정보
										</dd>
										<dd class="desc">⑦ "약관"에서 사용하는 용어 중 본 조 제1항 내지 제6항에서 정하지
											아니한 것은 관련 법령 및 일반적인 상관례에 따릅니다.</dd>
										<dt class="title">제 3조 (약관의 게시와 개정)</dt>
										<dd class="desc">① "회사"는 "약관"의 내용을 "예약이용자"가 쉽게 알 수 있도록
											"네이버 예약 홈" 초기 화면 또는 연결 화면을 통하여 게시합니다.</dd>
										<dd class="desc">② "회사"는 필요한 경우 관련 법령을 위배하지 않는 범위 내에서
											"약관"을 개정할 수 있습니다.</dd>
										<dd class="desc">③ "회사"는 "약관"을 개정할 경우 개정내용과 적용일자를 명시하여
											제9조에 따른 방법으로 적용일자 7일 전부터 적용일자 전일까지 통지합니다. 다만, "예약이용자"에게 불리하게
											개정되는 경우에는 적용일자 30일 전부터 적용일자까지 공지하고, "예약이용자"가 기재한 전자우편주소 또는
											"네이버 예약 홈" 로그인 시 노출되는 팝업 창 등의 전자적 수단을 통해 별도로 통지합니다.</dd>
										<dd class="desc">④ "회사"가 전항에 따라 "약관"의 개정을 공지하면서 "예약이용자"에게
											적용일자 전일까지 이의 제기 등 거부의 의사표시를 하지 않으면 동의의 의사표시가 표명된 것으로 본다는 뜻을
											명확하게 고지했거나 제9조에 따른 방법으로 통지하였음에도 "예약이용자"가 명시적으로 거부의 의사표시를 하지
											않은 경우 "예약이용자"가 개정되는 "약관"에 동의한 것으로 봅니다.</dd>
										<dd class="desc">⑤ "예약이용자"는 "약관"의 개정에 동의하지 않을 경우 적용일자
											전일까지 "회사"에 거부의사를 표시하고 서비스 이용계약을 해지할 수 있습니다.</dd>
										<dt class="title">제 4조 (회사의 개인정보보호의무)</dt>
										<dd class="desc">
											"회사"는 "정보통신망 이용촉진 및 정보보호 등에 관한 법률", "개인정보보호법" 등 관련 법령이 정하는 바에
											따라 "예약이용자"의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 이용에 대해서는 관련 법령 및
											"회사"의 개인정보처리방침이 적용됩니다. 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의
											개인정보처리방침이 적용되지 않습니다.<br>
											<a
												ng-href="https://nid.naver.com/mobile/user/help/termAgree.nhn?m=viewTermAgree3"
												target="privacy_protect_policy" title="새창"
												href="https://nid.naver.com/mobile/user/help/termAgree.nhn?m=viewTermAgree3">개인정보보호정책</a>
										</dd>
										<dt class="title">제 5조 (회원정보 등의 변경)</dt>
										<dd class="desc">① "예약이용자"는 네이버의 회원정보 관리화면을 통하여 언제든지 본인의
											회원정보를 열람할 수 있으며, 이를 수정할 수 있습니다.</dd>
										<dd class="desc">② "예약이용자"는 회원가입신청 시 기재한 사항이 변경되었을 경우,
											회원정보 관리화면을 통하여 수정을 하거나 전화, 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야
											합니다.</dd>
										<dd class="desc">③ "예약이용자"가 제2항을 위반하여 변경사항을 "회사"에 알리지 않아
											발생한 불이익에 대해서 "회사"는 책임지지 않습니다.</dd>
										<dt class="title">제 6조 (대리 및 보증의 부인)</dt>
										<dd class="desc">① "회사"는 "예약이용자"와 "사업자회원" 간의 편리한 "상품 등"의
											거래를 위한 서비스를 운영 및 관리, 제공할 뿐이며, "예약이용자" 또는 "사업자회원"을 대리하지 않습니다.
											또한, “예약이용자”와 “사업자회원” 사이에 성립된 “상품 등”의 거래에 관련한 책임과 “예약이용자” 및
											“사업자회원”이 제공한 정보에 대한 책임은 해당 “예약이용자” 및 “사업자회원”이 직접 부담하여야 합니다.</dd>
										<dd class="desc">② “회사”는 “서비스”를 통하여 이루어지는 “예약이용자”와
											“사업자회원” 간의 “상품 등”의 거래와 관련하여 판매의사 또는 구매의사의 존부 및 진정성, “상품 등”의
											품질, 완전성, 안전성, 적법성 및 타인의 권리에 대한 비침해성, “예약이용자” 또는 “사업자회원”이 입력한
											정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는 적법성 등 일체에 대하여 보증하지
											아니하며, 이와 관련한 일체의 위험은 해당 “예약이용자” 또는 “사업자회원”이 전적으로 부담합니다.</dd>
										<dd class="desc">③ “회사”는 “사업자회원”에게 “상품 등”을 판매하거나
											“사업자회원”으로부터 “상품 등”을 구매하지 않으며, 단지 “사업자회원”과 “예약이용자” 간의 “상품 등”의
											거래의 편의성을 증진시키는 도구만을 개발 및 제공합니다.</dd>
										<dt class="title">제 7조 (서비스의 이용 및 제한)</dt>
										<dd class="desc">① “예약이용자”는 네이버 아이디로 로그인 한 후 본 “약관”에 동의하는
											방법으로 “서비스” 이용가입신청을 하고 “회사”가 이를 승낙함으로써 “서비스”를 이용할 수 있습니다. 다만
											“회사”는 “회원”의 “서비스”이용신청이 타인의 아이디를 도용한 경우, 미성년자인 경우 등 기타 관련 법령상
											정당한 사유가 있는 경우 “서비스” 이용가입을 제한할 수 있습니다.</dd>
										<dd class="desc">② “서비스”를 이용하고자 하는 “예약이용자”는 “서비스” 이용과
											관련하여 “회사”가 요구하는 사항("예약이용자"의 성명, 휴대전화번호, 이메일 주소 등)을 “회사”에
											제공함으로써 서비스를 이용할 수 있습니다.</dd>
										<dd class="desc">
											③ “회사”는 “예약이용자”에게 “사업자회원”이 제공하는 “상품 등”의 예약을 할 수 있도록 아래와 같은
											“서비스”를 제공합니다.<br> 1. “사업자회원”이 제공하는 “상품 등”의 예약을 위한 솔루션<br>
											2. 필요 시 “결제”를 위한 “네이버페이 서비스” 연계<br> 3. 기타 “예약이용자”의 “서비스”
											이용 관리 등을 위한 제반 서비스
										</dd>
										<dd class="desc">④ “회사”는 “예약이용자”가 “서비스”의 본래 목적에 어긋나게 이를
											사용하거나 또는 “사업자회원”의 사업을 방해할 목적으로 반복적으로 구매의사 없이 예약을 남발하는 경우 등에는
											“서비스” 이용을 제한할 수 있습니다.</dd>
										<dd class="desc">⑤ “회사”는 원칙적으로 “예약이용자”의 이용신청을 승낙한 때로부터
											“서비스”를 연중무휴로 1일 24시간 제공합니다. 다만, “회사”의 기술상 또는 업무상의 장애로 인하여
											“서비스”를 즉시 개시하지 못하는 경우 “회사”는 제9조에 따른 방법으로 “예약이용자”에게 통지합니다.</dd>
										<dd class="desc">⑥ “회사”는 안정적인 “서비스” 제공을 위하여 “서비스”의 내용,
											운영상 또는 기술상 사항 등을 변경할 수 있습니다. 이 경우 “회사”는 “서비스” 중요사항을 변경할 경우
											변경내용과 적용일자를 명시하여 제9조에 따른 방법으로 사전에 통지합니다.</dd>
										<dd class="desc">
											⑦ “회사”는 다음 각 호에 해당하는 경우 “서비스”의 일부 또는 전부의 제공을 일시적으로 중단할 수
											있습니다. 이 경우 회사는 “서비스” 이용의 중단 사실을 제9조의 방법에 따라 즉시 공지합니다.<br>
											1. 설비의 보수 등을 위하여 부득이한 경우<br> 2. 「전기통신사업법」에 규정된 기간통신사업자가
											전기통신서비스를 중지하는 경우<br> 3. 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스
											이용의 폭주 등으로 정상적인 “서비스” 제공에 지장이 있는 경우<br> 4. 기타 “회사”가
											“서비스”를 제공할 수 없는 위 제1호 내지 제3호에 준하는 사유가 발생한 경우<br> 5.
											“사업자회원”이 “회사”가 제공하는 통상적인 수준의 트래픽, 용량 등을 과도하게 초과하여 “회사”의 정상적인
											“서비스” 제공에 지장을 초래할 우려가 있는 경우
										</dd>
										<dd class="desc">⑧ “예약이용자”는 언제든지 “회사”에 대한 통지로서 “서비스”
											이용계약을 해지할 수 있으며, “회사”는 관련 법령이 정하는 바에 따라 이를 즉시 처리하여야 합니다. 이 경우
											“회사”는 관련 법령 및 개인정보처리방침에 따라 보유하는 “예약이용자”의 정보를 제외한 “예약이용자”의
											예약정보 등을 삭제합니다.</dd>
										<dt class="title">제 8조 (리뷰)</dt>
										<dd class="desc">① “예약이용자”는 “서비스”를 통해 예약 이용한 상품 등의 리뷰를
											등록할 수 있으며, 리뷰의 저작권은 당 리뷰의 저작자에게 귀속합니다.</dd>
										<dd class="desc">② 리뷰의 등록으로 인해 저작권 침해 등 “예약이용자”와 제3자 사이에
											분쟁이 발생하는 경우 이와 관련한 일체의 책임은 해당 리뷰를 등록한 “예약이용자”에게 있습니다.</dd>
										<dd class="desc">
											③ “회사”는 “예약이용자”가 등록한 리뷰가 다음 각 호에 해당한다고 판단되는 경우 사전 통보 없이 해당
											리뷰를 삭제하거나 열람을 제한할 수 있으며, “예약이용자”의 서비스 이용을 중지 또는 해지 할 수 있습니다.<br>
											1. 타인의 권리나 명예, 신용, 기타 정당한 이익을 침해하는 경우<br> 2. 사회 공공질서나
											미풍양속에 위배되는 경우<br> 3. 범죄행위와 관련된 내용을 포함하는 경우<br> 4.
											허위 또는 과장 광고 내용을 포함하는 경우<br> 5. 불법물, 음란물 또는 청소년유해매체물의 게시,
											등록 또는 이와 관련된 물품의 홍보, 사이트를 링크하는 등의 경우<br> 6. 정보통신기기의 오작동을
											일으킬 수 있는 악성코드나 데이터를 포함하는 경우<br> 7. 관련 법령에서 정하거나 정당한 권한을
											가진 정부기관 등의 요청 등이 있는 경우<br> 8. “회사”가 제공하는 “서비스”의 원활한 진행을
											방해하는 것으로 판단되는 경우
										</dd>
										<dd class="desc">④ “회사”는 “사업자회원”의 요청에 따라 “예약이용자”가 등록한 리뷰를
											“사업자회원”의 사이트 또는 네이버 서비스 내에 노출할 수 있도록 제공하거나 협조할 수 있습니다. 단,
											“회사”는 “사업자회원”이 자신의 사이트에서 리뷰를 운영하는 것에 관여하지 않으며, 이에 대하여 어떠한 책임도
											부담하지 않습니다.</dd>
										<dd class="desc">⑤ “회사”는 리뷰를 검색결과나 프로모션 등 서비스와 관련된 목적 범위
											내에서 무상으로 사용할 수 있으며, “회사”의 사용목적에 따라 필요한 범위 내에서 일부 수정, 복제, 편집하여
											사용할 수 있습니다. 단, “예약이용자”는 언제든지 고객센터 및 신고하기 등을 통해 해당 게시물에 대해 삭제,
											비공개 등의 조치를 요청할 수 있습니다.</dd>
										<dt class="title">제 9조 (회원에 대한 통지)</dt>
										<dd class="desc">① “회사”가 “예약이용자”에 대하여 통지를 하는 경우 “약관”에 별도의
											규정이 없는 한 “예약이용자”가 제공한 전자우편주소, (휴대)전화번호, 주소 등으로 할 수 있습니다.</dd>
										<dd class="desc">② “회사”는 “예약이용자” 전체에 대하여 통지를 하는 경우 “네이버
											예약 홈” 초기화면 또는 게시판에 게시함으로써 전항의 통지에 갈음할 수 있습니다. 다만, “예약이용자”의
											“서비스” 이용에 중대한 영향을 주는 사항에 대해서는 전항의 통지 수단 중 2개 이상의 방법으로 통지합니다.</dd>
										<dd class="desc">③ “예약이용자”는 “회사”에 실제로 연락이 가능한 전자우편,
											(휴대)전화번호, 주소 등의 정보를 제공하고 해당 정보들을 최신으로 유지하여야 하며, “회사”의 통지를
											확인하여야 합니다.</dd>
										<dt class="title">제 10조 (책임제한)</dt>
										<dd class="desc">① “회사”는 천재지변, 디도스(DDOS) 공격, IDC 장애,
											기간통신사업자의 회선 장애 또는 이에 준하는 불가항력으로 인하여 “서비스”를 제공할 수 없는 경우에는
											“서비스” 제공에 관한 책임을 지지 않습니다.</dd>
										<dd class="desc">② “회사”는 “예약이용자”의 귀책사유로 인한 “서비스” 이용의 장애에
											대하여는 책임을 지지 않습니다.</dd>
										<dd class="desc">③ “회사”는 제7조 제6항 및 제7항의 “서비스” 이용의 변경 및
											중단의 경우에 고의 과실 등 귀책사유가 없는 한 책임을 지지 않습니다.</dd>
										<dd class="desc">④ “사업자회원”이 “서비스”를 이용하여 제작한 “솔루션” 및 “솔루션”
											내 “게시정보”의 내용에 관하여는 “사업자회원”이 그에 대한 일체의 책임을 부담하며 “회사”는 이에 대해
											어떠한 책임도 부담하지 않습니다.</dd>
										<dd class="desc">⑤ “회사”는 “예약이용자” 간 또는 “예약이용자”와 제3자 상호간의
											“서비스”를 매개로 한 거래 등에 관하여 책임을 지지 않습니다.</dd>
										<dt class="title">제 11조 (준용규정)</dt>
										<dd class="desc">① 본 “약관”에서 정하지 아니한 사항은 네이버 서비스 약관 및
											개인정보처리방침에 따릅니다.</dd>
										<dt class="title">[부칙]</dt>
										<dd class="desc">1. 본 약관은 2015년 3월 5일부터 시행됩니다.</dd>
									</dl>
									</bk-policy>
								</div>
							</div>
							<!---->
							<div class="agreement" ng-class="{open : $ctrl.isOpenAgreement2}">
								<span class="spr_book ico_chk_before" aria-hidden="true"></span>
								<span class="chk_txt">개인정보 수집 및 이용 동의</span> <a href="#"
									class="btn_agreement"
									ng-click="$event.preventDefault(); $ctrl.isOpenAgreement2 = !$ctrl.isOpenAgreement2">
									<span class="under_line">보기</span> <i class="fn fn-down2"
									aria-hidden="true"
									ng-class="{'fn-up2' : $ctrl.isOpenAgreement2, 'fn-down2' : !$ctrl.isOpenAgreement2 }"></i>
								</a>
								<div class="useragreement_details">
									&lt;개인정보 수집 및 이용 동의&gt;<br>
									<br> 1. 수집항목 : [필수] 이름, 연락처, [선택] 이메일주소<br>
									<br> 2. 수집 및 이용목적 : 사업자회원과 예약이용자의 원활한 거래 진행, 고객상담, 불만처리 등
									민원 처리, 분쟁조정 해결을 위한 기록보존, 네이버 예약 이용 후 리뷰작성에 따른 네이버페이 포인트 지급 및 관련
									안내<br>
									<br> 3. 보관기간<br> - 회원탈퇴 등 개인정보 이용목적 달성 시까지 보관<br>
									- 단, 상법 및 ‘전자상거래 등에서의 소비자 보호에 관한 법률’ 등 관련 법령에 의하여 일정 기간 보관이 필요한
									경우에는 해당 기간 동안 보관함<br>
									<br> 4. 동의 거부권 등에 대한 고지: 정보주체는 개인정보의 수집 및 이용 동의를 거부할 권리가
									있으나, 이 경우 상품 및 서비스 예약이 제한될 수 있습니다.<br>
								</div>
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
									<div class="custom_details" ng-show="!$ctrl.isSeller"
										aria-hidden="false">
										&lt;개인정보 제3자 제공 동의&gt;<br>
										<br> 1. 개인정보를 제공받는 자 : 루이쌍끄<br>
										<br> 2. 제공하는 개인정보 항목 : [필수] 네이버 아이디, 이름, 연락처, [선택] 이메일 주소
										<br>
										<br> 3. 개인정보를 제공받는 자의 이용목적 : 사업자회원과 예약이용자의 원활한 거래 진행,
										고객상담, 불만처리 등 민원 처리, 서비스 이용에 따른 설문조사 및 혜택 제공, 분쟁조정 해결을 위한 기록보존<br>
										<br> 4.개인정보를 제공받는 자의 개인정보 보유 및 이용기간 : 개인정보 이용목적 달성 시 까지
										보존합니다.<br>
										<br> 5.동의 거부권 등에 대한 고지 : 정보주체는 개인정보 제공 동의를 거부할 권리가 있으나, 이
										경우 상품 및 서비스 예약이 제한될 수 있습니다.<br>
									</div>
								</div>
							</div>
						</div>
						</bk-agreement>
						<bk-account copny-info="$ctrl.copnyInfo"
							qty-sum-price="$ctrl.qty.sumPrice"
							option-sum-price="$ctrl.option.sumPrice"
							use-naver-pay="$ctrl.useNaverPay"> <!----> </bk-account>
						<bk-refund-agreement copny-info="$ctrl.copnyInfo"
							is-refund-rule-agree="$ctrl.booking.isRefundRuleAgree"
							pay-info="$ctrl.payInfo" qty-sum-price="$ctrl.qty.sumPrice"
							option-sum-price="$ctrl.option.sumPrice"
							booking-end-date="$ctrl.booking.bookingEndDate"
							resoc-info="$ctrl.resocInfo"
							ng-show="$ctrl.isShowRefundAgreement()" aria-hidden="true"
							class="ng-hide">
						<div class="section_booking_info ng-hide"
							ng-show="$ctrl.isProductSelected" aria-hidden="true">
							<div class="info_detail">
								<input type="checkbox" id="chk7" name="chk_agree"
									class="chk_agree ng-pristine ng-untouched ng-valid ng-empty"
									ng-model="$ctrl.isRefundRuleAgree"
									data-tst_refund_agreement="0" aria-invalid="false"> <label
									for="chk7" class="label chk_txt" onclick=""> 취소/환불 규정에
									대한 동의 </label> <span class="agreement_nessasary"> <span
									class="help_txt"> <span>필수동의</span>
								</span>
								</span>
								<!---->
								<!---->
								<!---->
							</div>
						</div>
						</bk-refund-agreement>
						<!---->
						<!---->
						<div
							ng-if="!$ctrl.resocInfo || ($ctrl.resocInfo &amp;&amp; !$ctrl.resocInfo.resocId )">
							<!---->
						</div>
						<!---->
						<bk-owner copny-info="$ctrl.copnyInfo">
						<div class="section_booking_owner"
							ng-class="{open : $ctrl.isShowOwnerInfo }">
							<h3 class="out_tit">
								<span>판매자 정보</span> <a href="#" class="btn_toggle"
									ng-click="$event.preventDefault(); $ctrl.isShowOwnerInfo = !$ctrl.isShowOwnerInfo"
									title="펼쳐보기" data-tst_open_owner_info_click="0"> <i
									class="fn fn-down2" aria-hidden="true"
									ng-class="{ 'fn-up2' : $ctrl.isShowOwnerInfo, 'fn-down2' : !$ctrl.isShowOwnerInfo }"></i>
								</a>
							</h3>
							<!---->
							<div class="owner_wrap"
								ng-if="!$ctrl.copnyInfo.agencyInfo.isAgency">
								<ul class="owner">
									<li class="item"><strong class="tit">상호</strong> <em
										class="dsc" ng-bind="$ctrl.copnyInfo.copnyName">루이쌍끄</em></li>
									<li class="item"><strong class="tit">대표자명</strong> <em
										class="dsc" ng-bind="$ctrl.copnyInfo.reprName">이유석 셰프</em></li>
									<li class="item"><strong class="tit">소재지</strong>
										<div class="dsc">
											<em
												ng-bind="$ctrl.copnyInfo.addr.jibun + '('+ $ctrl.copnyInfo.addr.roadAddr +')'">서울특별시
												강남구 신사동 657(서울특별시 강남구 선릉로157길 33)</em><br>
											<!---->
											<span ng-if="$ctrl.copnyInfo.addr.detail"> <em
												ng-bind="$ctrl.copnyInfo.addr.detail">2층</em>
											</span>
											<!---->
										</div></li>
									<li class="item ng-hide" ng-hide="$ctrl.copnyInfo.bizNum == ''"
										aria-hidden="true"><strong class="tit">사업자번호</strong> <em
										class="dsc" ng-bind="$ctrl.copnyInfo.bizNum | addHyphenBizNum"></em>
									</li>
									<li class="item"><strong class="tit">연락처</strong>
										<div class="dsc">
											<a href="tel:02-547-1259" ng-href="tel:02-547-1259"
												ng-bind="$ctrl.copnyInfo.phone">02-547-1259</a>
										</div></li>
								</ul>
							</div>
							<!---->
							<!---->
						</div>
						</bk-owner>
						<bk-submit copny-info="$ctrl.copnyInfo"
							resoc-info="$ctrl.resocInfo" pay-info="$ctrl.payInfo"
							booking="$ctrl.booking" option="$ctrl.option"
							deposit-option="$ctrl.option.depositOption" booker="$ctrl.booker"
							booking-step="$ctrl.bookingStep" qty="$ctrl.qty"
							is-active-submit="$ctrl.isActiveSubmit()" submit="$ctrl.submit()">
						<!----> <!---->
						<div
							ng-if="($ctrl.bookingStep == 1 || $ctrl.bookingStep == undefined) &amp;&amp; !($ctrl.resocInfo.isStaticResoc === '1' &amp;&amp; ($ctrl.resocInfo.isSoldout || !$ctrl.resocInfo.isValidStaticResoc))"
							class="bottom_btn disable"
							ng-class="{ bottom_btn_dbl : $ctrl.copnyInfo.showTalkTalkBtn, disable : !$ctrl.isActiveBookingBtn }"
							data-tst_submit="0">
							<button type="button" class="btn"
								ng-click="$ctrl.clickSubmit($event)" data-tst_submit_click="0">
								<!---->
								<!---->
								<i ng-if="!$ctrl.isUseNaverPay()"
									class="fn fn-nbooking-calender2" aria-hidden="true"></i>
								<!---->
								<span
									ng-bind="$ctrl.isChangeBooking() ? $ctrl.wordSet.BOOKING_TYPE + ' 변경하기' : ($ctrl.isUseNaverPay() ? '결제하기' :  bookingBtnText || $ctrl.wordSet.BOOKING_TYPE + ' 신청하기')">예약
									신청하기</span>
							</button>
						</div>
						<!----> <!----> <!----> <bk-notify-popup
							copny-info="$ctrl.copnyInfo"
							booking-result-data="$ctrl.bookingResultData">
						<!----> </bk-notify-popup> </bk-submit>
					</div>
				</div>
			</div>
			</bk-old-restaurant>
		</div>
		<bk-footer ng-hide="isHideFooter" aria-hidden="false" class="">
		<div id="footer" class="footer">
			<div class="footer_box">
				<ul class="info_site_list">
					<li class="info_site_item first"><a ui-sref="policy"
						target="_blank" class="lin_info" title="새창" href="/policy"> <span>이용약관</span>
					</a></li>
					<li class="info_site_item"><a
						href="http://www.naver.com/rules/privacy.html" target="_blank"
						class="lin_info" title="새창"> <strong>개인정보 처리방침</strong>
					</a></li>
					<li class="info_site_item last"><a
						href="https://help.naver.com/support/service/main.nhn?serviceNo=12270"
						target="_blank" class="lin_info" title="새창"> <span>네이버예약
								고객센터</span>
					</a></li>
				</ul>
				<p class="dsc">네이버(주)는 통신판매의 당사자가 아니며, 상품의정보, 거래조건, 이용 및 환불 등과
					관련한 의무와 책임은 각 회원에게 있습니다.</p>
				<address class="address_box">
					<span>사업자등록번호</span> : 220-81-62517 <span class="co_bar">|</span> <span>통신판매업신고번호</span>
					: 제2006-경기성남-692호 <span class="co_bar">|</span> <span>대표이사</span> :
					<span>한성숙</span> <span class="co_bar">|</span> <a
						href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp"
						class="lin_info" target="_blank" title="새창"> <span>사업자등록정보확인</span>
					</a><br> <span>주소</span> : <span>경기도 성남시 분당구 불정로 6 네이버
						그린팩토리 463-867</span> <span class="co_bar">|</span> <span>고객센터</span> :
					1644-5690 &nbsp; <span>운영시간</span> : 09:00~18:00 (<span>연중무휴</span>)
				</address>
				<p class="copyright_box">
					<a href="http://www.navercorp.com" class="spr_bi lin_info txt_logo"
						target="_blank" title="새창">NAVER</a>Copyright © <strong>
						<a href="http://www.navercorp.com" class="lin_info lin_info_corp"
						target="_blank" title="새창">NAVER Corp.</a>
					</strong> All Rights Reserved.
				</p>
			</div>
		</div>
		</bk-footer>
	</div>

</body>
</html>