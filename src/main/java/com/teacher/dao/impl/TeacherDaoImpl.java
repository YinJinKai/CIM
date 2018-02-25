package com.teacher.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.major.model.MajorModel;
import com.teacher.dao.TeacherDao;
import com.teacher.model.TeacherModel;
@Repository
public class TeacherDaoImpl implements TeacherDao{
	private HibernateTemplate template;

	@Autowired 
	    public TeacherDaoImpl(SessionFactory sessionFactory) {
	        this.template = new HibernateTemplate(sessionFactory);
	    }
	public int save(TeacherModel te) {
		// TODO Auto-generated method stub
		int flag = (Integer) template.save(te);
		return flag;
	}

	public List<TeacherModel> select(TeacherModel te) {
		// TODO Auto-generated method stub
		List<TeacherModel> list = (List<TeacherModel>) template.find("from com.teacher.model.TeacherModel");
		return list;
	}

	public List<TeacherModel> selectById(TeacherModel te) {
		// TODO Auto-generated method stub
		List<TeacherModel> list = (List<TeacherModel>) template.find("from com.teacher.model.TeacherModel where id=?",te.getId());
		return list;
	}
	public List<TeacherModel> selectBySearch(TeacherModel te) {
		// TODO Auto-generated method stub
		List<TeacherModel> list = (List<TeacherModel>) template.find("from com.teacher.model.TeacherModel where teacherName like ?","%"+te.getTeacherName()+"%");
		return list;
	}

}
