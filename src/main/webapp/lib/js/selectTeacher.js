$(document).ready(function() {
	// 主表
	$('#dg').datagrid({
		url : "teacher_showAllTeacherInfor",
		fitColumns : true,
		toolbar : '#menu',
//		pagination : true,
		ctrlSelect : true,
//		pageSize : 10,
//		pageList : [ 10, 15, 25, 30 ],
		fitColumns : true,
		striped : true,
		columns : [ [ {
			field : 'id',
			title : 'ID',
			width : 100
		}, {
			field : 'teacherNumber',
			title : '教师编号',
			width : 100
		}, {
			field : 'teacherName',
			title : '教师名称',
			width : 100
		}, {
			field : 'teacherSex',
			title : '性别',
			width : 100
		}, {
			field : 'teacherBirthday',
			title : '出生日期',
			width : 100
		}, {
			field : 'teacherArriveDate',
			title : '入职日期',
			width : 100
		}, {
			field : 'teacherCardNumber',
			title : '身份证号',
			width : 100
		}, {
			field : 'teacherPhone',
			title : '电话',
			width : 100
		}, {
			field : 'teacherAddress',
			title : '地址',
			width : 100
		} , {
			field : 'teacherMemo',
			title : '简介',
			width : 100
		}] ]
	});
	// 文本框
	$('#classNumber').textbox({
		readonly : true
	});

	$('#username').textbox({
		readonly : true
	});

	// 下拉框
	$('#time').combobox({
		url : 'combobox_data.json',
		valueField : 'id',
		textField : 'text'
	});

	// 查询
	$('#btn').linkbutton({
		iconCls : 'icon-search'
	});
	$('#btn1').linkbutton({
		iconCls : 'icon-search'
	});
});
