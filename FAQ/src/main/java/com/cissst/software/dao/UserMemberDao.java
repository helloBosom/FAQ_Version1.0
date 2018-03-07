/**
 * USERID ,USERNAME,USERPASSWARD, QQ ,EMAIL ,MSN "
 * ,CONTACTNUMBER ,MOBILEPHONE,APPLYMAJOR,CLASSES,GRADUATION,
 * MAJOR,IDENTITYCARD,BIRTH, ENGLISTLEVEL,ISJOB,COMPANY,STATUS
 */
package com.cissst.software.dao;

import com.cissst.software.model.User;
import com.cissst.software.model.UserMember;
import com.cissst.software.util.DBHelp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserMemberDao {
    public boolean addUser(UserMember user) {
        String sql = "insert into tbl_user(USERID,USERNAME,USERPASSWARD,QQ,EMAIL,MSN ,CONTACTNUMBER,"
                + "MOBILEPHONE,APPLYMAJOR,CLASSES,GRADUATION," +
                "MAJOR,IDENTITYCARD,BIRTH, ENGLISHLEVEL,COMPANY,STATUS)"
                + "values ('" + user.getUserid() + "','" + user.getUsername() + "','" + user.getUserpassward()
                + "','" + user.getQq() + "','" + user.getEmail() + "','" + user.getMsn() + "','" + user.getContactnumber() +
                "','" + user.getMobilephone() + "','" + user.getApplymajor() + "',"
                + "'" + user.getClasses() + "','" + user.getGraduation() + "','" +
                user.getMajor() + "','" + user.getIdentitycard() +
                "',to_date('" + user.getBirth() + "','YYYY-MM-DD'),'" + user.getEnglishlevel() +
                "','" + user.getCompany() + "','1')";
        System.out.println(sql);
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }

    public List<UserMember> query() {
        List<UserMember> lists = new ArrayList<UserMember>();
        Connection connection = DBHelp.getConnection();
        String sql = "select userid,username,qq,email,contactnumber,mobilephone,classes from tbl_user ";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            UserMember user = null;
            while (rs.next()) {
                user = new UserMember();
                user.setUserid(rs.getString("userid"));
                user.setUsername(rs.getString("username"));
                user.setClasses(rs.getString("classes"));
                user.setMobilephone(rs.getString("mobilephone"));
                user.setContactnumber(rs.getString("contactnumber"));
                user.setQq(rs.getString("qq"));
                user.setEmail(rs.getString("email"));
                lists.add(user);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }


    /*0:代表锁定
     *1：代表未锁
     *
     * */
    public boolean lock(String userid) {
        String sql = "update tbl_user set status='0' where userid='" +
                userid + "'";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;

    }


    public boolean deblock(String userid) {

        String sql = "update tbl_user set status='1' where userid='" +
                userid + "'";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }

    /**
     * 验证用户的合法性
     *
     * @param user
     * @return
     */
    public boolean validateUser(User user) {

        String sql = "select count(*) from tbl_user where "
                + "username='" + user.getUserName() + "' and userpassward='" + user.getUserPwd() + "'";
        Object object = DBHelp.executeSqlReturnValue(sql);
        if (object != null) {
            int count = Integer.parseInt(object.toString());
            if (count > 0)
                return true;
        }
        return false;
    }
}
