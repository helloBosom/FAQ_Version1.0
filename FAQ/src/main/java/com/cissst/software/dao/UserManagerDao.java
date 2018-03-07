package com.cissst.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cissst.software.util.DBHelp;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;
/**
 * 数据库访问层--用户管理
 * @author Administrator
 *
 */

public class UserManagerDao {
	

	/**
	 * 批量添加用户管理表和角色用户表
	 * @param questionClassify
	 * @return
	 */
	public boolean addUserManager(UserManager userManager,String[] roles) {
		 
		List<String> sqls = new ArrayList<String>();
		
		String sql = "insert into tbl_administrator(managerid,managername,nickname,password,contactnumber)"
           +" values('"+userManager.getManagerId()+"','"+userManager.getManagerName()+"',"
           + "'"+userManager.getNickName()+"','"+userManager.getPassword()+"','"+userManager.getContactNumber()+"') ";
		   
		   sqls.add(sql);
		  
		  if(roles != null && roles.length > 0){
			  for(String role : roles){
				  sql = "insert into tbl_user_role(id,roleid,managerid) "
				  		+ "values(sequences.nextval,'"+role+"','"+userManager.getManagerId()+"')";
				  sqls.add(sql);
			  } 
		  } 
		  DBHelp.executeBatchSql(sqls.toArray());
		  return true;
	}


	/**
	 * 根据用户编号批量修改记录
	 * 
	 * @param questionClassify
	 * @return
	 */
	public boolean updateUserManager(UserManager userManager, String[] roles) {
		List<String> sqls = new ArrayList<String>();
		String sql = "update tbl_administrator set managername='" + userManager.getManagerName() + "'," + "nickname='"
				+ userManager.getNickName() + "',password='" + userManager.getPassword() + "'," + "contactnumber='"
				+ userManager.getContactNumber() + "' where managerid='" + userManager.getManagerId() + "'";
		sqls.add(sql);

		if (roles != null && roles.length > 0) {
			// 如果修改后的用户角色不为空，先删除之前担任的角色，再插入修改后的角色
			sql = "delete tbl_user_role where managerid='" + userManager.getManagerId() + "'";
			sqls.add(sql);
			for (String role : roles) {
				sql = "insert into tbl_user_role(id,roleid,managerid) " + "values(sequences.nextval,'" + role + "','"
						+ userManager.getManagerId() + "')";
				sqls.add(sql);
			}
		} else {
			// 如果修改后的用户角色为空，删除其所担任的角色
			sql = "delete tbl_user_role where managerid='" + userManager.getManagerId() + "'";
			sqls.add(sql);
		}

		DBHelp.executeBatchSql(sqls.toArray());
		return true;

	}

	/**
	 * 根据用户编号，批量删除用户管理表和角色用户表中的信息
	 * (根据编号先删除受外键约束的表信息，再删除编号为主键的表信息，否则报错)
	 * @param userManagerId
	 * @return
	 */
	public boolean deleteUserManager(String managerId) {
		
		List<String> sqls = new ArrayList<String>();
		String sql = "delete from tbl_user_role where managerid='"+managerId+"'"; 
		sqls.add(sql);
		
		sql = "delete from tbl_administrator where managerid='"+managerId+"'";
		sqls.add(sql); 
	    DBHelp.executeBatchSql(sqls.toArray());
		
	    return true;
		
	}

	/**
	 * 查询所有记录
	 * 
	 * @param managerId：用户编号
	 * @return：用户对象集
	 */
	public List<UserManager> queryUserManager() {

		List<UserManager> list = new ArrayList<UserManager>();
		// 执行SQL语句获得用户编号
		String sql = "select managerid,managername,nickname,password, " + " contactnumber from tbl_administrator ";

		Connection connection = DBHelp.getConnection();
		PreparedStatement ps1 = null;
		ResultSet rs1 = null;
		PreparedStatement ps2 = null;
		ResultSet rs2 = null;
		UserManager userManager = null;
		List<String> roleNames = null;
		try {
			ps1 = connection.prepareStatement(sql);
			rs1 = ps1.executeQuery();
			while (rs1.next()) {
				// 根据用户编号查找用户担任的角色名称
				sql = "select r.rolename from tbl_user_role t," + "tbl_role r  where '" + rs1.getString("managerid")
						+ "' = t.managerid and t.roleid = r.roleid";

				ps2 = connection.prepareStatement(sql);
				rs2 = ps2.executeQuery();

				roleNames = new ArrayList();
				userManager = new UserManager();
				while (rs2.next()) {
					roleNames.add(rs2.getString("rolename"));

				}
				userManager.setManagerId(rs1.getString("managerid"));
				userManager.setManagerName(rs1.getString("managername"));
				userManager.setNickName(rs1.getString("nickname"));
				userManager.setPassword(rs1.getString("password"));
				userManager.setContactNumber(rs1.getString("contactnumber"));
				userManager.setRoleNames(roleNames);

				list.add(userManager);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs2, ps2, connection);
			DBHelp.closeAll(rs1, ps1, connection);
		}
		return list;
	}
	
	/**
	 * 根据用户编号查询记录
	 * @param managerId
	 * @return
	 */
	
    public UserManager queryUserManagerById(String managerId) {
    	UserManager userManager = null; 
		Connection connection = DBHelp.getConnection();
		String sql = "select managerid,managername,nickname,password,contactnumber "
				+ "from tbl_administrator where managerid='"+managerId+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				userManager = new UserManager();
				userManager.setManagerId(rs.getString("managerid"));
				userManager.setManagerName(rs.getString("managername"));
				userManager.setNickName(rs.getString("nickname"));
				userManager.setPassword(rs.getString("password"));
				userManager.setContactNumber(rs.getString("contactnumber"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBHelp.closeAll(rs, ps, connection);
		}

		return userManager;
	}
    
    /**
     * 查询所有的角色对象
     * @return
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
}
