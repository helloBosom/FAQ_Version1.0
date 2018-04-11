package peri.fun.service;

import peri.fun.model.QuestionClassify;

import java.util.List;

public interface IQuestionClassifyService {
    public boolean addQuestionClassify(QuestionClassify questionClassify);

    public boolean updateQuestionClassify(QuestionClassify questionClassify);

    public List<QuestionClassify> queryQuestionClassify();

    public QuestionClassify queryQuestionClassifyById(String questionClassId);

    public int totalRows();

    public int totalRows(String questionClassId, String questionName);

    public List<QuestionClassify> queryQuestionClassify(int currentPage, int pageSize);

    public List<QuestionClassify> queryQuestionClassify(String questionClassId, String questionName, int currentPage, int pageSize);

    public boolean deleteQuestionClassifyById(String questionClassId);

    public boolean deleteQuestionClassifyById(String[] questionClassId);

}
