<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/addClass.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/addClass.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="context">
	       <s:form action="class_add" method="post" namespace="/" theme="simple" enctype="multipart/form-data">
			<div class="cbox">
				<div class="addbox"><label>班级编号:</label><a><input id="classNumber" name="classInfor.classNumber" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>班级名称:</label><a><input id="className" name="classInfor.className"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>所属专业:</label><a><input id="classSpecialFieldNumber" name="classInfor.classSpecialFieldNumber"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>成立日期:</label><a><input id="classBirthDate"name="classInfor.classBirthDate" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>班主任:</label><a><input id="classTeacherCharge"name="classInfor.classTeacherCharge" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label style="vertical-align: top">简介:</label><a><input id="classMemo"name="classInfor.classMemo" type="text" style="width:200px;height:100px;"></a></div>
				<div class="addbtn"><a id="btn1" onclick="unDo()">重置</a><a id="btn2" onclick="document.forms[0].submit();">上传</a></div>
			</div>
			</s:form>
		</div>
</body>
</html>