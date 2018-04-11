package peri.fun.dao;

import peri.fun.model.Question;
import peri.fun.util.DBHelp;
import peri.fun.util.DateFormatUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionDao {

    public boolean addNewQuestion(Question question) {
        String sql = "insert into tbl_publish_question values" + "(my_sequence.nextval,'" + question.getTitle() + "',"
                + "'" + question.getUestionClassId() + "'," + question.getTotle_score() + "," + ""
                + question.getGrade_diffculty() + ",'" + question.getContent() + "'," + "'" + question.getPublisherId()
                + "','" + DateFormatUtil.getCurrentDate() + "','" + DateFormatUtil.getCurrentDate() + "','0'," + "'"
                + question.getRemarks() + "')";
        boolean flag = DBHelp.executeSingleSql(sql);
        return flag;
    }

    public List<Question> queryQuestion(String status, int num) {
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        String sql = "select publish_question_id,title,uestionclassid,totle_score,grade_diffculty,content,publisherid, "
                + "publishtime,lastreply_date,status,remarks from tbl_publish_question where status='"
                + status + "' and rownum<=" + num;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(Integer.parseInt(rs.getString("publish_question_id")));
                question.setTitle(rs.getString("title"));
                question.setUestionClassId(rs.getString("uestionclassid"));
                question.setTotle_score(rs.getInt("totle_score"));
                question.setGrade_diffculty(rs.getInt("grade_diffculty"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishTime"));
                question.setLasterReply_date(rs.getDate("lastreply_date"));
                question.setStatus(rs.getString("status"));
                question.setRemarks(rs.getString("remarks"));
                lists.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public List<Question> queryQuestion() {
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        String sql = "SELECT publish_question_id,title,uestionclassid, totle_score,grade_diffculty,content,publisherid, "
                + "publishtime,lastreply_date,status,remarks FROM tbl_publish_question";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(Integer.parseInt(rs.getString("publish_question_id")));
                question.setTitle(rs.getString("title"));
                question.setUestionClassId(rs.getString("uestionclassid"));
                question.setTotle_score(rs.getInt("totle_score"));
                question.setGrade_diffculty(rs.getInt("grade_diffculty"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishTime"));
                question.setLasterReply_date(rs.getDate("lastreply_date"));
                question.setStatus(rs.getString("status"));
                question.setRemarks(rs.getString("remarks"));
                lists.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public List<Question> queryQuestionNo() {
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        String sql = "SELECT publish_question_id,title,uestionclassid,totle_score,grade_diffculty,content,publisherid, "
                + "publishtime,lastreply_date,status,remarks FROM tbl_publish_question WHERE status='" + 0 + "'";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(Integer.parseInt(rs.getString("publish_question_id")));
                question.setTitle(rs.getString("title"));
                question.setUestionClassId(rs.getString("uestionclassid"));
                question.setTotle_score(rs.getInt("totle_score"));
                question.setGrade_diffculty(rs.getInt("grade_diffculty"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishTime"));
                question.setLasterReply_date(rs.getDate("lastreply_date"));
                question.setStatus(rs.getString("status"));
                question.setRemarks(rs.getString("remarks"));
                lists.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public List<Question> queryQuestionOk() {
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        String sql = "SELECT publish_question_id,title,uestionclassid,totle_score,grade_diffculty,content,publisherid, "
                + "publishtime,lastreply_date,status,remarks FROM tbl_publish_question WHERE status='" + 1 + "'";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(Integer.parseInt(rs.getString("publish_question_id")));
                question.setTitle(rs.getString("title"));
                question.setUestionClassId(rs.getString("uestionclassid"));
                question.setTotle_score(rs.getInt("totle_score"));
                question.setGrade_diffculty(rs.getInt("grade_diffculty"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishTime"));
                question.setLasterReply_date(rs.getDate("lastreply_date"));
                question.setStatus(rs.getString("status"));
                question.setRemarks(rs.getString("remarks"));
                lists.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public List<Question> queryQuestionType() {
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        String sql = "SELECT questionclassid,classifyname FROM tbl_questionclassify";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(Integer.parseInt(rs.getString("publish_question_id")));
                question.setTitle(rs.getString("title"));
                lists.add(question);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public Question findQuextionById(int questionId) {
        Question question = new Question();
        Connection connection = DBHelp.getConnection();
        String sql = "select publish_question_id,title,content,publisherid,publishtime from tbl_publish_question "
                + " where  publish_question_id=" + questionId;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                question.setPublish_question_id(Integer.parseInt(rs.getString("publish_question_id")));
                question.setTitle(rs.getString("title"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishTime"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return question;
    }

    public boolean deleteQuestion(String questionId) {
        List<String> sqls = new ArrayList<String>();
        String sql = "delete from tbl_reply_question where publish_question_id='" + questionId + "'";
        sqls.add(sql);
        sql = "delete from tbl_publish_question where publish_question_id='" + questionId + "'";
        sqls.add(sql);
        DBHelp.executeBatchSql(sqls.toArray());
        return true;
    }

    public List<Question> queryQuestionOk(int currentPage, int pageSize) {
        String sql = "select publish_question_id,title,content,publisherid,publishtime from " +
                " (select rownum r,publish_question_id,title,content,publisherid,publishtime from tbl_publish_question " +
                " where status='1' and  rownum<=" + (currentPage * pageSize) + ") m  " +
                " where m.r>=" + ((currentPage - 1) * pageSize + 1);
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(rs.getInt("publish_question_id"));
                question.setTitle(rs.getString("title"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishtime"));
                lists.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public List<Question> queryQuestionNo(int currentPage, int pageSize) {
        String sql = "select publish_question_id,title,content,publisherid,publishtime from " +
                " (select rownum r,publish_question_id,title,content,publisherid,publishtime from tbl_publish_question " +
                " where status='0' and  rownum<=" + (currentPage * pageSize) + ") m  " +
                " where m.r>=" + ((currentPage - 1) * pageSize + 1);
        List<Question> lists = new ArrayList<Question>();
        Connection connection = DBHelp.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            Question question = null;
            while (rs.next()) {
                question = new Question();
                question.setPublish_question_id(rs.getInt("publish_question_id"));
                question.setTitle(rs.getString("title"));
                question.setContent(rs.getString("content"));
                question.setPublisherId(rs.getString("publisherId"));
                question.setPublishTime(rs.getDate("publishtime"));
                lists.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return lists;
    }

    public int totalRowsNo() {
        String sql = "select * from tbl_publish_question where status='0'";
        int count = Integer.parseInt(DBHelp.executeSqlReturnValue(sql).toString());
        return count;
    }

    public int totalRowsOk() {
        String sql = "select * from tbl_publish_question where status='1'";
        int count = Integer.parseInt(DBHelp.executeSqlReturnValue(sql).toString());
        return count;
    }
}
