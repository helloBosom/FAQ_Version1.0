package com.cissst.software.service;

import java.util.List;

import com.cissst.software.dao.QuestionDao;
import com.cissst.software.model.Question;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.User;

/**
 * 业务逻辑层
 * @author lenovo
 *
 */
public interface IQuestionService {
	/**
	 * 添加新问题
	 * @param question
	 * @return
	 */
	public boolean addNewQuestion(Question question);
	
	/**
	 * 查询所有问题
	 * @return
	 */
	public List<Question> queryQuestion();
	
	public List<Question> queryQuestionOk();
	
	public List<Question> queryQuestionNo();
	
	public List<Question> queryQuestion(String status,int num);
	
	/**
	 * 根据问题编号查询发布问题的详细信息
	 * @param questionId
	 * @return
	 */
	public Question findQuextionById(int questionId);
	public boolean deleteQuestion(String questionId);
	public List<Question> queryQuestionNo(int currentPage, int pageSize);
	public List<Question> queryQuestionOk(int currentPage, int pageSize);
	
	public int totalRowsOk();
	public int totalRowsNo();
}
