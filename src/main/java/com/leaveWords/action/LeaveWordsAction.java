package com.leaveWords.action;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.leaveWords.model.LeaveWordsModel;
import com.leaveWords.service.LeaveWordsService;
import com.opensymphony.xwork2.ActionSupport;
import com.util.FormatEmpty;
import com.util.Tools;

@Controller
@Scope("prototype")
public class LeaveWordsAction extends ActionSupport{
	private LeaveWordsModel leaveWords;
	private List<LeaveWordsModel> listReulst;
	private HashMap<String , Object> mapReulst;
	private Integer page;
	private Integer rows;
	
	public HashMap<String, Object> getMapReulst() {
		return mapReulst;
	}

	public void setMapReulst(HashMap<String, Object> mapReulst) {
		this.mapReulst = mapReulst;
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

	public List<LeaveWordsModel> getListReulst() {
		return listReulst;
	}

	public void setListReulst(List<LeaveWordsModel> listReulst) {
		this.listReulst = listReulst;
	}
	public LeaveWordsModel getLeaveWords() {
		return leaveWords;
	}

	public void setLeaveWords(LeaveWordsModel leaveWords) {
		this.leaveWords = leaveWords;
	}

	//跳转页面
	public String toleaveWordsPage() {
		return "toLeaveWordsPage";
	}
	@Autowired
	private LeaveWordsService leaveWordsService;
	
	public String addLeaveWords() {
		if(FormatEmpty.isEmpty(leaveWords.getLeaveContent())) {
			return "isNull";
		}
		if(FormatEmpty.isEmpty(leaveWords.getEmail())) {
			String str="匿名";
			leaveWords.setEmail(str);
		}
		String data = Tools.dateFormate();
		leaveWords.setSumbitDate(data);
		Boolean flag = leaveWordsService.save(leaveWords);
		if(flag) {
			return "addSuccess";
		}
		return "addfail";
	}
	public String selectAllInfor() {
		LeaveWordsModel leave=new LeaveWordsModel();
		leave.setPage(page);
		leave.setRows(rows);
		int zcount = leaveWordsService.selectCount(leave);
		leave.getPager().setRowCount(zcount);
		int[] pageNumber=leave.getPager().getIndexs();
		
		List<LeaveWordsModel> inforList = leaveWordsService.selectAll(leave);
		HashMap<String , Object> qureyListMap = new HashMap();
		qureyListMap.put("totalCount", zcount);
		qureyListMap.put("upadtelist", inforList);
		qureyListMap.put("pageNumber", pageNumber);
		mapReulst=qureyListMap;
		return "selectAllInfor";
		
	}
}
