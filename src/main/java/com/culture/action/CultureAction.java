package com.culture.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class CultureAction extends ActionSupport{
	//跳转页面
	public String toCulturePage() {
		return "toCulturePage";
	}
}
