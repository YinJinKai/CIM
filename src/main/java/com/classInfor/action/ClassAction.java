package com.classInfor.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.classInfor.model.ClassInforModel;
import com.classInfor.service.ClassService;
import com.college.model.CollegeModel;
import com.opensymphony.xwork2.ActionSupport;
import com.util.FormatEmpty;
@Controller
@Scope("prototype")
public class ClassAction extends ActionSupport{
	private ClassInforModel classInfor;
	private List<Map<String, Object>> comboxlistResult;
	private List<ClassInforModel> listResult;
	
	public List<ClassInforModel> getListResult() {
		return listResult;
	}

	public void setListResult(List<ClassInforModel> listResult) {
		this.listResult = listResult;
	}

	public ClassInforModel getClassInfor() {
		return classInfor;
	}

	public void setClassInfor(ClassInforModel classInfor) {
		this.classInfor = classInfor;
	}
	@Autowired
	private ClassService classService;
	public List<Map<String, Object>> getComboxlistResult() {
		return comboxlistResult;
	}

	public void setComboxlistResult(List<Map<String, Object>> comboxlistResult) {
		this.comboxlistResult = comboxlistResult;
	}

	//跳转页面
	public String toAddPage() {
		return "toAddPage";
	}
	public String toAdminSelectClassInforPage() {
		return "toAdminSelectClassInforPage";
	}
	public String add() {
		if(FormatEmpty.isEmpty(classInfor.getClassNumber())) {
			return null;
		}
		if(FormatEmpty.isEmpty(classInfor.getClassName())) {
			return null;
		}
		if(FormatEmpty.isEmpty(classInfor.getClassSpecialFieldNumber())) {
			return null;
		}
		if(FormatEmpty.isEmpty(classInfor.getClassBirthDate())) {
			return null;
		}
		if(FormatEmpty.isEmpty(classInfor.getClassTeacherCharge())) {
			return null;
		}
		if(FormatEmpty.isEmpty(classInfor.getClassMemo())) {
			return null;
		}
		
		Boolean flag = classService.save(classInfor);
		if(flag) {
			this.addActionMessage("1");
			return "addSuccess";
		}
		this.addActionMessage("0");
		return "addError";
		
	}
	public String showClassCombox() {
		ArrayList<Map<String, Object>> List = new ArrayList<Map<String, Object>>();
		ClassInforModel college1=new ClassInforModel();
		List<ClassInforModel> list = classService.select(college1);
		
		for(ClassInforModel a:list) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("classId", a.getId());
			map.put("className", a.getClassName());
			List.add(map);
		}
		List.get(0).put("selected", true);
		comboxlistResult=List;
		return "showClassCombox";
	}
	public String selectAll() {
		ClassInforModel college1=new ClassInforModel();
		List<ClassInforModel> list = classService.select(college1);
		listResult=list;
		return "selectAll";
		
	}
}
