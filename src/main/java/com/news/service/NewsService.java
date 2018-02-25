package com.news.service;

import java.util.List;

import com.news.model.NewsModel;

public interface NewsService {
	Boolean save(NewsModel nn);
	List<NewsModel> select(NewsModel nn);
	List<NewsModel> selectById(NewsModel nn);
}
