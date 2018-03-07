package com.cissst.software.dao;

import com.cissst.software.model.ReplyQuestion;
import com.cissst.software.util.DBHelp;
import com.cissst.software.util.DateFormatUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 数据库访问层--实现回复操作
 * @author lenovo
 */
public class AnswerQuestionDao {

    /**
     * 对发布的问题实现回复操作
     *
     * @param replyQuestion
     * @return
     */
    public boolean addAnswerQuestion(ReplyQuestion replyQuestion) {
        List<String> sqls = new ArrayList<String>();
        // 1.将客户回复的问题添加到数据库中
        String sql = "insert into tbl_reply_question(REPLYQUESTIONID,PUBLISH_QUESTION_ID,"
                + "QUESTIONCONTENT,USERID,REPLYTIME,STATUS,REMARKS) " + "values (response_question_id.nextval,"
                + replyQuestion.getPublishQuestionId() + ",'" + replyQuestion.getQuestionContent() + "','"
                + replyQuestion.getUserId() + "','" + DateFormatUtil.getCurrentDate() + "','0','')";
        System.out.println(sql);
        sqls.add(sql);
        // 2.修改发布问题的状态将未处理修改为已处理的操作.
        sql = "update tbl_publish_question set status='1' where publish_question_id="
                + replyQuestion.getPublishQuestionId();
        System.out.println(sql);
        sqls.add(sql);
        DBHelp.executeBatchSql(sqls.toArray());
        return true;
    }

    public List<ReplyQuestion> queryReplyQuestion(int publishQuestionId) {
        List<ReplyQuestion> replyQuestions = new ArrayList<ReplyQuestion>();
        String sql = "select replyquestionid,publish_question_id,questioncontent,"
                + "userid,replytime from tbl_reply_question " + " where publish_question_id=" + publishQuestionId;
        Connection connection = DBHelp.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            ReplyQuestion replyQuestion = null;
            while (rs.next()) {
                replyQuestion = new ReplyQuestion();
                replyQuestion.setReplyQuestionId(rs.getInt("replyquestionid"));
                replyQuestion.setPublishQuestionId(rs.getInt("publish_question_id"));
                replyQuestion.setQuestionContent(rs.getString("questioncontent"));
                replyQuestion.setUserId(rs.getString("userid"));
                replyQuestion.setReplyTime(rs.getDate("replytime"));

                replyQuestions.add(replyQuestion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeAll(rs, ps, connection);
        }
        return replyQuestions;
    }
}
