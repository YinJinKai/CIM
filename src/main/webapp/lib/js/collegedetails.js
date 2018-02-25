$(document).ready(function(){
	loadCollegeInfor();
	
	
	
});
function loadCollegeInfor(){
	var id=$("#cid").find("li").find("span").html();
	$.ajax({
		url : "college_showCollegedetails?college.id="+id+"",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var a="<div class='context_top'>"
			+"<div class='context_title'>"+data[0].collegeName+"</div>"
			+"<div class='context_img'>"
			+"<img src='"+data[0].url+"' class='cimg'/></div></div>"
			+"<div class='context_middle'>"
			+"<div class='inforBox number'>"
			+"<a>编号:</a><span>"+data[0].collegeNumber+"</span></div>"
			+"<div class='inforBox ctime'>"
			+"<a>创立时间:</a><span>"+data[0].collegeBirthDate+"</span></div>"
			+"<div class='inforBox creater'>"
			+"<a>院长:</a><span>"+data[0].collegeMan+"</span></div>"
			+"<div class='inforBox tel'><a>电话:</a><span>"+data[0].collegeTelephone+"</span></div>"
			+"<div class='inforBox intro'><a>简介:</a><div class='introInfor'>"+data[0].collegeMemo+"</div></div></div>";
			$(".context").html(a);
		}
	});
	
}