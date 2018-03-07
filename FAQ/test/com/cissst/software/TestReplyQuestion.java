package com.cissst.software;

import com.cissst.software.dao.AnswerQuestionDao;
import com.cissst.software.model.ReplyQuestion;
import org.junit.Test;

import java.util.List;

public class TestReplyQuestion {

    private AnswerQuestionDao questionDao = new AnswerQuestionDao();

    @Test
    public void testMethod1() {
        //创建回复问题对象
        ReplyQuestion replyQuestion = new ReplyQuestion();
        replyQuestion.setPublishQuestionId(42);
        replyQuestion.setQuestionContent("NICE");
        replyQuestion.setUserId("admin");

        questionDao.addAnswerQuestion(replyQuestion);
        System.out.println("over");
    }

    @Test
    public void testMethod2() {
        List<ReplyQuestion> replyQuestions = questionDao.queryReplyQuestion(41);
        for (ReplyQuestion reqplyQuestion : replyQuestions) {
            System.out.println(reqplyQuestion);
        }
    }
}
