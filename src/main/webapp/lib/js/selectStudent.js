$(document).ready(function() {
	// 主表
	$('#dg').datagrid({
		url : "student_paginationselectAll",
		fitColumns : true,
		toolbar : '#menu',
		pagination : true,
		ctrlSelect : true,
		pageSize : 10,
		pageNumber:1,
		pageList : [ 10, 15, 25, 30 ],
		fit:true,
		striped : true,
		columns : [ [ {
			field : 'id',
			title : 'ID',
			width : 100
		}, {
			field : 'studentNumber',
			title : '学号',
			width : 100
		}, {
			field : 'studentName',
			title : '姓名',
			width : 100
		}, {
			field : 'studentSex',
			title : '性别',
			width : 100
		}, {
			field : 'studentClassNumber',
			title : '班级',
			width : 100
		}, {
			field : 'studentState',
			title : '政治面貌',
			width : 100
		}, {
			field : 'studentTelephone',
			title : '联系电话',
			width : 100
		}, {
			field : 'studentEmail',
			title : '邮箱',
			width : 100
		}, {
			field : 'studentAddress',
			title : '地址',
			width : 100
		}, {
			field : 'studentMemo',
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
	//修改框
	$('#studentName').textbox({    
	         
	});
	$('#studentTelephone').textbox({    
	         
	});
	   $('#studentClassNumber').combobox({    
		    url:'class_showClassCombox',    
		    valueField:'classId',    
		    textField:'className'   
		}); 
	 $('#studentState').combobox({    
    	 valueField:'id',    
 	    textField:'text',
 	    data: [{
 	    	id: '1',
 	    	text: '团员'
 		},{
 	    	id: '0',
 	    	text: '党员'
 		},{
 	    	id: '2',
 	    	text: '平民',
 	    	selected:true
 		}]  
	}); 
	$('#gradebtn').linkbutton({
		iconCls: 'icon-ok'
	});
	$('#dd').dialog({
		title: '修改信息',
		width: 350,
		height: 350,
		closed: true,
		cache: false,
		modal: true
	});
	$('#dg').datagrid({
		onClickRow : function(index, row) {
			updateStudent();
		}
	});
});


function updateStudent(){
	var rows=$('#dg').datagrid('getSelected');
	var id=rows.id;
	$.ajax({
		url:"student_selectByIdInfor",
		data : {
			"student.id":id
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			$("#studentName").textbox("setValue",data[0].studentName);
			$("#studentTelephone").textbox("setValue",data[0].studentTelephone);
			$("#studentClassNumber").combobox("setValue",data[0].studentClassNumber);
			$('#studentState').combobox("setValue",data[0].studentState);
			$('#dd').window('open');
			
		}


	});
}
function tijiao() {
	var rows=$('#dg').datagrid('getSelected');
	var id=rows.id;
	var studentName=$("#studentName").textbox("getValue");
	var studentTelephone=$("#studentTelephone").textbox("getValue");
	var studentClassNumber=$("#studentClassNumber").combobox("getValue");
	var studentState=$('#studentState').combobox("getValue");
	$.ajax({
		url:"student_updateByIdInfor",
		data : {
			"student.id":id,
			"student.studentName":studentName,
			"student.studentTelephone":studentTelephone,
			"student.studentClassNumber":studentClassNumber,
			"student.studentState":studentState
			
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			$('#dg').datagrid('reload'); 
			$('#dd').window('close');
			
		}


	});
}
