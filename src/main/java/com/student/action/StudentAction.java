package com.student.action;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.student.model.StudentModel;
import com.student.service.StudentService;
import com.util.FormatEmpty;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@Scope("prototype")
public class StudentAction extends ActionSupport{
	
	private StudentModel student;
	private List<StudentModel> listResult;
	
	public List<StudentModel> getListResult() {
		return listResult;
	}

	public void setListResult(List<StudentModel> listResult) {
		this.listResult = listResult;
	}
	private File file;
	// 文件名称
	private String fileFileName;

	// 文件类型
	private String fileContentType;

	public StudentModel getStudent() {
		return student;
	}

	public void setStudent(StudentModel student) {
		this.student = student;
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
private StudentService studentService;
//跳转页面
public String toAddPage() {
	return "toAddPage";
}
public String toAdminSelectStudentPage() {
	return "toAdminSelectStudentPage";
}
public String add() throws IOException {
	if(FormatEmpty.isEmpty(student.getStudentNumber())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentName())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentSex())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentBirthday())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentState())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentEmail())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentAddress())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(student.getStudentMemo())) {
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
	student.setStudentPhoto(fileUrl);
	Boolean flag = studentService.save(student);
	if(flag) {
		this.addActionMessage("1");
		return "addSuccess";
	}
	this.addActionMessage("0");
	return "addError";
	
}

public String selectAll() {
	
	StudentModel ss=new StudentModel();
	List<StudentModel> list = studentService.select(ss);
	listResult=list;
	return "selectAll";
	
}
//分页
private Integer page;
private Integer rows;
private Map<String, Object> resultMap;



public Map<String, Object> getResultMap() {
	return resultMap;
}

public void setResultMap(Map<String, Object> resultMap) {
	this.resultMap = resultMap;
}

public Integer getPage() {
	return page;
}

public void setPage(Integer page) {
	this.page = page;
}

public Integer getRows() {
	return rows;
}

public void setRows(Integer rows) {
	this.rows = rows;
}

public String paginationselectAll() {
    StudentModel sm=new StudentModel();
	sm.setPage(page);
	sm.setRows(rows);
	int count = studentService.selectCount(sm);
	StudentModel ss=new StudentModel();
	List<StudentModel> list =studentService.selectByPage(sm);
	Map<String, Object> jsonMap = new HashMap<String, Object>();
	jsonMap.put("total", count);// select count
	jsonMap.put("rows", list);
	JSONArray nn=JSONArray.fromObject(jsonMap);
	System.out.println(nn.toString());
	resultMap=jsonMap;
	return "paginationselectAll";
	
}
public String selectByIdInfor() {
	if(FormatEmpty.isEmpty(student.getId())) {
		   return null;	
		}
	
	List<StudentModel> list = studentService.selectById(student);
	listResult=list;
	return "selectByIdInfor";
	
}


//更新操作
public List<Integer> listInfor;

public List<Integer> getListInfor() {
	return listInfor;
}

public void setListInfor(List<Integer> listInfor) {
	this.listInfor = listInfor;
}

public String updateByIdInfor() {
	if(FormatEmpty.isEmpty(student.getId())) {
		   return null;	
		}
	Boolean flag = studentService.update(student);
	if(flag) {
		List<Integer> list = Arrays.asList(1);
		listInfor=list;
		return "updateByIdInfor";
	}else {
		List<Integer> list = Arrays.asList(2);
		listInfor=list;
		return "updateByIdInfor";
	}
	
	
}
}
