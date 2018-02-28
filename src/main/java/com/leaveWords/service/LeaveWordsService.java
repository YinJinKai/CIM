package com.leaveWords.service;

import java.util.List;

import com.leaveWords.model.LeaveWordsModel;

public interface LeaveWordsService {
	 Boolean save(LeaveWordsModel lw);
	  List<LeaveWordsModel> selectAll(LeaveWordsModel lw);
	  int selectCount(LeaveWordsModel lw);
}
