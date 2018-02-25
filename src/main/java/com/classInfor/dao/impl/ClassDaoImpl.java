package com.classInfor.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.classInfor.dao.ClassDao;
import com.classInfor.model.ClassInforModel;
@Repository
public class ClassDaoImpl implements ClassDao{
	private HibernateTemplate template;
	@Autowired 
    public ClassDaoImpl (SessionFactory sessionFactory) {
        this.template = new HibernateTemplate(sessionFactory);
    }
	public int save(ClassInforModel cm) {
		// TODO Auto-generated method stub
		int flag = (Integer) template.save(cm);
		return flag;
	}

	public List<ClassInforModel> select(ClassInforModel ma) {
		// TODO Auto-generated method stub
		List<ClassInforModel> list = (List<ClassInforModel>) template.find("from com.classInfor.model.ClassInforModel");
		return list;
	}

	public List<ClassInforModel> selectById(ClassInforModel ma) {
		// TODO Auto-generated method stub
		return null;
	}

}
