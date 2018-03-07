package com.cissst.software.service;

import java.util.List;
import java.util.Map;

import com.cissst.software.model.User;

/**
 * 业务逻辑层--用户操作
 * @author lenovo
 * @date 2016.9.12
 */
public interface IUserService {

	/**
	 * 验证用户的合法行
	 * @param user :登录用户对象
	 * @return true:合法用户 false:不是合法用户
	 */
	public boolean validateUser(User user);
	
	public Map<String,List> findPowerByName(String loginName);
}
