$(document).ready(function(){
	$('#tb').textbox({    
    buttonText:'搜索',
    buttonAlign:"left",
    buttonIcon:'icon-search'
});
	loadNewsDeatils();
});
function loadNewsDeatils() {
	var id=$("#cid").find("li").find("span").html();
	$.ajax({
		url : "news_showNewsInforbyId?news.id="+id+"",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			var a="<img src='"+data[0].newsPhoto+"'/>";
			var b="<div class='newsdtime textalign'>"+data[0].newsDate+"</div>"
				+"<div class='newsdtitle textalign'>"+data[0].newsTitle+"</div>"
				+"<div class='newsdcontext2 textalign'>"+data[0].newsContent+"</div>";
			$(".newsdPhoto").html(a);
			$(".newsdcontext").html(b);
		}
	});
}