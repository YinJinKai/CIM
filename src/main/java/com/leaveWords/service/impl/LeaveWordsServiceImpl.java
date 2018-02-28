package com.leaveWords.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leaveWords.dao.LeaveWordsDao;
import com.leaveWords.model.LeaveWordsModel;
import com.leaveWords.service.LeaveWordsService;
@Service
public class LeaveWordsServiceImpl implements LeaveWordsService{
	@Autowired
    private LeaveWordsDao leaveWordsDao;
	public Boolean save(LeaveWordsModel lw) {
		// TODO Auto-generated method stub
		int flag = leaveWordsDao.save(lw);
		if(flag!=0) {
			return true;
		}
		return false;
	}

	public List<LeaveWordsModel> selectAll(LeaveWordsModel lw) {
		// TODO Auto-generated method stub
		List<LeaveWordsModel> list = leaveWordsDao.selectAll(lw);
		return list;
	}

	public int selectCount(LeaveWordsModel lw) {
		// TODO Auto-generated method stub
		int ff = leaveWordsDao.selectCount(lw);
		return ff;
	}

}
