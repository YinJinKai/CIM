<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/news.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/easyui/themes/ui-pepper-grinder/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/easyui/themes/icon.css" />
<script src="<%=request.getContextPath()%>/lib/js/jquery-3.2.1.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="<%=request.getContextPath()%>/lib/easyui/jquery.easyui.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="<%=request.getContextPath()%>/lib/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/lib/js/tools.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/lib/js/news.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="context">
			<div class="topbox">
			    <em></em>
			    <div class="in_searchbox">
					<input id="tb" type="text" style="width:100%;height:100%">
				</div>
			</div>
			<div class="middlebox">
			<div class="leftBox">
				<div class="newsPhoto">
				<div id="newsPhoto"></div>
					
					<div class="newsDateBox">
					</div>
				</div>
				<div class="newsTitle">
					
				</div>
			</div>
			<div class="rightBox">
				<div class="oldTitle">
					往期新闻
				</div>
				<div class="oldTitleContext">
				
				
				</div>
			</div>
		    </div>
			</div>
</body>
</html>