<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	.show{	
		text-align:left;
		padding-right:50px;
	}
</style>
</head>
<body>

<div class="content-wrapper" align="center" style="margin-bottom:10px;">
		<div class="content">
			<div class="content-header">
				<div class="restaurant-title">
					<h1 class="title">
						<span class="name">�ľ�����</span>
						<span class="rate-point">4.6</span>
					</h1>
				</div>
			</div>
			
			<table class="content-detail">
					<!-- ������� �� ���� -->
					<tbody>
						<tr>
							<th class="show">�Ű���:</th>
							<td>${reportResDTO.reEmail}</td>
						</tr>
						<tr>
							<th class="show">�Ű�����:</th>
							<td>${reportResDTO.reportName}</td>
						</tr>
						<tr>
							<th class="show">����ѹ�:</th>
							<td>${reportResDTO.resNo}</td>
						</tr>
						<tr>
							<th class="show">�Ű�����:</th>
							<td>${reportResDTO.deEmail}</td>
						</tr>
						<tr>
							<th class="show">ó������:</th>
							<td>${reportResDTO.reStatus}</td>
						</tr>
						
						<tr>
							<th class="show">�Ű��䳻��:</th>
							<td><textarea rows="10" cols="50" resize="none" readonly>
							${reportResDTO.reportContent}
							</textarea></td>
						</tr>
					</tbody>
			</table>	
		</div>
		<table width="100%" height="300" cellspacing="0" style="margin-top:50px; margin-bottom:50px;">
	<colgroup>
		<col width="20%" />
		<col width="20%" />
		<col width="20%" />
		<col width="20%" />
		<col width="20%" />
	</colgroup>
	<tr>
		<td border="1"><image width="100%" height="300" src="/resources/images/${reportResDTO.reEmail}_image_1.jpg"></td>
		<td border="1"><image width="100%" height="300" src="/resources/images/${reportResDTO.reEmail}_image_2.jpg"></td>
		<td border="1"><image width="100%" height="300" src="/resources/images/${reportResDTO.reEmail}_image_3.jpg"></td>
		<td border="1"><image width="100%" height="300" src="/resources/images/${reportResDTO.reEmail}_image_4.jpg"></td>
		<td border="1"><image width="100%" height="300" src="/resources/images/${reportResDTO.reEmail}_image_5.jpg"></td>
	</tr>
</table>

<div>
<input type="button" value="��">
<input type="button" value="�̿�Ұ�" onclick = "location.href='/manager/restaurantClaimUnused?resNo=${reportResDTO.resNo}'">
<input type="button" value="����" onclick = "location.href='/manager/restaurantClaimRefuse?resNo=${reportResDTO.resNo}'">
</div>
</body>
</html>