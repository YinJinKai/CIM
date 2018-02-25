package com.news.dao;

import java.util.List;

import com.news.model.NewsModel;

public interface NewsDao {
int save(NewsModel nn);
List<NewsModel> select(NewsModel nn);
List<NewsModel> selectById(NewsModel nn);
}
