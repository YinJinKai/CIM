package com.classInfor.dao;

import java.util.List;

import com.classInfor.model.ClassInforModel;

public interface ClassDao {
int save(ClassInforModel cm);
List<ClassInforModel> select(ClassInforModel ma);
List<ClassInforModel> selectById(ClassInforModel ma);
}
