package com.system.action;

import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.system.model.UserModel;
import com.system.service.UserLoginService;
import com.util.FormatEmpty;

@Controller
@Scope("prototype")
public class LoginAction extends ActionSupport {
	private UserModel user;
    private List<String> listResult;
    
	public List<String> getListResult() {
		return listResult;
	}

	public void setListResult(List<String> listResult) {
		this.listResult = listResult;
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}

	@Autowired
	private UserLoginService userLoginService;
    public String toAdminIndex() {
    	return "toAdminIndex";
    }
	public String checkLogin() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String userName = user.getUsername();
		String password = user.getPassword();
		if (FormatEmpty.isEmpty(userName)) {
			this.addActionMessage("请填写用户名!");
			return "inputnull";
		}
		if (FormatEmpty.isEmpty(password)) {
			this.addActionMessage("请填写密码!");
			return "inputnull";
		}
		UserModel loginInfor = new UserModel();
		loginInfor.setUsername(userName);
		loginInfor.setPassword(password);
		Boolean flag = userLoginService.checkLogin(loginInfor);
		if (!flag) {
			this.addActionMessage("账号或密码错误!");
			return "inputnull";
		}
		request.getSession().setAttribute("userName", userName);
		System.out.println(request.getSession().getAttribute("userName"));
		return "success_view";

	}
	public String loginInfor() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String infor = (String) request.getSession().getAttribute("userName");
		ArrayList<String> list=new ArrayList<String>();
		list.add(infor);
		listResult=list;
		return "loginInfor";
		
	}
	public String loginout() {
		HttpServletRequest request = ServletActionContext.getRequest();
	    request.getSession().removeAttribute("userName");
	    System.out.println(request.getSession().getAttribute("userName"));
		return "loginout";
		
	}
}
