$(document).ready(function(){
	loadLeaveWords(1,3);
	$('#tb').textbox({    
  validType: 'email',  
  prompt: '不填为匿名!'
})
});
function stop(){
	var text=$("#leaveContent").val();
	if(text==""){
		return false;
	}

}
function loadLeaveWords(page,rows) {

	
	 var indexPage=page;
	$.ajax({
		url : "leaveWords_selectAllInfor",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		data:{
			page:page,
			rows:rows
		},
		success : function(data) {
			var h="";
			var b="";
			for (var i = 0; i < data.upadtelist.length; i++) {
				h+="<div class='cmt_comment_box'>"
					+"<div class='cmt_author'>"
					+"<span class='cmt_author_name'>"+data.upadtelist[i].email+"</span>"
					+"<span class='cmt_author_date'>"+data.upadtelist[i].sumbitDate+"</span>"
					+"</div>"
					+"<div class='cmt_content'>"
					+"<p>"+data.upadtelist[i].leaveContent+"</p></div></div>";
			}
			
			$("#showLeave").html(h);
			 var last = Math.ceil(data.totalCount / rows);
			 for (var i = 0; i < data.pageNumber.length; i++) {
       		  b+="<a class='pagen' id='a"+data.pageNumber[i]+"'  onclick='loadLeaveWords("+data.pageNumber[i]+",3)'>"+data.pageNumber[i]+"</a>";
				}
			
			  $("#pageNumber").html(b)
				if($(".pagen").hasClass("cur")){
					$(".pagen").removeClass("cur");
				}
			  $("#a"+page).addClass("cur");
		}
	});
}
