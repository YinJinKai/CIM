package com.major.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.major.dao.MajorDao;
import com.major.model.MajorModel;
@Repository
public class MajorDaoImpl implements MajorDao{
	private HibernateTemplate template;
	@Autowired 
    public MajorDaoImpl (SessionFactory sessionFactory) {
        this.template = new HibernateTemplate(sessionFactory);
    }
	public int save(MajorModel ma) {
		// TODO Auto-generated method stub
		int flag = (Integer) template.save(ma);
		return flag;
	}
	public List<MajorModel> select(MajorModel ma) {
		// TODO Auto-generated method stub
		List<MajorModel> list = (List<MajorModel>) template.find("from com.major.model.MajorModel");
		return list;
	}
	public List<MajorModel> selectById(MajorModel ma) {
		// TODO Auto-generated method stub
		return null;
	}
}
