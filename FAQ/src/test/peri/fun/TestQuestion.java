package peri.fun;

import org.junit.Test;
import peri.fun.dao.QuestionDao;
import peri.fun.model.Question;

import java.util.List;

public class TestQuestion {

    private QuestionDao questionDao = new QuestionDao();

    @Test
    public void testMethod1() {
        Question question = new Question();
        question.setTitle("abc");
        question.setContent("gsgdgsdfg!");
        question.setPublisherId("1001");
        question.setUestionClassId("001");
        question.setStatus("0");
        boolean flag = questionDao.addNewQuestion(question);
        System.out.println(flag);
    }

    @Test
    public void testMethod2() {
        List<Question> questions = questionDao.queryQuestion();
        for (Question question : questions) {
            System.out.println(question.toString());
        }
    }

    @Test
    public void testMethod3() {
        List<Question> questions = questionDao.queryQuestion();
        for (Question question : questions) {
            System.out.println(question.toString());
        }
    }

    @Test
    public void testMethod4() {
        List<Question> questions = questionDao.queryQuestion();
        for (Question question : questions) {
            System.out.println(question.toString());
        }
    }

    @Test
    public void testMethod5() {
        Question question = questionDao.findQuextionById(41);
        System.out.println(question.toString());
    }
}
