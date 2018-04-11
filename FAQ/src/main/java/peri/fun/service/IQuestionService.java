package peri.fun.service;

import peri.fun.model.Question;

import java.util.List;

public interface IQuestionService {
    public boolean addNewQuestion(Question question);

    public List<Question> queryQuestion();

    public List<Question> queryQuestionOk();

    public List<Question> queryQuestionNo();

    public List<Question> queryQuestion(String status, int num);

    public Question findQuextionById(int questionId);

    public boolean deleteQuestion(String questionId);

    public List<Question> queryQuestionNo(int currentPage, int pageSize);

    public List<Question> queryQuestionOk(int currentPage, int pageSize);

    public int totalRowsOk();

    public int totalRowsNo();
}
