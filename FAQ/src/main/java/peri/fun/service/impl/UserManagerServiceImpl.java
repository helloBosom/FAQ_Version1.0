package peri.fun.service.impl;

import peri.fun.dao.UserManagerDao;
import peri.fun.model.RoleManager;
import peri.fun.model.UserManager;
import peri.fun.service.IUserManagerService;

import java.util.List;

public class UserManagerServiceImpl implements IUserManagerService {

    private UserManagerDao userManagerDao = new UserManagerDao();

    @Override
    public boolean addUserManager(UserManager userManager, String[] roles) {
        return userManagerDao.addUserManager(userManager, roles);
    }

    @Override
    public boolean updateUserManager(UserManager userManager, String[] roles) {
        return userManagerDao.updateUserManager(userManager, roles);
    }

    @Override
    public boolean deleteUserManager(String managerId) {
        return userManagerDao.deleteUserManager(managerId);
    }

    @Override
    public List<UserManager> queryUserManager() {
        return userManagerDao.queryUserManager();
    }

    @Override
    public UserManager queryUserManagerById(String managerId) {
        return userManagerDao.queryUserManagerById(managerId);
    }

    @Override
    public List<RoleManager> queryRoleManager() {
        return userManagerDao.queryRoleManager();
    }
}
