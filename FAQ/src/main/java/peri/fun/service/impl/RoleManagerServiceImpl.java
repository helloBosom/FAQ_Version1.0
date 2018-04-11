package peri.fun.service.impl;

import peri.fun.dao.RoleManagerDao;
import peri.fun.model.RoleManager;
import peri.fun.service.IRoleManagerService;

import java.util.List;

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
