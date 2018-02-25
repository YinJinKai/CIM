package com.system.dao;

import java.util.List;

import com.system.model.UserModel;

public interface UserLoginDao {
	List<UserModel> checkLogin(UserModel user); 
}
