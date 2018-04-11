package peri.fun.dao;

import peri.fun.model.Announcement;
import peri.fun.util.DBHelp;
import peri.fun.util.DateFormatUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AnnouncementDao {

    public boolean addNewAnnouncement(Announcement announcement) {
        String sql = "insert into tbl_announcement values"
                + "('" + announcement.getAnnouncementId() + "','" + announcement.getAnnouncementContent() + "','" + announcement.getMaggerId() + "',"
                + "'" + DateFormatUtil.getCurrentDate() + "')";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }

    public List<Announcement> queryAnnouncement() {
        List<Announcement> lists = new ArrayList<Announcement>();
        Connection connection = DBHelp.getConnection();
        String sql = "SELECT announcementid,announcementcontent,managerid,"
                + "publishtime FROM tbl_announcement";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Announcement announcement = null;
            while (rs.next()) {
                announcement = new Announcement();
                announcement.setAnnouncementId(rs.getString("announcementid"));
                announcement.setAnnouncementContent(rs.getString("announcementcontent"));
                announcement.setMaggerId(rs.getString("managerid"));
                announcement.setPublishTime(rs.getDate("publishtime"));
                lists.add(announcement);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public List<Map> queryAnnouncement(int num) {
        List<Map> lists = new ArrayList<Map>();
        Connection connection = DBHelp.getConnection();
        String sql = "select announcementid,announcementcontent,a.managerid,b.nickname,"
                + "publishtime from tbl_announcement a,tbl_administrator b  where a.managerid=b.managerid and rownum<=" + num;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Map map = null;
            while (rs.next()) {
                map = new HashMap();
                map.put("announcementid", rs.getString("announcementid"));
                map.put("announcementcontent", rs.getString("announcementcontent"));
                map.put("managerid", rs.getString("managerid"));
                map.put("publishtime", rs.getDate("publishtime"));
                map.put("nickname", rs.getString("nickname"));
                lists.add(map);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public boolean deleteAnnouncement(String announcementId) {
        String sql = "delete from tbl_announcement where announcementid='" + announcementId + "'";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }
}
