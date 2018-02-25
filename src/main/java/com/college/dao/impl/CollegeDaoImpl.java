package com.college.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.college.dao.CollegeDao;
import com.college.model.CollegeModel;
@Repository
public class CollegeDaoImpl implements CollegeDao{
	private HibernateTemplate template;

	@Autowired 
	    public CollegeDaoImpl(SessionFactory sessionFactory) {
	        this.template = new HibernateTemplate(sessionFactory);
	    }
	public int save(CollegeModel co) {
		// TODO Auto-generated method stub
		int flag = (Integer) template.save(co);
		return flag;
	}
	public List<CollegeModel> select(CollegeModel co) {
		// TODO Auto-generated method stub
		List<CollegeModel> list = template.findByExample(co);
		return list;
	}
	public List<CollegeModel> selectById(CollegeModel co) {
		// TODO Auto-generated method stub
		List<CollegeModel> list = (List<CollegeModel>) template.find("from com.college.model.CollegeModel where id=?", co.getId());
		return list;
	}     
}
