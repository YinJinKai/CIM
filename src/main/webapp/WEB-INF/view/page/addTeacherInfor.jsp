<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/addTeacher.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/addTeacher.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="context">
	       <s:form action="teacher_add" method="post" namespace="/" theme="simple" enctype="multipart/form-data">
			<div class="cbox">
				<div class="addbox"><label>教师编号:</label><a><input id="teacherNumber" name="teacher.teacherNumber" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>教师姓名:</label><a><input id="teacherName" name="teacher.teacherName"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>登录密码:</label><a><input id="teacherPassword" name="teacher.teacherPassword"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>性别:</label><a><input id="teacherSex"name="teacher.teacherSex" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>出生日期:</label><a><input id="teacherBirthday"name="teacher.teacherBirthday" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>入职日期:</label><a><input id="teacherArriveDate"name="teacher.teacherArriveDate" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>身份证号:</label><a><input id="teacherCardNumber"name="teacher.teacherCardNumber" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>联系电话:</label><a><input id="teacherPhone"name="teacher.teacherPhone" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>地址:</label><a><input id="teacherAddress"name="teacher.teacherAddress" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>教师照片:</label><a><input id="teacherPhoto"name="file" type="file" style="width:200px;"></a></div>
				<div class="addbox"><label style="vertical-align: top">简介:</label><a><input id="teacherMemo"name="teacher.teacherMemo" type="text" style="width:200px;height:100px;"></a></div>
				<div class="addbtn"><a id="btn1" onclick="unDo()">重置</a><a id="btn2" onclick="document.forms[0].submit();">上传</a></div>
			</div>
			</s:form>
		</div>
</body>
</html>