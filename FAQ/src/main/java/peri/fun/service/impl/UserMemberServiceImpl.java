package peri.fun.service.impl;

import peri.fun.dao.UserMemberDao;
import peri.fun.model.User;
import peri.fun.model.UserMember;
import peri.fun.service.IUserMemberService;

import java.util.List;

public class UserMemberServiceImpl implements IUserMemberService {
    private UserMemberDao userDao = new UserMemberDao();

    @Override
    public boolean addUser(UserMember user) {
        return userDao.addUser(user);
    }

    @Override
    public List<UserMember> query() {
        return userDao.query();
    }

    @Override
    public boolean lock(String USERID) {
        return userDao.lock(USERID);
    }

    @Override
    public boolean deblock(String USERID) {
        return userDao.deblock(USERID);
    }

    @Override
    public boolean validateUser(User user) {
        return userDao.validateUser(user);
    }
}
