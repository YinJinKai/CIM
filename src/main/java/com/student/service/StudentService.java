package com.student.service;

import java.util.List;

import com.student.model.StudentModel;

public interface StudentService {
	Boolean save(StudentModel st);
	List<StudentModel> select(StudentModel st);
	List<StudentModel> selectById(StudentModel st);
	Boolean update(StudentModel st);
	int selectCount(StudentModel st);
	List<StudentModel> selectByPage(StudentModel st);
}
