$(document).ready(function() {
	// 主表
	$('#dg').datagrid({
		url : "college_selectAll",
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
			field : 'collegeNumber',
			title : '学院编号',
			width : 100
		}, {
			field : 'collegeName',
			title : '学院名称',
			width : 100
		}, {
			field : 'collegeBirthDate',
			title : '成立日期',
			width : 100
		}, {
			field : 'collegeMan',
			title : '院长姓名',
			width : 100
		}, {
			field : 'collegeTelephone',
			title : '练习电话',
			width : 100
		}, {
			field : 'collegeMemo',
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
