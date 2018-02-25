$(document).ready(function(){
	$('#tb').textbox({    
    buttonText:'搜索',
    buttonAlign:"left",
    buttonIcon:'icon-search',
    prompt: '请输入老师姓名!'
})
 loadAllteacher();
	$('#tb').textbox({
		onClickButton: function(){
			showSearchTeacherInfor();
		}
	});

});
function loadAllteacher(){
	$.ajax({
		url : "teacher_showAllTeacherInfor",
		data : {

		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var h="";
			for (var i = 0; i < data.length; i++) {
				h+="<div class='c_infor' onclick='showDetails("+data[i].id+")'>"
				+"<em><img src='"+data[i].teacherPhoto+"'/></em>"
				+"<a>"+data[i].teacherName+"</a></div>";
			}
			$(".in_context").html(h);
		}
	});
}
function showDetails(a){
	var id=a;
	window.location.href = "teacher_toTeacherDetail?teacher.id="+id+"";
}
function showSearchTeacherInfor(){
	var teacherName=$("#tb").val();
	if(teacherName==""){
		return;
	}
	$.ajax({
		url : "teacher_showSearchTeacherInfor?teacher.teacherName="+teacherName+"",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var h="";
			for (var i = 0; i < data.length; i++) {
				h+="<div class='c_infor' onclick='showDetails("+data[i].id+")'>"
				+"<em><img src='"+data[i].teacherPhoto+"'/></em>"
				+"<a>"+data[i].teacherName+"</a></div>";
			}
			$(".in_context").html(h);
		}
	});
}