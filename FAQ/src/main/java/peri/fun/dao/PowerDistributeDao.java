package peri.fun.dao;

import peri.fun.model.FunctionModule;
import peri.fun.model.RoleManager;
import peri.fun.util.DBHelp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PowerDistributeDao {

    public List<RoleManager> queryRoleManager() {
        List<RoleManager> roles = new ArrayList<RoleManager>();
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
                roles.add(roleManager);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return roles;
    }

    public boolean addPowerDistribute(String roleId, String[] rolePower) {
        boolean flag = false;
        List<String> sqls = new ArrayList<String>();
        if (rolePower != null && rolePower.length > 0) {
            for (String rolefunction : rolePower) {
                String sql = "insert into tbl_role_function (id,roleid,functionid) "
                        + "values(role_power_sequ.nextval,'" + roleId + "','" + rolefunction + "')";
                sqls.add(sql);
            }
            DBHelp.executeBatchSql(sqls.toArray());
            flag = true;
        }
        return flag;

    }

    public void updateRoleStatus(String roleId) {
        String sql = "update tbl_role set status ='1' where roleid='" + roleId + "'";
        DBHelp.executeSingleSql(sql);
    }

    public void deleteRolePower(String roleId) {
        String sql = "delete from tbl_role_function where roleid='" + roleId + "'";
        DBHelp.executeSingleSql(sql);
    }

    public Map<FunctionModule, List<FunctionModule>> findFunctionModule() {
        FunctionModule parentMenu = null;
        FunctionModule childMenu = null;
        List<FunctionModule> sonMenus = null;
        Map<FunctionModule, List<FunctionModule>> functionMenu =
                new TreeMap<FunctionModule, List<FunctionModule>>();
        String sql = "SELECT functionid,modulename FROM tbl_function_module " + "WHERE remarks IS NULL";
        Connection connection = DBHelp.getConnection();
        PreparedStatement ps1 = null;
        ResultSet rs1 = null;
        PreparedStatement ps2 = null;
        ResultSet rs2 = null;
        try {
            ps1 = connection.prepareStatement(sql);
            rs1 = ps1.executeQuery();
            while (rs1.next()) {
                parentMenu = new FunctionModule();
                sonMenus = new ArrayList<FunctionModule>();
                sql = "select functionid,modulename from tbl_function_module " + "where remarks='"
                        + rs1.getString("functionid") + "'";
                ps2 = connection.prepareStatement(sql);
                rs2 = ps2.executeQuery();
                while (rs2.next()) {
                    childMenu = new FunctionModule();
                    childMenu.setFunctionId(rs2.getString("functionid"));
                    childMenu.setModuleName(rs2.getString("modulename"));
                    sonMenus.add(childMenu);
                }
                parentMenu.setFunctionId(rs1.getString("functionid"));
                parentMenu.setModuleName(rs1.getString("modulename"));
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

    public List<String> findRolePower(String roleId) {
        List<String> rolePower = new ArrayList<String>();
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
