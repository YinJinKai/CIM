<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/admin.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/easyui/themes/black/easyui.css" />
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
<script src="<%=request.getContextPath()%>/lib/js/admin.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
<body class="easyui-layout">
		<div data-options="region:'north',border:0" style="height:100px;overflow:hidden; background-color: rgba(34, 34, 34, 1)">
		 <div class="header">
		        <em></em><a><span class="span1">后 台 信 息 管 理</span><span class="span2">Information management</span></a>
		    </div>
		   <div class="headerRight">
		       <div class="app2" onclick="loginout()">
						<img class="icon" src="/CIM/lib/img/guanji.png">
					</div>
		   </div>
		</div>
		<div data-options="region:'south',border:1"  style="height:30px;line-height:30px;overflow:hidden; text-align:center;color:white;font-weight:bold; background-color: rgba(34, 34, 34, 1)">
		          Design by 尹金凯
		</div>
		<div data-options="region:'west',title:'管理员导航'" style="width:200px;">
			<!--导航-->
			<div id="aa" data-options="fit:true,selected:true" class="easyui-accordion" style="width:300px;">
				<div title="学院信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn1" onclick="showtabs('【当前位置】-【学院信息管理】-【添加二级学院】','<%=request.getContextPath()%>/college_toAddPage')" style="width:100%">添加二级学院</a>
				    <a id="btn2" onclick="showtabs('【当前位置】-【学院信息管理】-【学院信息查询】','<%=request.getContextPath()%>/college_toSelectPage')" style="width:100%">学院信息查询</a>
				</div>
				<div title="专业信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn3" onclick="showtabs('【当前位置】-【专业信息管理】-【添加专业】','<%=request.getContextPath()%>/major_toAddPage')" style="width:100%">添加专业</a>
				    <a id="btn4" onclick="showtabs('【当前位置】-【专业信息管理】-【专业信息查询】','<%=request.getContextPath()%>/major_toAdminSelectInforPage')" style="width:100%">专业信息查询</a>
				</div>
				<div title="班级信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn5" onclick="showtabs('【当前位置】-【班级信息管理】-【添加班级】','<%=request.getContextPath()%>/class_toAddPage')" style="width:100%">添加班级</a>
				    <a id="btn6" onclick="showtabs('【当前位置】-【班级信息管理】-【班级信息查询】','<%=request.getContextPath()%>/class_toAdminSelectClassInforPage')" style="width:100%">班级信息查询</a>
				</div>
				<div title="教师信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn7" onclick="showtabs('【当前位置】-【教师信息管理】-【添加教师】','<%=request.getContextPath()%>/teacher_toAddPage')" style="width:100%">添加教师</a>
				    <a id="btn8" onclick="showtabs('【当前位置】-【班级信息管理】-【教师信息查询】','<%=request.getContextPath()%>/teacher_toAdminSelectTeacherPage')" style="width:100%">教师信息查询</a>
				</div>
				<div title="学生信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn9" onclick="showtabs('【当前位置】-【学生信息管理】-【添加学生】','<%=request.getContextPath()%>/student_toAddPage')" style="width:100%">添加学生</a>
				    <a id="btn10" onclick="showtabs('【当前位置】-【学生信息管理】-【学生信息查询】','<%=request.getContextPath()%>/student_toAdminSelectStudentPage')" style="width:100%">学生信息查询</a>
				</div>
				<div title="课程信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn11" onclick="showtabs('【当前位置】-【课程信息管理】-【添加课程】','')" style="width:100%">添加课程</a>
				    <a id="btn12" onclick="showtabs('【当前位置】-【课程信息管理】-【课程信息查询】','')" style="width:100%">课程信息查询</a>
				</div>
				<div title="学生选课信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn13" onclick="showtabs('【当前位置】-【学生选课信息管理】-【学生选课】','')" style="width:100%">学生选课</a>
				    <a id="btn14" onclick="showtabs('【当前位置】-【学生选课信息管理】-【选课信息查询】','')" style="width:100%">选课信息查询</a>
				</div>
				<div title="成绩信息管理" data-options="iconCls:'icon-tip'">
					<a id="btn15" onclick="showtabs('【当前位置】-【成绩信息管理】-【成绩记录】','')" style="width:100%">成绩记录</a>
				    <a id="btn16" onclick="showtabs('【当前位置】-【成绩信息管理】-【成绩查询】','')" style="width:100%">成绩查询</a>
				</div>
				<div title="新闻发布管理" data-options="iconCls:'icon-tip'">
					<a id="btn17" onclick="showtabs('【当前位置】-【新闻发布管理】-【添加新闻】','<%=request.getContextPath()%>/news_toAddPage')" style="width:100%">添加新闻</a>
				    <a id="btn18" onclick="showtabs('【当前位置】-【新闻发布管理】-【新闻信息查询】','<%=request.getContextPath()%>/news_toAdminSelectNewsPage')" style="width:100%">新闻信息查询</a>
				</div>
				<div title="密码管理" data-options="iconCls:'icon-tip'">
					<a id="btn19" onclick="showtabs('【当前位置】-【密码管理】-【修改密码】','')" style="width:100%">修改密码</a>
				    <a id="btn20" onclick="showtabs('【当前位置】-【密码管理】-【去登陆】','')" style="width:100%">去登陆</a>
				</div>
			</div>
		</div>
		<!--显示主页-->
		<div data-options="region:'center',border:0" style="background:#eee;">
			<div id="tt" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true">
				<div title="首页" style="display:none;">
					<iframe src='<%=request.getContextPath()%>/login_toAdminIndex' frameborder=0 scrolling='auto' style='width:100%;height:100%' />
				</div>
			</div>
		</div>

	</body>
</body>
</html>