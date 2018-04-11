package peri.fun.service;

import peri.fun.model.RoleManager;

import java.util.List;

public interface IRoleManagerService {

    public boolean addRoleManager(RoleManager roleManager);

    public boolean updateRoleManager(RoleManager roleManager);

    public boolean deleteRoleManager(String roleId);

    public List<RoleManager> queryRoleManager();

    public RoleManager queryRoleManagerById(String roleId);
}
