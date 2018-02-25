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
	href="<%=request.getContextPath()%>/lib/css/selectStudent.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/selectStudent.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>

	<table id="dg"></table>
	<div id="menu" style="padding: 10px 5px;">
		
	</div>
		<div id="dd">
			<div class="upbox"><a class="title titler">姓名:</a><input id="studentName" type="text"></div>
			<div class="upbox"><a class="title titler">班级:</a><input id="studentClassNumber" type="text"></div>
			<div class="upbox"><a class="title titler">政治面貌:</a><input id="studentState" type="text"></div>
			<div class="upbox"><a class="title titler">联系电话:</a><input id="studentTelephone" type="text"></div>
			<div class="gradebtn levelbox">
				<a id="gradebtn" onclick="tijiao()">修改</a><a id="btn1" href="#">删除</a>
			</div>
		</div>
</body>
</html>