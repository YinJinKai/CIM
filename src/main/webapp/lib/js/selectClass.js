$(document).ready(function() {
	// 主表
	$('#dg').datagrid({
		url : "class_selectAll",
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
			field : 'classNumber',
			title : '班级编号',
			width : 100
		}, {
			field : 'className',
			title : '班级名称',
			width : 100
		}, {
			field : 'classSpecialFieldNumber',
			title : '所属专业',
			width : 100
		}, {
			field : 'classBirthDate',
			title : '建立日期',
			width : 100
		}, {
			field : 'classTeacherCharge',
			title : '辅导员',
			width : 100
		}, {
			field : 'classMemo',
			title : '班级简介',
			width : 100
		} ] ]
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
