package peri.fun.service;

import peri.fun.model.FunctionModule;
import peri.fun.model.RoleManager;

import java.util.List;
import java.util.Map;

public interface IPowerDistributeService {

    public List<RoleManager> queryRoleManager();

    public boolean addPowerDistribute(String roleId, String[] rolePower);

    public void updateRoleStatus(String roleId);

    public void deleteRolePower(String roleId);

    public Map<FunctionModule, List<FunctionModule>> findFunctionModule();

    public List<String> findRolePower(String roleId);

}
