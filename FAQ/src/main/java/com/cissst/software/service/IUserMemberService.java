package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.User;
import com.cissst.software.model.UserMember;

public interface IUserMemberService {
	/*添加*/
	public boolean addUser(UserMember user);
	/*查询*/
	public   List<UserMember> query();
	/*锁定*/
	 public boolean lock(String USERID);
	 /*解锁*/
	 public boolean deblock(String USERID);
	 public boolean validateUser(User user);
}
