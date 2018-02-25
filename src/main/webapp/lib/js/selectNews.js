$(document).ready(function() {
	// 主表
	$('#dg').datagrid({
		url : "news_showNewsInfor",
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
			width : 20
		}, {
			field : 'newsTitle',
			title : '新闻标题',
			width : 200
		}, {
			field : 'newsContent',
			title : '新闻内容',
			width : 500
		}, {
			field : 'newsDate',
			title : '发布日期',
			width : 50
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
