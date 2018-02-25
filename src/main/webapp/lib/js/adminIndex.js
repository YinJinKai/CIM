$(document).ready(function(){
	loadAdminInfor();
	
	
	
	
	
});
function loadAdminInfor() {
	$.ajax({
		url : "login_loginInfor",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			$("#infor").html(data[0]);
		}
	});
}