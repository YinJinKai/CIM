<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/selectCollege.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/selectCollege.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>

	<table id="dg"></table>
	<div id="menu" style="padding: 10px 5px;">
		<!--&nbsp;&nbsp;&nbsp;&nbsp;
			班级:&nbsp;<input id="classNumber" type="text" style="width:100px;">&nbsp;&nbsp;&nbsp;&nbsp;
			学生:&nbsp;<input id="username" type="text" style="width:100px">&nbsp;&nbsp;&nbsp;&nbsp;
			时间:&nbsp;<input id="time" name="dept" value="aa">&nbsp;&nbsp;-->
		<a id="btn" href="#">修改</a> <a id="btn1" href="#">删除</a>
	</div>
</body>
</html>