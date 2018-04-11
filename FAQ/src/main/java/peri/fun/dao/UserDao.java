package peri.fun.dao;

import peri.fun.model.User;
import peri.fun.util.DBHelp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class UserDao {
    public boolean validateUser(User user) {
        String sql = "select count(*) from tbl_administrator where "
                + "nickname='" + user.getUserName() + "' and password='" + user.getUserPwd() + "'";
        Object object = DBHelp.executeSqlReturnValue(sql);
        if (object != null) {
            int count = Integer.parseInt(object.toString());
            if (count > 0)
                return true;
        }
        return false;
    }

    public Map<String, List> findPowerByName(String loginName) {

        List<String> functionNumber = new ArrayList<String>();
        List<String> parent = new ArrayList<String>();
        List<String> children = null;
        Map<String, List> power = new TreeMap();
        String sql = "select functionid from tbl_user_role t,tbl_administrator r,"
                + "tbl_role_function p where t.managerid = r.managerid "
                + "and t.roleid = p.roleid and  r.nickname='" + loginName + "'";
        List<List> functions = DBHelp.queryRowsMultiTables(sql);
        if (functions != null && functions.size() > 0) {
            for (int i = 0; i < functions.size(); i++) {
                List function = functions.get(i);
                for (int j = 0; j < function.size(); j++) {
                    String functionId = (String) function.get(j);
                    functionNumber.add(functionId);
                }
            }
        }

        for (String parentNumber : functionNumber) {
            sql = "select functionid from tbl_function_module" +
                    " where remarks is null and functionid='" + parentNumber + "'";
            String parentId = (String) DBHelp.executeSqlReturnValue(sql);
            if (parentId != null) {
                parent.add(parentId);
            }
        }

        if (parent != null && parent.size() > 0) {
            for (String id : parent) {
                children = new ArrayList<String>();
                for (String totalId : functionNumber) {
                    sql = "select functionid from tbl_function_module where " + "remarks ='" + id
                            + "' and functionid = '" + totalId + "'";
                    String childrenId = (String) DBHelp.executeSqlReturnValue(sql);
                    if (childrenId != null) {
                        children.add(childrenId);
                    }
                    power.put(id, children);
                }

            }
        }
        return power;
    }
}
