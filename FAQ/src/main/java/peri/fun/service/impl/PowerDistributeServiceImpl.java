package peri.fun.service.impl;

import peri.fun.dao.PowerDistributeDao;
import peri.fun.model.FunctionModule;
import peri.fun.model.RoleManager;
import peri.fun.service.IPowerDistributeService;

import java.util.List;
import java.util.Map;

public class PowerDistributeServiceImpl implements IPowerDistributeService {

    private PowerDistributeDao powerDao = new PowerDistributeDao();

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
