package peri.fun.service.impl;

import peri.fun.dao.QuestionClassifyDao;
import peri.fun.model.QuestionClassify;
import peri.fun.service.IQuestionClassifyService;

import java.util.List;

public class QuestionClassifyServiceImpl implements IQuestionClassifyService {

    private QuestionClassifyDao questionClassifyDao = new QuestionClassifyDao();

    public boolean addQuestionClassify(QuestionClassify questionClassify) {
        return questionClassifyDao.addQuestionClassify(questionClassify);
    }

    public boolean updateQuestionClassify(QuestionClassify questionClassify) {
        return questionClassifyDao.updateQuestionClassify(questionClassify);
    }

    public boolean deleteQuestionClassifyById(String questionClassId) {
        return questionClassifyDao.deleteQuestionClassifyById(questionClassId);
    }

    public List<QuestionClassify> queryQuestionClassify() {
        return questionClassifyDao.queryQuestionClassify();
    }

    public QuestionClassify queryQuestionClassifyById(String questionClassId) {
        return questionClassifyDao.queryQuestionClassifyById(questionClassId);
    }

    @Override
    public int totalRows() {
        return questionClassifyDao.totalRows();
    }

    @Override
    public List<QuestionClassify> queryQuestionClassify(int currentPage, int pageSize) {

        return questionClassifyDao.queryQuestionClassify(currentPage, pageSize);
    }

    @Override
    public List<QuestionClassify> queryQuestionClassify(String questionClassId, String questionName, int currentPage, int pageSize) {
        return questionClassifyDao.queryQuestionClassify(questionClassId, questionName, currentPage, pageSize);
    }

    @Override
    public int totalRows(String questionClassId, String questionName) {

        return questionClassifyDao.totalRows(questionClassId, questionName);
    }

    @Override
    public boolean deleteQuestionClassifyById(String[] questionClassId) {

        return questionClassifyDao.deleteQuestionClassifyById(questionClassId);
    }
}
