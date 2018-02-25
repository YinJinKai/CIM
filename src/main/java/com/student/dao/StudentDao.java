package com.student.dao;

import java.util.List;

import com.student.model.StudentModel;


public interface StudentDao {
	int save(StudentModel st);
	List<StudentModel> select(StudentModel st);
	List<StudentModel> selectById(StudentModel st);
	int update(StudentModel st);
	List<StudentModel> selectByPage(StudentModel st);
	int selectCount(StudentModel st);
}
