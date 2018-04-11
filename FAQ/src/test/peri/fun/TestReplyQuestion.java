package peri.fun;

import org.junit.Test;
import peri.fun.dao.AnswerQuestionDao;
import peri.fun.model.ReplyQuestion;

import java.util.List;

public class TestReplyQuestion {

    private AnswerQuestionDao questionDao = new AnswerQuestionDao();

    @Test
    public void testMethod1() {
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
