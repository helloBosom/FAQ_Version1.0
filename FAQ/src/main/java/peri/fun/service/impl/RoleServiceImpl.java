package peri.fun.service.impl;

import peri.fun.dao.RoleDao;
import peri.fun.model.Role;
import peri.fun.service.IRoleService;

import java.util.List;

public class RoleServiceImpl implements IRoleService {
    RoleDao roleDao = new RoleDao();

    @Override
    public List<Role> queryRole() {
        return roleDao.queryRole();
    }

    @Override
    public boolean addRole(Role role) {
        return roleDao.addRole(role);
    }

    @Override
    public boolean deleteRole(String roleId) {
        return roleDao.deleteRole(roleId);
    }

    @Override
    public boolean updateRole(Role role) {
        return roleDao.updateRole(role);
    }

    @Override
    public Role queryRoleById(String roleId) {
        return roleDao.queryRoleById(roleId);
    }
}
