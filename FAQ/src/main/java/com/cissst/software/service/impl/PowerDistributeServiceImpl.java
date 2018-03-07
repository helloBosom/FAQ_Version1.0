package com.cissst.software.service.impl;

import java.util.List;
import java.util.Map;

import com.cissst.software.dao.PowerDistributeDao;
import com.cissst.software.model.FunctionModule;
import com.cissst.software.model.RoleManager;
import com.cissst.software.service.IPowerDistributeService;

/**
 * 业务逻辑层实现子类
 * @author Administrator
 *
 */
public class PowerDistributeServiceImpl implements IPowerDistributeService {

	private PowerDistributeDao powerDao =
			new PowerDistributeDao();
	
	@Override
	public List<RoleManager> queryRoleManager() {
		
		return powerDao.queryRoleManager();
	}

	@Override
	public boolean addPowerDistribute(String roleId, String[] rolePower) {
		
		return powerDao.addPowerDistribute(roleId, rolePower);
	}

	@Override
	public void updateRoleStatus(String roleId) {
		
		powerDao.updateRoleStatus(roleId);
	}

	@Override
	public void deleteRolePower(String roleId) {
		powerDao.deleteRolePower(roleId);
	}

	@Override
	public Map<FunctionModule, List<FunctionModule>> findFunctionModule() {
		
		return powerDao.findFunctionModule();
	}

	@Override
	public List<String> findRolePower(String roleId) {
		
		return powerDao.findRolePower(roleId);
	}

}
