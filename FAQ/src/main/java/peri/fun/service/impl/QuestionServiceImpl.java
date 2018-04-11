package peri.fun.service.impl;

import peri.fun.dao.QuestionDao;
import peri.fun.model.Question;
import peri.fun.service.IQuestionService;

import java.util.List;

public class QuestionServiceImpl implements IQuestionService {

    private QuestionDao questionDao = new QuestionDao();

    public List<Question> queryQuestion() {
        return questionDao.queryQuestion();
    }

    public boolean addNewQuestion(Question question) {
        return questionDao.addNewQuestion(question);
    }

    @Override
    public List<Question> queryQuestionOk() {
        // TODO Auto-generated method stub
        return questionDao.queryQuestionOk();
    }

    @Override
    public List<Question> queryQuestionNo() {
        return questionDao.queryQuestionNo();
    }

    @Override
    public Question findQuextionById(int questionId) {
        return questionDao.findQuextionById(questionId);
    }

    @Override
    public List<Question> queryQuestion(String status, int num) {
        return questionDao.queryQuestion(status, num);
    }

    @Override
    public boolean deleteQuestion(String questionId) {
        return questionDao.deleteQuestion(questionId);
    }

    @Override
    public List<Question> queryQuestionNo(int currentPage, int pageSize) {
        return questionDao.queryQuestionNo(currentPage, pageSize);
    }

    @Override
    public List<Question> queryQuestionOk(int currentPage, int pageSize) {
        return questionDao.queryQuestionOk(currentPage, pageSize);
    }

    @Override
    public int totalRowsOk() {
        return questionDao.totalRowsOk();
    }

    @Override
    public int totalRowsNo() {
        return questionDao.totalRowsNo();
    }
}
