package com.college.dao;

import java.util.List;

import com.college.model.CollegeModel;

public interface CollegeDao {
	int save(CollegeModel co);
	List<CollegeModel> select(CollegeModel co);
	List<CollegeModel> selectById(CollegeModel co);
}
