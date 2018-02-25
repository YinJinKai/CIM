$(document).ready(function(){
	$('#teacherNumber').textbox({  
		required:true,
    });
	$('#teacherName').textbox({  
		required:true,
    });
	$('#teacherPassword').textbox({  
		required:true,
    });
	$('#teacherSex').combobox({       
	    valueField:'id',    
	    textField:'text',
	    data: [{
	    	id: '1',
	    	text: '男',
	    	selected:true
		},{
	    	id: '0',
	    	text: '女'
		}]
	});  

    $('#teacherBirthday').datebox({    
        required:true   
    }); 
    $('#teacherArriveDate').datebox({    
        required:true   
    });
    $('#studentClassNumber').combobox({    
	    url:'combobox_data.json',    
	    valueField:'id',    
	    textField:'text'   
	}); 
	$('#teacherCardNumber').textbox({  
		required:true,
    });
    $('#teacherPhone').textbox({  
    	required:true
    });
    $('#teacherAddress').textbox({  
    	required:true,
    });
    $('#teacherMemo').textbox({  
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
	$("#teacherNumber").textbox("setValue","");
	$("#teacherName").textbox("setValue","");
	$("#teacherBirthday").datebox("setValue","");
	$("#teacherPassword").textbox("setValue","");
	$("#teacherCardNumber").textbox("setValue","");
	$("#teacherPhone").textbox("setValue","");
	$("#teacherAddress").textbox("setValue","");
	$("#teacherMemo").textbox("setValue","");
}