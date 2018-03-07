package com.cissst.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cissst.software.model.Role;
import com.cissst.software.util.DBHelp;

/**
 * 权限管理
 * 
 * @author Administrator
 *
 */
public class RoleDao {

	public List<Role> queryRole() {
		List<Role> lists = new ArrayList<Role>();
		Connection connection = DBHelp.getConnection();
		String sql = "select roleid,rolename,status from tbl_role ";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			Role role = null;
			while (rs.next()) {
				role = new Role();
				role.setRoleId(rs.getString("roleid"));
				role.setRoleName(rs.getString("rolename"));
				role.setStatus(rs.getString("status"));

				lists.add(role);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs, ps, connection);
		}
		return lists;
	}

	public boolean addRole(Role role) {
		String roleId = role.getRoleId();
		String roleName = role.getRoleName();
		String status = role.getStatus();
		String sql = "insert into tbl_role values ('" + roleId + "','" + roleName + "','" + status + "')";
		boolean flag = DBHelp.executeSingleSql(sql);
		return flag;
	}

	public boolean deleteRole(String roleId) {
		String sql = "delete from tbl_role where roleId='" + roleId + "'";

		boolean flag = DBHelp.executeSingleSql(sql);
		return flag;
	}

	public boolean updateRole(Role role) {
		String sql = "update tbl_role set rolename='" + role.getRoleName() + "',status='" + role.getStatus() + "'"
				+ "  where roleid='" + role.getRoleId() + "'";
		boolean flag = DBHelp.executeSingleSql(sql);
		return flag;

	}
	
	public Role queryRoleById(String roleId){
		String sql = "select roleid,rolename,status from tbl_role where roleid='"+roleId+"'";
		Role role=new Role();
		Connection connection = DBHelp.getConnection();
		PreparedStatement ps =null;
		ResultSet rs = null;
		try {
			ps= connection.prepareStatement(sql);
			rs = ps.executeQuery();			
			if(rs.next()){				
				role.setRoleId(rs.getString("roleId"));
				role.setRoleName(rs.getString("roleName"));
				role.setStatus(rs.getString("status"));						
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBHelp.closeAll(rs, ps, connection);
		}
		return role;
	}

}
