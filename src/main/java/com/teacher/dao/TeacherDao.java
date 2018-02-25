package com.teacher.dao;

import java.util.List;

import com.teacher.model.TeacherModel;


public interface TeacherDao {
	int save(TeacherModel te);
	List<TeacherModel> select(TeacherModel te);
	List<TeacherModel> selectById(TeacherModel te);
	List<TeacherModel> selectBySearch(TeacherModel te);
}
