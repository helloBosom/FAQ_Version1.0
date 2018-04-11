package peri.fun.service;

import peri.fun.model.RoleManager;
import peri.fun.model.UserManager;

import java.util.List;

public interface IUserManagerService {

    public boolean addUserManager(UserManager userManager, String[] roles);

    public boolean updateUserManager(UserManager userManager, String[] roles);

    public boolean deleteUserManager(String managerId);

    public List<UserManager> queryUserManager();

    public UserManager queryUserManagerById(String managerId);

    public List<RoleManager> queryRoleManager();
}
