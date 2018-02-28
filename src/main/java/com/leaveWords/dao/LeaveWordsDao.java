package com.leaveWords.dao;

import java.util.List;

import com.leaveWords.model.LeaveWordsModel;

public interface LeaveWordsDao {
  int save(LeaveWordsModel lw);
  List<LeaveWordsModel> selectAll(LeaveWordsModel lw);
  int selectCount(LeaveWordsModel lw);
}
