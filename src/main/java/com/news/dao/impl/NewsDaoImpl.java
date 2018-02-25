package com.news.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.news.dao.NewsDao;
import com.news.model.NewsModel;
@Repository
public class NewsDaoImpl implements NewsDao {
	private HibernateTemplate template;
	@Autowired 
    public NewsDaoImpl (SessionFactory sessionFactory) {
        this.template = new HibernateTemplate(sessionFactory);
    }
	public int save(NewsModel nn) {
		// TODO Auto-generated method stub
		int flag = (Integer) template.save(nn);
		return flag;
	}

	public List<NewsModel> select(NewsModel nn) {
		// TODO Auto-generated method stub
		List<NewsModel> list=(List<NewsModel>) template.find("from com.news.model.NewsModel");
		return list;
	}
	public List<NewsModel> selectById(NewsModel nn) {
		// TODO Auto-generated method stub
		List<NewsModel> list=(List<NewsModel>) template.find("from com.news.model.NewsModel where id=?",nn.getId());
		return list;
	}

}
