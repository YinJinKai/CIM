<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/addNews.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/addNews.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="context">
	       <s:form action="news_add" method="post" namespace="/" theme="simple" enctype="multipart/form-data">
			<div class="cbox">
				<div class="addbox"><label>新闻标题:</label><a><input id="newsTitle" name="news.newsTitle" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>发布日期:</label><a><input id="newsDate" name="news.newsDate"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>新闻图片:</label><a><input id="newsPhoto"name="file" type="file" style="width:200px;"></a></div>
				<div class="addbox"><label style="vertical-align: top">新闻内容:</label><a><input id="newsContent"name="news.newsContent" type="text" style="width:200px;height:300px;"></a></div>
				<div class="addbtn"><a id="btn1" onclick="unDo()">重置</a><a id="btn2" onclick="document.forms[0].submit();">上传</a></div>
			</div>
			</s:form>
		</div>
</body>
</html>