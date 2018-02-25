$(document).ready(function(){
	$('#tb').textbox({    
	    buttonText:'搜索',
	    buttonAlign:"left",
	    buttonIcon:'icon-search'
	});
	loadTime();
	loadOldNews();
	
	
	
});
function loadTime(){
	$.ajax({
		url : "news_showNewsInfor",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var a="";
			for (var i = 0; i < data.length; i++) {
				a+="<a style='display:none' id='showId"+i+"'>"+data[i].id+"</a><div id='news"+i+"' class='newsdate' onclick='shownews("+i+")'><a>"+data[i].newsDate+"<a></div>";
			}
			$(".newsDateBox").html(a);
			$("div[id^='news']").removeClass("onselect");
			$("#news0").addClass("onselect");
			loadfirstNews(data);
		}
	});
}
function loadfirstNews(data){
	var b="<img  src='"+data[0].newsPhoto+"'/>";
	var c="<div class='xwtitle' onclick='showDeatils("+data[0].id+")'>"+data[0].newsTitle+"</div><a style='font-weight: bold;'>...<a>"+
	"<div class='xwcontext'>"+data[0].newsContent+"</div><a>...<a>";
	$("#newsPhoto").html(b);
	$(".newsTitle").html(c);
}
function loadOldNews(){
	$.ajax({
		url : "news_showNewsInfor",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var a="";
			for (var i = 0; i < data.length; i++) {
				a+="<div class='inoldTitleContext'><a style='display:none' id='oldId"+i+"'>"+data[i].id+"</a>"
					+"<div class='datetime'>"+data[i].newsDate+"</div>"
					+"<div class='jianxun' onclick='showDeatils("+data[i].id+")'>"+data[i].newsTitle+"</div></div>";
			}
			$(".oldTitleContext").html(a);
		}
	});
}
function shownews(a){
	if($("div[id^='news']").hasClass("onselect")){
		$("div[id^='news']").removeClass("onselect");
	}
	$("#news"+a).addClass("onselect");
	var news=$("#showId"+a).html();
	$.ajax({
		url : "news_showNewsInforbyId?news.id="+news+"",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var b="<img  src='"+data[0].newsPhoto+"'/>";
			var c="<div class='xwtitle' onclick='showDeatils("+data[0].id+")'>"+data[0].newsTitle+"</div><a style='font-weight: bold;'>...<a>"+
			"<div class='xwcontext'>"+data[0].newsContent+"</div><a>...<a>";
			$("#newsPhoto").html(b);
			$(".newsTitle").html(c);
		}
	});
}
function showDeatils(a){
	window.location.href = "news_toNewsDeatilsPage?news.id="+a+"";
	
}