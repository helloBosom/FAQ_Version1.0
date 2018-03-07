package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.RoleManagerDao;
import com.cissst.software.model.RoleManager;
import com.cissst.software.service.IRoleManagerService;
/**
 * 业务逻辑层实现子类
 * @author Administrator
 *
 */
public class RoleManagerServiceImpl implements IRoleManagerService {

	private RoleManagerDao roleManagerDao = new RoleManagerDao();
	@Override
	public boolean addRoleManager(RoleManager roleManager) {
		
		return roleManagerDao.addRoleManager(roleManager);
	}

	@Override
	public boolean updateRoleManager(RoleManager roleManager) {
		
		return roleManagerDao.updateRoleManager(roleManager);
	}

	@Override
	public boolean deleteRoleManager(String roleId) {
	
		return roleManagerDao.deleteRoleManager(roleId);
	}

	@Override
	public List<RoleManager> queryRoleManager() {
	
		return roleManagerDao.queryRoleManager();
	}

	@Override
	public RoleManager queryRoleManagerById(String roleId) {
		
		return roleManagerDao.queryRoleManagerById(roleId);
	}

}
