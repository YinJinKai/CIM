$(document).ready(function(){
	$('#classNumber').textbox({  
		required:true,
    });
	$('#className').textbox({  
		required:true,
    });
    $('#classBirthDate').datebox({    
        required:true   
    }); 
    $('#classMemo').textbox({  
    	required:true,
    	multiline:true
    });
    $('#classSpecialFieldNumber').combobox({
    	url:'major_showMajorCombox',
	    valueField:'majorId',    
	    textField:'majorName'
	}); 
    $('#classTeacherCharge').combobox({
    	url:'teacher_showTeacherCombox',
	    valueField:'teacherId',    
	    textField:'teacherName'
	}); 
	$('#btn1').linkbutton({    
    iconCls: 'icon-undo'   
    }); 
    $('#btn2').linkbutton({    
    iconCls: 'icon-save'   
    }); 
	
});
function unDo() {
	$("#classNumber").textbox("setValue","");
	$("#className").textbox("setValue","");
	$("#classBirthDate").datebox("setValue","");
	$("#classMemo").textbox("setValue","");
}