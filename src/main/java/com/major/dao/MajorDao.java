package com.major.dao;

import java.util.List;

import com.major.model.MajorModel;

public interface MajorDao {
	int save(MajorModel ma);
	List<MajorModel> select(MajorModel ma);
	List<MajorModel> selectById(MajorModel ma);
}
