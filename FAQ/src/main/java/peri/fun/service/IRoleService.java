package peri.fun.service;

import peri.fun.model.Role;

import java.util.List;

public interface IRoleService {
    List<Role> queryRole();

    boolean addRole(Role role);

    boolean deleteRole(String roleId);

    boolean updateRole(Role role);

    public Role queryRoleById(String roleId);
}
