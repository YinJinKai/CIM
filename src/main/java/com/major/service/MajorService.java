package com.major.service;

import java.util.List;

import com.major.model.MajorModel;



public interface MajorService {
	Boolean save(MajorModel ma);
	List<MajorModel> select(MajorModel ma);
	List<MajorModel> selectById(MajorModel ma);
}
