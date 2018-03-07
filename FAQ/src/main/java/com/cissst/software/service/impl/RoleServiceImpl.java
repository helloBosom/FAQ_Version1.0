package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.RoleDao;
import com.cissst.software.model.Role;
import com.cissst.software.service.IRoleService;

public class RoleServiceImpl implements IRoleService {
  RoleDao roleDao=new RoleDao();
	
	@Override
	public List<Role> queryRole() {
		
		return roleDao.queryRole();
	}

	@Override
	public boolean addRole(Role role) {
		// TODO Auto-generated method stub
		return roleDao.addRole(role);
	}

	@Override
	public boolean deleteRole(String roleId) {
		// TODO Auto-generated method stub
		return roleDao.deleteRole(roleId);
	}

	@Override
	public boolean updateRole(Role role) {
		// TODO Auto-generated method stub
		return roleDao.updateRole(role);
	}

	@Override
	public Role queryRoleById(String roleId) {
		// TODO Auto-generated method stub
		return roleDao.queryRoleById(roleId);
	}

}
