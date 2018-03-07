package com.cissst.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cissst.software.util.DBHelp;
import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;

public class RoleManagerDao {


	/**
	 * 添加角色管理操作
	 * @param roleManager
	 * @return
	 */

	public boolean addRoleManager(RoleManager roleManager) {
		String sql = "insert into tbl_role(roleid,rolename) "
				+ "values('"+roleManager.getRoleId()+"','"+roleManager.getRoleName()+"')";
		boolean flag = DBHelp.executeSingleSql(sql);
		return false;
	}


	/**
	 * 根据角色编号修改记录
	 * @param questionClassify
	 * @return
	 */
	public boolean updateRoleManager(RoleManager roleManager) {
		String sql = "update tbl_role set rolename='"+roleManager.getRoleName()+"'"
				+" where roleid='"+roleManager.getRoleId()+"'";
	
			boolean flag = DBHelp.executeSingleSql(sql);
			return flag;
		
	}

	/**
	 * 根据角色编号执行批量删除操作
	 * 角色表与用户角色表关联，先删除外键为roleId的用户角色表、角色权限表中的信息，
	 * 再删除主键为roleId的角色表
	 * @param roleManager
	 * @return
	 */
	public boolean deleteRoleManager(String roleId) {
	 
		List<String> sqls = new ArrayList<String>();
		String sql = "delete from tbl_user_role where roleid='"+roleId+"'"; 
		sqls.add(sql);
		sql = "delete from tbl_role_function where roleid='"+roleId+"'"; 
		sqls.add(sql);
		sql = "delete from tbl_role where roleid='"+roleId+"'"; 
		sqls.add(sql);
		DBHelp.executeBatchSql(sqls.toArray());
		return true;
	
	}

	/**
	 * 查询所有记录
	 * @param roleId：角色编号
	 * @return：角色对象集合
	 */
	public List<RoleManager> queryRoleManager() {
		List<RoleManager> list = new ArrayList<RoleManager>();
		Connection connection = DBHelp.getConnection();
		String sql = "select roleid,rolename from tbl_role";
		PreparedStatement ps = null;
		ResultSet rs = null;
		RoleManager roleManager = null;

		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				roleManager = new RoleManager();
				roleManager.setRoleId(rs.getString("roleid"));
				roleManager.setRoleName(rs.getString("rolename"));
				list.add(roleManager);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs, ps, connection);
		}

		return list;
	}


	/**
	 * 根据角色编号查询记录
	 * @param managerId
	 * @return
	 */
	public RoleManager queryRoleManagerById(String roleId) {
		
		RoleManager roleManager = null;
		Connection connection = DBHelp.getConnection();
		String sql = "select roleid,rolename from tbl_role "
				+ " where roleid='"+roleId+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				roleManager = new RoleManager();
				roleManager.setRoleId(rs.getString("roleid"));
				roleManager.setRoleName(rs.getString("rolename"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs, ps, connection);
		}

		return roleManager;
	}

}
