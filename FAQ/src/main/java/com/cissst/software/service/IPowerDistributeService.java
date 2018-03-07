package com.cissst.software.service;

import java.util.List;
import java.util.Map;

import com.cissst.software.model.FunctionModule;
import com.cissst.software.model.RoleManager;
/**
 * ÒµÎñÂß¼­²ã
 * @author Administrator
 *
 */
public interface IPowerDistributeService {

	public List<RoleManager> queryRoleManager();
	
	public boolean addPowerDistribute(String roleId,String[] rolePower);
	
	public void updateRoleStatus(String roleId);
	
	public void deleteRolePower(String roleId);
	
    public Map<FunctionModule,List<FunctionModule>> findFunctionModule();
	
	public List<String> findRolePower(String roleId);
	
}
