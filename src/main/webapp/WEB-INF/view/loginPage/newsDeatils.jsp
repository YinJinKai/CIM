<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/newsd.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/easyui/themes/ui-sunny/easyui.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/newsd.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
    <a id="cid" style="display:none"><s:actionmessage /></a>
		<div class="context">
			<div class="topbox">
				<em></em>
				<div class="in_searchbox">
					<input id="tb" type="text" style="width:100%;height:100%">
				</div>
			</div>
			<div class="newsdPhoto">
				
			</div>
			<div class="newsdcontext">
				
			</div>
			<div class="backIndex">
			   <a href="<%=request.getContextPath()%>/news_toshowNewsPage">新闻中心</a>
			   <a href='<%=request.getContextPath()%>/culture_toCulturePage'>返回主页</a>
			</div>
		</div>
</body>
</html>