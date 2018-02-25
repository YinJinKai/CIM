$(document).ready(function(){
	$('#studentNumber').textbox({  
		required:true,
    });
	$('#studentName').textbox({  
		required:true,
    });
	$('#studentPassword').textbox({  
		required:true,
    });
	$('#studentSex').combobox({       
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

    $('#studentBirthday').datebox({    
        required:true   
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
	$('#studentTelephone').textbox({  
		required:true,
    });
    $('#studentEmail').textbox({  
    	required:true,
    	validType:['email','length[0,20]']
    });
    $('#studentAddress').textbox({  
    	required:true,
    });
    $('#studentMemo').textbox({  
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
	$("#studentNumber").textbox("setValue","");
	$("#studentName").textbox("setValue","");
	$("#studentBirthday").datebox("setValue","");
	$("#studentPassword").textbox("setValue","");
	$("#studentAddress").textbox("setValue","");
	$("#studentTelephone").textbox("setValue","");
	$("#studentMemo").textbox("setValue","");
	$("#studentEmail").textbox("setValue","");
}