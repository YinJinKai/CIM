$(document).ready(function(){
	$('#specialFieldNumber').textbox({  
		required:true,
    });
	$('#specialFieldName').textbox({  
		required:true,
    });
    $('#specialBirthDate').datebox({    
        required:true   
    }); 
    $('#specialMan').textbox({  
    	required:true,
    });
    $('#specialMemo').textbox({  
    	required:true,
    	multiline:true
    });
    $('#specialCollegeNumber').combobox({
    	url:'college_showCollegeCombox',
	    valueField:'collegeId',    
	    textField:'collegeName'
	}); 
	$('#btn1').linkbutton({    
    iconCls: 'icon-undo'   
    }); 
    $('#btn2').linkbutton({    
    iconCls: 'icon-save'   
    }); 
	
});
function unDo() {
	$("#specialFieldNumber").textbox("setValue","");
	$("#specialFieldName").textbox("setValue","");
	$("#specialBirthDate").datebox("setValue","");
	$("#specialMan").textbox("setValue","");
	$("#specialMemo").textbox("setValue","");
}