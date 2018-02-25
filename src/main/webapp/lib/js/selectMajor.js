$(document).ready(function() {
	// 主表
	$('#dg').datagrid({
		url : "major_selectAll",
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
			field : 'specialFieldNumber',
			title : '专业编号',
			width : 100
		}, {
			field : 'specialFieldName',
			title : '专业名称',
			width : 100
		}, {
			field : 'specialCollegeNumber',
			title : '所属学院',
			width : 100
		}, {
			field : 'specialBirthDate',
			title : '建立日期',
			width : 100
		}, {
			field : 'specialMan',
			title : '主任',
			width : 100
		}, {
			field : 'specialMemo',
			title : '简介',
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
