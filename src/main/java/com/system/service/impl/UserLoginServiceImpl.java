package com.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.dao.UserLoginDao;
import com.system.model.UserModel;
import com.system.service.UserLoginService;
import com.util.FormatEmpty;
@Service
public class UserLoginServiceImpl implements UserLoginService{
	@Autowired
    private UserLoginDao userLoginDao;
	public Boolean checkLogin(UserModel user) {
		// TODO Auto-generated method stub
		List<UserModel> list=userLoginDao.checkLogin(user);
		if(FormatEmpty.isEmpty(list)) {
			return false;//没有该用户
		}
		return true;//可登陆
		
		
	}

}
