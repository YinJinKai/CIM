<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高 校 文 化 信 息 展 示 系 统</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/index.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/index.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
<body class="easyui-layout">
	<div id="loginbox" style="background-color: rgba(203, 199, 189, 1)">
		<s:form action="login_checkLogin" method="post" namespace="/"
			theme="simple">
			<div class="inloginerrorbox">
				<a id="errorinfor"><s:actionmessage /></a>
			</div>
			<div class="inloginbox">
				<input id="username" name="user.username" type="text">
			</div>

			<div class="inloginbox">
				<input id="password" name="user.password" type="text">
			</div>
			<div class="inloginbox">
				<a id="loginbtn" onclick="document.forms[0].submit();">登录</a> <a
					id="forgetloginbtn">忘记密码</a>
			</div>
		</s:form>
	</div>
	<div data-options="region:'north',border:0"
		style="height: 100px; background-color: rgba(20, 50, 100, 1)">
		<div class="header">
			<em></em><a><span class="span1">高 校 文 化 信 息 展 示 系 统</span><span
				class="span2">Cultural information display system</span></a>
		</div>
	</div>
	<div data-options="region:'south',border:1"
		style="height: 30px; line-height: 30px; overflow: hidden; text-align: center; color: white; font-weight: bold; background-color: rgba(20, 50, 100, 1)">
		Design by 尹金凯</div>
	<div data-options="region:'west',title:'用户导航'" style="width: 200px;">
		<!--导航-->
		<div id="aa" data-options="fit:true,selected:true"
			class="easyui-accordion" style="width: 300px;">

			<div title="学院信息" data-options="iconCls:'icon-tip'">
				<a id="btn2"
					onclick="showtabs('学院介绍','<%=request.getContextPath()%>/college_tologinXueyuanPage')"
					style="width: 100%">二级学院介绍</a> <a id="btn3"
					onclick="showtabs('专业介绍','')" style="width: 100%">专业介绍</a> <a
					id="btn4" onclick="showtabs('班级信息','')" style="width: 100%">班级信息</a>
			</div>
			<div title="师生事宜" data-options="iconCls:'icon-tip'">
				<a id="btn5"
					onclick="showtabs('教师信息','<%=request.getContextPath()%>/teacher_toShowTeacherPage')"
					style="width: 100%">教师信息</a> <a id="btn6"
					onclick="showtabs('学生信息','')" style="width: 100%">学生信息</a> <a
					id="btn7" onclick="showtabs('课程信息','')" style="width: 100%">课程信息</a>
				<a id="btn8" onclick="showtabs('选课信息','')" style="width: 100%">选课信息</a>
				<a id="btn9" onclick="showtabs('成绩查询','')" style="width: 100%">成绩查询</a>
			</div>
			<div title="新闻中心" data-options="iconCls:'icon-tip'">
				<a id="btn10"
					onclick="showtabs('今日头条','<%=request.getContextPath()%>/news_toshowNewsPage')"
					style="width: 100%">今日头条</a>
			</div>
			
			<div title="评论区" data-options="iconCls:'icon-tip'" style="overflow: hidden;">
				<div class="menuicon">
					<div class="app2" onclick="showtabs('留言','<%=request.getContextPath()%>/leaveWords_toleaveWordsPage')">
						<img class="icon" src="/CIM/lib/img/xin.png">
						<div class="title">留言</div>
					</div>
					<div class="app2" >
						<img class="icon" src="/CIM/lib/img/maps.png">
						<div class="title">帮助</div>
					</div>
				</div>
				
			</div>
			<div title="后台登录" data-options="iconCls:'icon-man'" style="overflow: hidden;">
				<a id="btn1" onclick="adminlogin()" style="width: 100%">登录</a>
				
			</div>
		</div>
	</div>
	<!--显示主页-->
	<div data-options="region:'center',border:0" style="background: #000;">
		<div id="tt" class="easyui-tabs" style="width: 500px; height: 250px;"
			data-options="fit:true">
			<div title="首页" style="display: none;">
				<iframe src='<%=request.getContextPath()%>/culture_toCulturePage'
					frameborder=0 scrolling='auto' style='width: 100%; height: 100%' />
			</div>
		</div>
	</div>

</body>
</body>
</html>