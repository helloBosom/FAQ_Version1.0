package com.cissst.software.service.impl;

import java.util.List;
import java.util.Map;

import com.cissst.software.dao.UserDao;
import com.cissst.software.model.User;
import com.cissst.software.service.IUserService;

public class UserServiceImpl implements IUserService {

	//创建数据库访问层对象
	private UserDao userDao = new UserDao();
	
	@Override
	public boolean validateUser(User user) {
	
		return userDao.validateUser(user);
	}

	@Override
	public Map<String, List> findPowerByName(String loginName) {
		
		return userDao.findPowerByName(loginName);
	}

}
