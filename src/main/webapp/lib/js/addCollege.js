$(document).ready(function(){
	$('#collegeNumber').textbox({  
		required:true,
    });
	$('#collegeName').textbox({  
		required:true,
    });
    $('#collegeBirthDate').datebox({    
        required:true   
    }); 
    $('#collegeMan').textbox({  
    	required:true,
    });
    $('#collegeTelephone').textbox({  
    	required:true,
    });
    $('#collegeMemo').textbox({  
    	required:true,
    	multiline:true
    });
	$('#btn1').linkbutton({    
    iconCls: 'icon-undo'   
    }); 
    $('#btn2').linkbutton({    
    iconCls: 'icon-save'   
    }); 
	
});
function unDo() {
	$("#collegeNumber").textbox("setValue","");
	$("#collegeName").textbox("setValue","");
	$("#collegeBirthDate").datebox("setValue","");
	$("#collegeMan").textbox("setValue","");
	$("#collegeTelephone").textbox("setValue","");
	$("#collegeMemo").textbox("setValue","");
}