$(document).ready(function(){
	var email = $('#email');
	var pwd = $('#password');
	var pwd2 = $('#password2');
	$('body').on('click', 'header div span', function(e){
		var tg = e.target.id;
		if(tg==='signup'){
			$('#member_update_wrapper').bPopup();
		}else if(tg==='login'){
			$('#member_login_wrapper').bPopup();
		}
	})
	email.keyup(function(){
		var value = $(this).val();
		$.ajax({
			url:'/inspect',
			dataType:'json',
			type:'GET',
			data:{'data':value,'type':'id'},
			success: function(result){
				console.log(result.data);
				console.log(result.result);
				if(result.result===true){
					$('#result_id').css('color', 'blue');
					$('#result_id').html('Registered email address');
					$('#checkEmail').val(1);
				}else if(result.result==false){
					$('#result_id').css('color', 'red');
					$('#result_id').html('Already registered email address');
					$('#checkEmail').val(0);
				}
			}
		})
		/* var bool = new RegExp("/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/", "i").test(value);
		if(!bool){
			$('#result_id').html('올바른 형식');
		}else{
			$('#result_id').html('잘못된 형식');
		} */
	})
	$('#password2').keyup(function(){
		if(pwd.val()===pwd2.val()){
			$('#result_pwd2').css('color', 'blue');
			$('#result_pwd2').html('ok');
		}else{
			$('#result_pwd2').css('color', 'red');
			$('#result_pwd2').html('no');
		}
	})
	$('#member_update').submit(function(e){
		
	})
})