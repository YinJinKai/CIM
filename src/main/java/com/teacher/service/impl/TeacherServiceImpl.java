package com.teacher.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teacher.dao.TeacherDao;
import com.teacher.model.TeacherModel;
import com.teacher.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService{
	@Autowired
private TeacherDao teacherDao;
	public Boolean save(TeacherModel te) {
		// TODO Auto-generated method stub
		int flag = teacherDao.save(te);
		if(flag!=0) {
			return true;
		}
		return false;
	}

	public List<TeacherModel> select(TeacherModel te) {
		// TODO Auto-generated method stub
		List<TeacherModel> list = teacherDao.select(te);
		return list;
	}

	public List<TeacherModel> selectById(TeacherModel te) {
		// TODO Auto-generated method stub
		List<TeacherModel> list = teacherDao.selectById(te);
		return list;
	}

	public List<TeacherModel> selectBySearch(TeacherModel te) {
		// TODO Auto-generated method stub
		List<TeacherModel> list = teacherDao.selectBySearch(te);
		return list;
	}

}
