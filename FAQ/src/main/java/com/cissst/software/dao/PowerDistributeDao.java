package com.cissst.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.cissst.software.util.DBHelp;
import com.cissst.software.model.FunctionModule;
import com.cissst.software.model.RoleManager;

/**
 * 数据库访问层--权限分配
 * @author Administrator
 *
 */
public class PowerDistributeDao {

	/**
	 * 查询所有角色对象
	 * @return
	 */
	public List<RoleManager> queryRoleManager() {
		List<RoleManager> roles = new ArrayList<RoleManager>();
		Connection connection = DBHelp.getConnection();
		String sql = "select roleid,rolename from tbl_role";
		PreparedStatement ps = null;
		ResultSet rs = null;
		RoleManager roleManager = null;
		
		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				roleManager = new RoleManager();
				roleManager.setRoleId(rs.getString("roleid"));
				roleManager.setRoleName(rs.getString("rolename"));
				roles.add(roleManager);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBHelp.closeAll(rs, ps, connection);
		}
		return roles;
	}

	
	public boolean addPowerDistribute(String roleId, String[] rolePower) {
		boolean flag = false;
		List<String> sqls = new ArrayList<String>();
		if(rolePower != null && rolePower.length > 0){
			for(String rolefunction : rolePower){
				String sql = "insert into tbl_role_function (id,roleid,functionid) "
						+ "values(role_power_sequ.nextval,'"+roleId+"','"+rolefunction+"')";
				sqls.add(sql);
			}
			DBHelp.executeBatchSql(sqls.toArray());
			flag = true;
		}
		return flag;
		
	}
	
	/**
	 * 根据角色编号修改角色状态
	 * @param roleId
	 */
	public void updateRoleStatus(String roleId) {

		String sql = "update tbl_role set status ='1' where roleid='"+roleId+"'";
		DBHelp.executeSingleSql(sql);
	}
	
	/**
	 * 根据角色编号删除角色权限
	 * @param roleId
	 */
	public void deleteRolePower(String roleId) {
		String sql = "delete from tbl_role_function where roleid='"+roleId+"'";
		DBHelp.executeSingleSql(sql);
	}


	/**
     * 查找功能模块表，将查找的父级菜单和子级菜单放入Map集合中,
     *        将父级菜单对象用作key，将子级菜单对象集合用作value
     * 
     * @return
     */
	
	public Map<FunctionModule, List<FunctionModule>> findFunctionModule() {

		// 声明父级菜单对象
		FunctionModule parentMenu = null;
		// 声明子级菜单对象
		FunctionModule childMenu = null;
		// 声明子级菜单对象的集合
		List<FunctionModule> sonMenus = null;
		// 创建Map集合存放父级菜单对象，以及父级菜单下的子级菜单对象的集合
		Map<FunctionModule, List<FunctionModule>> functionMenu = 
				            new TreeMap<FunctionModule, List<FunctionModule>>();

		// 查询功能模块表获取父级菜单的功能编号和模块名称
		String sql = "select functionid,modulename from tbl_function_module " + "where remarks is null";
		Connection connection = DBHelp.getConnection();
		PreparedStatement ps1 = null;
		ResultSet rs1 = null;
		PreparedStatement ps2 = null;
		ResultSet rs2 = null;

		try {
			ps1 = connection.prepareStatement(sql);
			rs1 = ps1.executeQuery();
			while (rs1.next()) {
				// 创建父级菜单对象
				parentMenu = new FunctionModule();
				// 创建子级菜单对象的集合
				sonMenus = new ArrayList<FunctionModule>();

				// 查询功能模块表获取子级菜单的功能编号和模块名称
				sql = "select functionid,modulename from tbl_function_module " + "where remarks='"
						+ rs1.getString("functionid") + "'";
				ps2 = connection.prepareStatement(sql);
				rs2 = ps2.executeQuery();
				while (rs2.next()) {
					// 创建子级菜单对象
					childMenu = new FunctionModule();
					// 设置子级菜单对象的属性
					childMenu.setFunctionId(rs2.getString("functionid"));
					childMenu.setModuleName(rs2.getString("modulename"));
					// 将子级菜单对象放入子级菜单对象集合中
					sonMenus.add(childMenu);
				}
				// 设置父级菜单的属性
				parentMenu.setFunctionId(rs1.getString("functionid"));
				parentMenu.setModuleName(rs1.getString("modulename"));

				// 将父级菜单对象和子级菜单对象集合放入Map集合中
				functionMenu.put(parentMenu, sonMenus);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs2, ps2, connection);
			DBHelp.closeAll(rs1, ps1, connection);
		}

		return functionMenu;

	}

	/**
	 * 根据角色编号获取角色权限的集合
	 * 
	 * @param roleId
	 * @return
	 */
	public List<String> findRolePower(String roleId) {
		// 创建角色权限的集合
		List<String> rolePower = new ArrayList<String>();
		// 根据角色编号查询角色功能表中的功能编号
		String sql = "select functionid from tbl_role_function where roleid='" + roleId + "'";
		Connection connection = DBHelp.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String power = rs.getString(1);
				rolePower.add(power);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs, ps, connection);
		}

		return rolePower;
	}
	
}
