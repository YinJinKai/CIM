package com.leaveWords.model;

import com.util.PagerModel;

public class LeaveWordsModel extends PagerModel{
	private Integer id;
	private String email;
	private String sumbitDate;
	private String leaveContent;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSumbitDate() {
		return sumbitDate;
	}
	public void setSumbitDate(String sumbitDate) {
		this.sumbitDate = sumbitDate;
	}
	public String getLeaveContent() {
		return leaveContent;
	}
	public void setLeaveContent(String leaveContent) {
		this.leaveContent = leaveContent;
	}
	
	
}
