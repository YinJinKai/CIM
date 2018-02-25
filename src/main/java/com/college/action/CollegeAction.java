package com.college.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.json.JsonArray;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

import com.college.model.CollegeModel;
import com.college.service.CollegeService;
import com.college.service.impl.CollegeServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.util.FormatEmpty;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@Controller
@Scope("prototype")
public class CollegeAction extends ActionSupport{
private CollegeModel college;
private String result;
private List<CollegeModel> listResult;
private List<Map<String, Object>> comboxlistResult;
private File file;  
//文件名称  
private String fileFileName;  
  
//文件类型  
private String fileContentType;  

public List<Map<String, Object>> getComboxlistResult() {
	return comboxlistResult;
}

public void setComboxlistResult(List<Map<String, Object>> comboxlistResult) {
	this.comboxlistResult = comboxlistResult;
}

public File getFile() {
	return file;
}

public void setFile(File file) {
	this.file = file;
}

public String getFileFileName() {
	return fileFileName;
}

public void setFileFileName(String fileFileName) {
	this.fileFileName = fileFileName;
}

public String getFileContentType() {
	return fileContentType;
}

public void setFileContentType(String fileContentType) {
	this.fileContentType = fileContentType;
}

public List<CollegeModel> getListResult() {
	return listResult;
}

public void setListResult(List<CollegeModel> listResult) {
	this.listResult = listResult;
}

public CollegeModel getCollege() {
	return college;
}

public void setCollege(CollegeModel college) {
	this.college = college;
}

public String getResult() {
	return result;
}

public void setResult(String result) {
	this.result = result;
}

public CollegeService getCollegeService() {
	return collegeService;
}

public void setCollegeService(CollegeService collegeService) {
	this.collegeService = collegeService;
}

@Autowired
private CollegeService collegeService;
//跳转页面
public String toAddPage() {
	return "toAddPage";
}
public String toSelectPage() {
	return "toSelectPage";
}
public String tologinXueyuanPage() {
	return "toXueyuanSuccess";
}
public String toshowCollegedetails() {
	String id=college.getId()+"";
	this.addActionMessage(id);
	return "toshowCollegedetails";
}
//添加学院信息
public String add() throws IOException {
	String collegeNumber = college.getCollegeNumber();
	if(FormatEmpty.isEmpty(collegeNumber)) {
		return null;
	}
	String collegeName = college.getCollegeName();
	if(FormatEmpty.isEmpty(collegeName)) {
		return null;
	}
	String collegeBirthDate = college.getCollegeBirthDate();
	if(FormatEmpty.isEmpty(collegeBirthDate)) {
		return null;
	}
	String collegeMan = college.getCollegeMan();
	if(FormatEmpty.isEmpty(collegeMan)) {
		return null;
	}
	String collegeTelephone = college.getCollegeTelephone();
	if(FormatEmpty.isEmpty(collegeTelephone)) {
		return null;
	}
	String collegeMemo = college.getCollegeMemo();
	if(FormatEmpty.isEmpty(collegeMemo)) {
		return null;
	}
	String fileUrl="";
	if(!FormatEmpty.isEmpty(file)) {
		
		String path = ServletActionContext.getServletContext().getRealPath("uploadFile");  
		System.out.println(path); 
		String fileName = UUID.randomUUID()+".jpg";
		 File dir = new File(path);
	
		if(!dir.exists()){  
			dir.mkdir(); //创建该目录  
	        }  
		File file2 = new File(path,fileName);
		//第一种文件上传的方法  
        //声明文件输入流，为输入流指定文件路径  
        // 文件上传:  
        FileUtils.copyFile(file, file2);  
        fileUrl="/CIM/uploadFile/"+fileName;
	}
	college.setUrl(fileUrl);
	Boolean flag = collegeService.save(college);
	if(flag) {
		this.addActionMessage("1");
		return "addSuccess";
	}
	this.addActionMessage("0");
	return "addError";
	
}
public String selectAll() {
	CollegeModel college1=new CollegeModel();
	List<CollegeModel> list = collegeService.select(college1);
	listResult=list;
	return "selectSuccess";
}
public String showLoginCollegePage() {
	CollegeModel college1=new CollegeModel();
	List<CollegeModel> list = collegeService.select(college1);
	listResult=list;
	return "showLoginCollegePageSuccess";
}
public String showCollegedetails() {
	System.out.println(college.getId()+"22222");
	List<CollegeModel> list = collegeService.selectById(college);
	JSONArray json = JSONArray.fromObject(list);
	System.out.println(json.toString());
	listResult=list;
	return "showCollegedetails";
}
public String showCollegeCombox() {
	ArrayList<Map<String, Object>> List = new ArrayList<Map<String, Object>>();
	CollegeModel college1=new CollegeModel();
	List<CollegeModel> list = collegeService.select(college1);
	
	for(CollegeModel a:list) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("collegeId", a.getId());
		map.put("collegeName", a.getCollegeName());
		List.add(map);
	}
	List.get(0).put("selected", true);
	comboxlistResult=List;
	return "showCollegeCombox";
}
}
