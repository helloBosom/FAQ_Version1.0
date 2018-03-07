package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;

/**
 * ÒµÎñÂß¼­²ã
 * @author Administrator
 *
 */
public interface IRoleManagerService {

	public boolean addRoleManager(RoleManager roleManager);
	public boolean updateRoleManager(RoleManager roleManager);
	public boolean deleteRoleManager(String roleId);
	public List<RoleManager> queryRoleManager();
	public RoleManager queryRoleManagerById(String roleId);
}
