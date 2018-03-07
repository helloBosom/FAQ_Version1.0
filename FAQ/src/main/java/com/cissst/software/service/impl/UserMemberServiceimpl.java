package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.UserMemberDao;
import com.cissst.software.model.User;
import com.cissst.software.model.UserMember;
import com.cissst.software.service.IUserMemberService;

public class UserMemberServiceimpl implements IUserMemberService {
private UserMemberDao userDao=new  UserMemberDao();
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
		// TODO Auto-generated method stub
		return userDao.validateUser(user);
	}

}
