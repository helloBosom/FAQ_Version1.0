package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.Role;

/**
 * ҵ���߼���
 * @author Administrator
 *
 */
public interface IRoleService {
  List<Role> queryRole();
  /**
   * ���
   * @param role
   * @return
   */
	boolean addRole(Role role);
	/**
	 * ɾ��
	 */
	boolean deleteRole(String roleId);
	
	/**
	 * ����
	 */
	boolean updateRole(Role role);
	
	public Role queryRoleById(String roleId);
}
