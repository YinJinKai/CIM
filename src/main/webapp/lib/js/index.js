$(document).ready(function(){
   $('#loginbtn').linkbutton({    
    iconCls: 'icon-ok',
      width: 100,
		height: 30
   });
    $('#forgetloginbtn').linkbutton({   
    	iconCls: 'icon-help',
       plain:true,
         width: 100,
		height: 30
   });
	$('#username').textbox({
		iconCls: 'icon-man',
		iconAlign: 'right',
		width: 200,
		height: 30,
		prompt: '请输入用户名'

	});
	$("#password").passwordbox({ 
		iconCls: 'icon-lock',
        prompt: 'Password', 
        width: 200,
		height: 30,
        showEye: true 
    }); 
   $('#loginbox').dialog({    
    title: '后台登录',    
    width: 300,    
    height: 300,    
    closed: true,    
    cache: false, 
    modal: true
   });
	$('#btn1').linkbutton({    
    
   });  
   $('#btn2').linkbutton({    
    
   });
   $('#btn3').linkbutton({    
    
   });
   $('#btn4').linkbutton({    
    
   });
   $('#btn5').linkbutton({    
    
   });
   $('#btn6').linkbutton({    
	    
   });  
   $('#btn7').linkbutton({    
    
   });
   $('#btn8').linkbutton({    
    
   });
   $('#btn9').linkbutton({    
    
   });
   $('#btn10').linkbutton({    
    
   }); 
   loadError();
});
//	    方法的参数是点击按钮时 传过来的 url是要显示的页面
		function showtabs(titleText, url) {
			if($('#tt').tabs("exists", titleText)) {
            $('#tt').tab("select", titleText);
			} else {
				var content="<iframe src='"+url+"' frameborder=0 scrolling='auto' style='width:100%;height:100%'/>"
				$('#tt').tabs('add', {
					iconCls:'icon-reload',
					title: titleText,
					content: content,
					closable: true //可关闭
				});

			}

		}
//显示登录框
function adminlogin(){
	$('#loginbox').window('open'); 
}
//加载错误信息
function loadError(){
	var error=$("#errorinfor").html();
	if(error!=""){
		$('#loginbox').window('open'); 
	}
}
