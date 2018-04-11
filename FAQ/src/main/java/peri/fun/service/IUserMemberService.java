package peri.fun.service;

import peri.fun.model.User;
import peri.fun.model.UserMember;

import java.util.List;

public interface IUserMemberService {
    public boolean addUser(UserMember user);

    public List<UserMember> query();

    public boolean lock(String USERID);

    public boolean deblock(String USERID);

    public boolean validateUser(User user);
}
