package com.system.service;

import java.util.List;

import com.system.model.UserModel;

public interface UserLoginService {
	Boolean checkLogin(UserModel user);
}
