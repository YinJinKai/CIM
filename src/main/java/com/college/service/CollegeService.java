package com.college.service;

import java.util.List;

import com.college.model.CollegeModel;

public interface CollegeService {
	Boolean save(CollegeModel co);
	List<CollegeModel> select(CollegeModel co);
	List<CollegeModel> selectById(CollegeModel co);
}
