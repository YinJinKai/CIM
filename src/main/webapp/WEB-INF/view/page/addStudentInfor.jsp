<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/addStudent.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/addStudent.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="context">
	       <s:form action="student_add" method="post" namespace="/" theme="simple" enctype="multipart/form-data">
			<div class="cbox">
				<div class="addbox"><label>学号:</label><a><input id="studentNumber" name="student.studentNumber" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>学生姓名:</label><a><input id="studentName" name="student.studentName"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>登录密码:</label><a><input id="studentPassword" name="student.studentPassword"type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>性别:</label><a><input id="studentSex"name="student.studentSex" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>出生日期:</label><a><input id="studentBirthday"name="student.studentBirthday" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>班级:</label><a><input id="studentClassNumber"name="student.studentClassNumber" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>政治面貌:</label><a><input id="studentState"name="student.studentState" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>联系电话:</label><a><input id="studentTelephone"name="student.studentTelephone" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>邮箱:</label><a><input id="studentEmail"name="student.studentEmail" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>家庭住址:</label><a><input id="studentAddress"name="student.studentAddress" type="text" style="width:200px;"></a></div>
				<div class="addbox"><label>学生照片:</label><a><input id="studentPhoto"name="file" type="file" style="width:200px;"></a></div>
				<div class="addbox"><label style="vertical-align: top">简介:</label><a><input id="studentMemo"name="student.studentMemo" type="text" style="width:200px;height:100px;"></a></div>
				<div class="addbtn"><a id="btn1" onclick="unDo()">重置</a><a id="btn2" onclick="document.forms[0].submit();">上传</a></div>
			</div>
			</s:form>
		</div>
</body>
</html>