$(document).ready(function(){
	loadCollegeInfor();
	
	
	
});
function loadCollegeInfor(){
	$.ajax({
		url : "college_showLoginCollegePage",
		data : {
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var h="";
			for (var i = 0; i < data.length; i++) {
				h+="<div class='inforBox' onclick='toInforPage("+i+")'><a id='a"+i+"' style='display:none;'>"+data[i].id+"</a>"
					+"<div class='inforimg'>"
					+"<img src='"+data[i].url+"'  class='cimg'/></div>"
					+"<div class='infortext'>"+data[i].collegeName+"</div></div>";
			}
			$(".context").html(h);
		}
	});
	
}
function toInforPage(a){
	var id=$("#a"+a).html();
	window.location.href = "college_toshowCollegedetails?college.id="+id+"";
}