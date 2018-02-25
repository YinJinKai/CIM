$(document).ready(function(){
	loadOldNews();
});


function loadOldNews(){
	$.ajax({
		url : "news_showNewsInfor",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var a="";
			for (var i = 0; i < data.length; i++) {
				a+="<div class='cnews'><a style='display:none' id='oldId"+i+"'>"+data[i].id+"</a>"
					+"<div class='jianxun' onclick='showDeatils("+data[i].id+")'><span class='ct'>"+data[i].newsTitle+"</span><span class='cd'>"+data[i].newsDate+"</span></div></div>";
			}
			$(".oldTitleContext").html(a);
		}
	});
}
function showDeatils(a){
	window.location.href = "news_toNewsDeatilsPage?news.id="+a+"";
	
}