package com.student.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.dao.StudentDao;
import com.student.model.StudentModel;
import com.student.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
private StudentDao studentDao;

	public Boolean save(StudentModel st) {
		// TODO Auto-generated method stub
		int flag = studentDao.save(st);
		if(flag!=0) {
			return true; //添加成功
		}
		return false;
	}

	public List<StudentModel> select(StudentModel st) {
		// TODO Auto-generated method stub
		List<StudentModel> list = studentDao.select(st);
		return list;
	}

	public List<StudentModel> selectById(StudentModel st) {
		// TODO Auto-generated method stub
		List<StudentModel> list=studentDao.selectById(st);
		return list;
	}

	public Boolean update(StudentModel st) {
		// TODO Auto-generated method stub
		int f = studentDao.update(st);
		if(f==0) {
			return true;
		}
		return false;
	}

	public int selectCount(StudentModel st) {
		// TODO Auto-generated method stub
		int count=studentDao.selectCount(st);
		return count;
	}

	public List<StudentModel> selectByPage(StudentModel st) {
		// TODO Auto-generated method stub
		List<StudentModel> list = studentDao.selectByPage(st);
		return list;
	}
}
