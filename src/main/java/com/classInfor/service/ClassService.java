package com.classInfor.service;

import java.util.List;

import com.classInfor.model.ClassInforModel;

public interface ClassService {
	Boolean save(ClassInforModel cm);
	List<ClassInforModel> select(ClassInforModel ma);
	List<ClassInforModel> selectById(ClassInforModel ma);
}
