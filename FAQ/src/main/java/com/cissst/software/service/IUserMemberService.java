package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.User;
import com.cissst.software.model.UserMember;

public interface IUserMemberService {
	/*���*/
	public boolean addUser(UserMember user);
	/*��ѯ*/
	public   List<UserMember> query();
	/*����*/
	 public boolean lock(String USERID);
	 /*����*/
	 public boolean deblock(String USERID);
	 public boolean validateUser(User user);
}
