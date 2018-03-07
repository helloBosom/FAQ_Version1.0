package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.Role;

/**
 * 业务逻辑层
 * @author Administrator
 *
 */
public interface IRoleService {
  List<Role> queryRole();
  /**
   * 添加
   * @param role
   * @return
   */
	boolean addRole(Role role);
	/**
	 * 删除
	 */
	boolean deleteRole(String roleId);
	
	/**
	 * 更新
	 */
	boolean updateRole(Role role);
	
	public Role queryRoleById(String roleId);
}
