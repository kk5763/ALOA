<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="/style/h_style/storejoin.css" />


<script type="text/javascript">
function modify(){
	window.opener.name = "parentPage"; // 부모창의 이름 설정
    document.memberModify.target = "parentPage"; // 타켓을 부모창으로 설정
    document.memberModify.submit();
    self.close();
}
function cancle(){
	self.close();
}
</script>
<style type="text/css">
	.btn1{
		width:100px;
		height:30px;
	}
</style>
</head>
<body>

	<form name="memberModify" method="post"
		class="form_horizontal ng-pristine ng-valid ng-valid-maxlength ng-valid-email"
		action="/manager/memberUpdate">
		<input type="hidden" name="id" value="${memberDTO.id }" /> <input
			type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />


		<div id="container">

			<div id="header">
				<h1 align="center">
					<br> <br> <br>회원수정
				</h1>
			</div>

			<div id="content">

				<div class="wrap_right">
					<div class="section_booking_form">



						<bk-input-form>
						<h3 class="out_tit">


							<span>회원수정 정보 </span> <span class="help_txt"> <i
								class="spr_book ico_nessasary" aria-hidden="true"></i>
							</span>
						</h3>

						<!-- email -->

						<div class="booking_form_wrap">

							<div class="inline_form">
								<label class="label" for="email"> <span>회원ID</span>
								</label>

								<div class="inline_control">

									<input type="text" name="email" id="email"
										class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"
										maxlength="50" value="${memberDTO.email}" readonly />

								</div>
							</div>
							<!-- userName -->

							<div class="inline_form">
								<label class="label" for="userName"> <span>이름</span>
								</label>


								<div class="inline_control">
									<input type="text" name="username" id="username"
										class="text ng-pristine ng-untouched ng-valid ng-valid-maxlength ng-not-empty"
										maxlength="17" value="${memberDTO.username}" readonly />
								</div>
							</div>
							

					
							<div style="text-align:center; margin-top:40px;">
								<input type="button" value="블랙 등록" onclick="modify()" class="btn1">
								<input type="button" value="취소" onclick="cancle()" class="btn1">
							</div>
							<!---->
							<br>

						</div>
						</bk-input-form>
					</div>
					<!-- section_booking_form -->
				</div>
			</div>
			<!-- content -->
		</div>
		<!-- container -->
	</form>
</body>
</html>