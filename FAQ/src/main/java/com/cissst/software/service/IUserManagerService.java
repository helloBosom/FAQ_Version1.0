package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;

/**
 * ÒµÎñÂß¼­²ã
 * @author Administrator
 *
 */
public interface IUserManagerService {

	public boolean addUserManager(UserManager userManager,String[] roles);
	public boolean updateUserManager(UserManager userManager,String[] roles);
	public boolean deleteUserManager(String managerId);
	public List<UserManager> queryUserManager();
	public UserManager queryUserManagerById(String managerId);
	public List<RoleManager> queryRoleManager();
}
