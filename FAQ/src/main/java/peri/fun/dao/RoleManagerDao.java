package peri.fun.dao;

import peri.fun.model.RoleManager;
import peri.fun.util.DBHelp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleManagerDao {

    public boolean addRoleManager(RoleManager roleManager) {
        String sql = "insert into tbl_role(roleid,rolename) "
                + "values('" + roleManager.getRoleId() + "','" + roleManager.getRoleName() + "')";
        boolean flag = DBHelp.executeSingleSql(sql);
        return false;
    }

    public boolean updateRoleManager(RoleManager roleManager) {
        String sql = "update tbl_role set rolename='" + roleManager.getRoleName() + "'"
                + " where roleid='" + roleManager.getRoleId() + "'";

        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;

    }

    public boolean deleteRoleManager(String roleId) {
        List<String> sqls = new ArrayList<String>();
        String sql = "delete from tbl_user_role where roleid='" + roleId + "'";
        sqls.add(sql);
        sql = "delete from tbl_role_function where roleid='" + roleId + "'";
        sqls.add(sql);
        sql = "delete from tbl_role where roleid='" + roleId + "'";
        sqls.add(sql);
        DBHelp.executeBatchSql(sqls.toArray());
        return true;
    }

    public List<RoleManager> queryRoleManager() {
        List<RoleManager> list = new ArrayList<RoleManager>();
        Connection connection = DBHelp.getConnection();
        String sql = "SELECT roleid,rolename FROM tbl_role";
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
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return list;
    }

    public RoleManager queryRoleManagerById(String roleId) {
        RoleManager roleManager = null;
        Connection connection = DBHelp.getConnection();
        String sql = "select roleid,rolename from tbl_role " + " where roleid='" + roleId + "'";
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
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return roleManager;
    }
}
