package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.UserManagerDao;
import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;
import com.cissst.software.service.IUserManagerService;

/**
 * 业务逻辑层实现子类
 * @author Administrator
 *
 */
public class UserManagerServiceImpl implements IUserManagerService {

	private UserManagerDao userManagerDao = new UserManagerDao();
	
	@Override
	public boolean addUserManager(UserManager userManager,String[] roles) {
		
		return userManagerDao.addUserManager(userManager,roles);
	}

	@Override
	public boolean updateUserManager(UserManager userManager,String[] roles) {
		
		return userManagerDao.updateUserManager(userManager,roles);
	}

	@Override
	public boolean deleteUserManager(String managerId) {
	
		return userManagerDao.deleteUserManager(managerId);
	}

	@Override
	public List<UserManager> queryUserManager() {
		
		return userManagerDao.queryUserManager();
	}

	@Override
	public UserManager queryUserManagerById(String managerId) {
		
		return userManagerDao.queryUserManagerById(managerId);
	}

	@Override
	public List<RoleManager> queryRoleManager() {
		
		return userManagerDao.queryRoleManager();
	}

}
