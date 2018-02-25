package com.news.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.news.dao.NewsDao;
import com.news.model.NewsModel;
import com.news.service.NewsService;
@Service
public class NewsServiceImpl implements NewsService{
@Autowired
private NewsDao newsDao;
	public Boolean save(NewsModel nn) {
		// TODO Auto-generated method stub
		int flag = newsDao.save(nn);
		if(flag!=0) {
			return true;
		}
		return false;
	}

	public List<NewsModel> select(NewsModel nn) {
		// TODO Auto-generated method stub
		List<NewsModel> list =newsDao.select(nn);
		return list;
	}

	public List<NewsModel> selectById(NewsModel nn) {
		// TODO Auto-generated method stub
		List<NewsModel> list=newsDao.selectById(nn);
		return list;
	}

}
