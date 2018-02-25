package com.teacher.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.major.model.MajorModel;
import com.opensymphony.xwork2.ActionSupport;
import com.teacher.model.TeacherModel;
import com.teacher.service.TeacherService;
import com.util.FormatEmpty;

import net.sf.json.JSONArray;

@Controller
@Scope("prototype")
public class TeacherAction extends ActionSupport{
private TeacherModel teacher;
private List<TeacherModel> reultList;
private List<Map<String, Object>> comboxlistResult;
private File file;
// 文件名称
private String fileFileName;

public List<TeacherModel> getReultList() {
	return reultList;
}

public void setReultList(List<TeacherModel> reultList) {
	this.reultList = reultList;
}

public TeacherService getTeacherService() {
	return teacherService;
}

public void setTeacherService(TeacherService teacherService) {
	this.teacherService = teacherService;
}

public List<Map<String, Object>> getComboxlistResult() {
	return comboxlistResult;
}

public void setComboxlistResult(List<Map<String, Object>> comboxlistResult) {
	this.comboxlistResult = comboxlistResult;
}
// 文件类型
private String fileContentType;



public TeacherModel getTeacher() {
	return teacher;
}

public void setTeacher(TeacherModel teacher) {
	this.teacher = teacher;
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
@Autowired
private TeacherService teacherService;
//跳转页面
public String toAddPage() {
	return "toAddPage";
}
public String toShowTeacherPage() {
	return "toShowTeacherPage";
}
public String toAdminSelectTeacherPage() {
	return "toAdminSelectTeacherPage";
}
public String toTeacherDetail() {
	String id=teacher.getId()+"";
	this.addActionMessage(id);
	return "toTeacherDetail";
}
public String add() throws IOException {
	if(FormatEmpty.isEmpty(teacher.getTeacherNumber())) {
	   return null;	
	}
	if(FormatEmpty.isEmpty(teacher.getTeacherName())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherPassword())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherSex())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherArriveDate())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherCardNumber())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherPhone())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherAddress())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(teacher.getTeacherMemo())) {
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
	teacher.setTeacherPhoto(fileUrl);
	Boolean flag = teacherService.save(teacher);
	if(flag) {
		this.addActionMessage("1");
		return "addSuccess";
	}
	this.addActionMessage("0");
	return "addError";
	
}
public String showAllTeacherInfor() {
	System.out.println("1111111");
	TeacherModel m=new TeacherModel();
	List<TeacherModel> list = teacherService.select(m);

	reultList=list;
	JSONArray n=JSONArray.fromObject(list);
	System.out.println(n.toString());
	System.out.println(list.toString());
	return "showAllTeacherInfor";
	
}
public String showTeacherCombox() {
	ArrayList<Map<String, Object>> List = new ArrayList<Map<String, Object>>();
	TeacherModel m=new TeacherModel();
	List<TeacherModel> list = teacherService.select(m);
	
	for(TeacherModel a:list) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("teacherId", a.getId());
		map.put("teacherName", a.getTeacherName());
		List.add(map);
	}
	List.get(0).put("selected", true);
	comboxlistResult=List;
	return "showTeacherCombox";
}
public String showTeacherdetails() {
	if(FormatEmpty.isEmpty(teacher.getId())) {
		return null;
	}
	List<TeacherModel> list = teacherService.selectById(teacher);
	reultList=list;
	return "showTeacherdetails";
	
}
public String showSearchTeacherInfor() {
	if(FormatEmpty.isEmpty(teacher.getTeacherName())) {
		return null;
	}
	List<TeacherModel> list = teacherService.selectBySearch(teacher);
	reultList=list;
	return "showSearchTeacherInfor";
	
}
}
