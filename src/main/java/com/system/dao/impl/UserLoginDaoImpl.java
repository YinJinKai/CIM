package com.system.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.system.dao.UserLoginDao;
import com.system.model.UserModel;

@Repository
public class UserLoginDaoImpl implements UserLoginDao {
	private HibernateTemplate template;

	@Autowired
	    public UserLoginDaoImpl(SessionFactory sessionFactory) {
	        this.template = new HibernateTemplate(sessionFactory);
	    }

	public List<UserModel> checkLogin(UserModel user) {
		List<UserModel> list=template.findByExample(user);
		return list;
		// TODO Auto-generated method stub
		

	}

}
