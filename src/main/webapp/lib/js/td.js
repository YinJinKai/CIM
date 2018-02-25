$(document).ready(function(){
	loadTeacherInfor();
	
	
	
});
function loadTeacherInfor(){
	var id=$("#cid").find("li").find("span").html();
	$.ajax({
		url : "teacher_showTeacherdetails?teacher.id="+id+"",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var a="<div class='sdeatils'><a>编号:</a><span>"+data[0].teacherNumber+"</span></div>"
				+"<div class='sdeatils'><a>性别:</a><span>"+data[0].teacherSex+"</span></div>"
				+"<div class='sdeatils'><a>出生日期:</a><span>"+data[0].teacherBirthday+"</span></div>"
				+"<div class='sdeatils'><a>入职日期:</a><span>"+data[0].teacherArriveDate+"</span></div>"
				+"<div class='sdeatils'><a>身份证号:</a><span>"+data[0].teacherCardNumber+"</span></div>"
				+"<div class='sdeatils'><a>联系电话:</a><span>"+data[0].teacherPhone+"</span></div>"
				+"<div class='sdeatils'><a>住址:</a><span>"+data[0].teacherAddress+"</span></div>"
				+"<div class='sdeatils'><a>简介:</a><div>"+data[0].teacherMemo+"</div></div>";
			$(".touxiang").html("<img src='"+data[0].teacherPhoto+"'/>");
			$(".sInfor").html(a);
			$(".stext").html(data[0].teacherName);
		}
	});
	
}