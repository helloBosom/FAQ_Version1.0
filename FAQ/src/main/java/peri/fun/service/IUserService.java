package peri.fun.service;

import peri.fun.model.User;

import java.util.List;
import java.util.Map;

public interface IUserService {

    public boolean validateUser(User user);

    public Map<String, List> findPowerByName(String loginName);
}
