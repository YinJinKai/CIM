package com.major.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.major.dao.MajorDao;
import com.major.model.MajorModel;
import com.major.service.MajorService;
@Service
public class MajorServiceImpl implements MajorService{
	@Autowired
  private MajorDao majorDao;
	public Boolean save(MajorModel ma) {
		// TODO Auto-generated method stub
		int flag = majorDao.save(ma);
		if(flag!=0) {
			return true;
		}
		return false;
	}

	public List<MajorModel> select(MajorModel ma) {
		// TODO Auto-generated method stub
		List<MajorModel> list = majorDao.select(ma);
		return list;
	}

	public List<MajorModel> selectById(MajorModel ma) {
		// TODO Auto-generated method stub
		return null;
	}

}
