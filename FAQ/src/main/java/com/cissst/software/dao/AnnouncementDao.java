package com.cissst.software.dao;

import com.cissst.software.model.Announcement;
import com.cissst.software.util.DBHelp;
import com.cissst.software.util.DateFormatUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AnnouncementDao {

    /**
     * 添加新公告
     *
     * @param announcement
     * @return boolean
     */
    public boolean addNewAnnouncement(Announcement announcement) {
        //获取当前系统时间
        String sql = "insert into tbl_announcement values"
                + "('" + announcement.getAnnouncementId() + "','" + announcement.getAnnouncementContent() + "','" + announcement.getMaggerId() + "',"
                + "'" + DateFormatUtil.getCurrentDate() + "')";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }

    /**
     * 查询公告
     *
     * @return List<Announcement>
     */
    public List<Announcement> queryAnnouncement() {
        List<Announcement> lists = new ArrayList<Announcement>();
        Connection connection = DBHelp.getConnection();
        String sql = "select announcementid,announcementcontent,managerid,"
                + "publishtime from tbl_announcement";
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

    /**
     * 查询指定公告条数
     *
     * @param num
     * @return List<Announcement>
     */
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

    /**
     * 根据公告编号删除记录
     *
     * @param announcementId
     * @return
     */
    public boolean deleteAnnouncement(String announcementId) {
        String sql = "delete from tbl_announcement where announcementid='" + announcementId + "'";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }

}
