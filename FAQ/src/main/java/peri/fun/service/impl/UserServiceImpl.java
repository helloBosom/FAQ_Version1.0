package peri.fun.service.impl;

import peri.fun.dao.UserDao;
import peri.fun.model.User;
import peri.fun.service.IUserService;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements IUserService {

    private UserDao userDao = new UserDao();

    @Override
    public boolean validateUser(User user) {
        return userDao.validateUser(user);
    }

    @Override
    public Map<String, List> findPowerByName(String loginName) {
        return userDao.findPowerByName(loginName);
    }
}
