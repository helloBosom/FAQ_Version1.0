package com.cissst.software.service;

import java.util.List;
import java.util.Map;

import com.cissst.software.model.User;

/**
 * ҵ���߼���--�û�����
 * @author lenovo
 * @date 2016.9.12
 */
public interface IUserService {

	/**
	 * ��֤�û��ĺϷ���
	 * @param user :��¼�û�����
	 * @return true:�Ϸ��û� false:���ǺϷ��û�
	 */
	public boolean validateUser(User user);
	
	public Map<String,List> findPowerByName(String loginName);
}
