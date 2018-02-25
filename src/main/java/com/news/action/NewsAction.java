package com.news.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.json.JsonArray;
import javax.json.JsonObject;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.news.model.NewsModel;
import com.news.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;
import com.util.FormatEmpty;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@Scope("prototype")
public class NewsAction extends ActionSupport{
private NewsModel news;
private List<NewsModel> listResult;
private File file;  
//文件名称  
private String fileFileName;  

//文件类型  
private String fileContentType;

public List<NewsModel> getListResult() {
	return listResult;
}

public void setListResult(List<NewsModel> listResult) {
	this.listResult = listResult;
}

public NewsModel getNews() {
	return news;
}

public void setNews(NewsModel news) {
	this.news = news;
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
private NewsService newsService;
public String toAddPage() {
	return "toAddPage";
}
public String toshowNewsPage() {
	return "toshowNewsPage";
}
public String toNewsDeatilsPage() {
	String id=news.getId()+"";
	this.addActionMessage(id);
	return "toNewsDeatilsPage";
}
public String toAdminSelectNewsPage() {
	return "toAdminSelectNewsPage";
}
public String add() throws IOException {
	if(FormatEmpty.isEmpty(news.getNewsTitle())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(news.getNewsDate())) {
		   return null;	
		}
	if(FormatEmpty.isEmpty(news.getNewsContent())) {
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
	news.setNewsPhoto(fileUrl);
	Boolean flag = newsService.save(news);
	if(flag) {
		this.addActionMessage("1");
		return "addSuccess";
	}
	this.addActionMessage("0");
	return "addError";
	
}
public String showNewsInfor() {
	NewsModel n=new NewsModel();
	List<NewsModel> list = newsService.select(n);
	listResult=list;
	JSONArray result = JSONArray.fromObject(list);
	System.out.println(result.toString());
	return "showNewsInfor";
	
}
public String showNewsInforbyId() {
	Integer id = news.getId();
	if(FormatEmpty.isEmpty(id)) {
		return null;
	}
	List<NewsModel> list = newsService.selectById(news);
	listResult=list;
	return "showNewsInforbyId";
	
}
}
