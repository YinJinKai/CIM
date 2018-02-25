package com.college.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.college.dao.CollegeDao;
import com.college.dao.impl.CollegeDaoImpl;
import com.college.model.CollegeModel;
import com.college.service.CollegeService;
@Service
public class CollegeServiceImpl implements CollegeService{
	@Autowired
    private CollegeDao collegeDao;
	public Boolean save(CollegeModel co) {
		// TODO Auto-generated method stub
		
		int flag = collegeDao.save(co);
		if(flag!=0) {
			return true; //添加成功
		}
		return false;
	}
	public List<CollegeModel> select(CollegeModel co) {
		// TODO Auto-generated method stub
		List<CollegeModel> list = collegeDao.select(co);
		return list;
	}
	public List<CollegeModel> selectById(CollegeModel co) {
		// TODO Auto-generated method stub
		List<CollegeModel> list = collegeDao.selectById(co);
		return list;
	}

}
