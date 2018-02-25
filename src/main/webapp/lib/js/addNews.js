$(document).ready(function(){
	$('#newsTitle').textbox({  
		required:true,
		multiline:true
    });
    $('#newsDate').datebox({    
        required:true   
    }); 
	$('#newsContent').textbox({  
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
	$("#newsTitle").textbox("setValue","");
	$("#newsContent").textbox("setValue","");
	$("#newsDate").datebox("setValue","");
}