$(document).ready(function(){
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
   $('#btn11').linkbutton({    
    
   });  
   $('#btn12').linkbutton({    
    
   });
   $('#btn13').linkbutton({    
    
   });
   $('#btn14').linkbutton({    
    
   });
   $('#btn15').linkbutton({    
    
   });
 $('#btn16').linkbutton({    
    
   });  
   $('#btn17').linkbutton({    
    
   });
   $('#btn18').linkbutton({    
    
   });
   $('#btn19').linkbutton({    
    
   });
   $('#btn20').linkbutton({    
    
   });

	
	
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
function loginout() {
	$.messager.confirm('确认','您确认退出登录吗？',function(r){    
	    if (r){    
	    	window.location.href = "login_loginout";  
	    }    
	}); 
	
	
}