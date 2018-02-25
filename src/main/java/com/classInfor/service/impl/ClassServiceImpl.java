package com.classInfor.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.classInfor.dao.ClassDao;
import com.classInfor.model.ClassInforModel;
import com.classInfor.service.ClassService;
@Service
public class ClassServiceImpl implements ClassService{
@Autowired
private ClassDao classDao;
	public Boolean save(ClassInforModel cm) {
		// TODO Auto-generated method stub
		int flag = classDao.save(cm);
		if(flag!=0) {
			return true;
		}
		return false;
	}

	public List<ClassInforModel> select(ClassInforModel ma) {
		// TODO Auto-generated method stub
		List<ClassInforModel> list = classDao.select(ma);
		return list;
	}

	public List<ClassInforModel> selectById(ClassInforModel ma) {
		// TODO Auto-generated method stub
		return null;
	}

}
