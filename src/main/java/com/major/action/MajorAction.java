package com.major.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.college.model.CollegeModel;
import com.major.model.MajorModel;
import com.major.service.MajorService;
import com.opensymphony.xwork2.ActionSupport;
import com.util.FormatEmpty;
@Controller
@Scope("prototype")
public class MajorAction extends ActionSupport{
private MajorModel major;
private List<Map<String, Object>> comboxlistResult;
private List<MajorModel> listResult;
public MajorModel getMajor() {
	return major;
}

public void setMajor(MajorModel major) {
	this.major = major;
}

public List<Map<String, Object>> getComboxlistResult() {
	return comboxlistResult;
}

public void setComboxlistResult(List<Map<String, Object>> comboxlistResult) {
	this.comboxlistResult = comboxlistResult;
}

public List<MajorModel> getListResult() {
	return listResult;
}

public void setListResult(List<MajorModel> listResult) {
	this.listResult = listResult;
}

@Autowired
private MajorService majorService;
//跳转页面
public String toAddPage() {
	return "toAddPage";
}
public String toAdminSelectInforPage() {
	return "toAdminSelectInforPage";
}
public String add() {
	if(FormatEmpty.isEmpty(major.getSpecialFieldName())) {
		return null;
	}
	if(FormatEmpty.isEmpty(major.getSpecialCollegeNumber())) {
		return null;
	}
	if(FormatEmpty.isEmpty(major.getSpecialFieldNumber())) {
		return null;
	}
	if(FormatEmpty.isEmpty(major.getSpecialMan())) {
		return null;
	}
	if(FormatEmpty.isEmpty(major.getSpecialMemo())) {
		return null;
	}
	Boolean flag = majorService.save(major);
	if(flag) {
		this.addActionMessage("1");
		return "addSuccess";
	}
	this.addActionMessage("0");
	return "addError";
	
}
public String selectAll() {
	MajorModel major1=new MajorModel();
	List<MajorModel> list = majorService.select(major1);
	listResult=list;
	return "selectAll";
	
}
public String showMajorCombox() {
	ArrayList<Map<String, Object>> List = new ArrayList<Map<String, Object>>();
	MajorModel major1=new MajorModel();
	List<MajorModel> list = majorService.select(major1);
	
	for(MajorModel a:list) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("majorId", a.getId());
		map.put("majorName", a.getSpecialFieldName());
		List.add(map);
	}
	List.get(0).put("selected", true);
	comboxlistResult=List;
	return "showMajorCombox";
}
}
