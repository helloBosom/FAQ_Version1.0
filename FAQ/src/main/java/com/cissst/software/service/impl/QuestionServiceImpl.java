package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.QuestionDao;
import com.cissst.software.model.Question;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.service.IQuestionService;
/**
 * 业务逻辑层实现子类
 * @author lenovo
 *
 */
public class QuestionServiceImpl implements IQuestionService {
	
	private QuestionDao questionDao = new QuestionDao();
	public List<Question> queryQuestion() {
		return questionDao.queryQuestion();
	}
	
	/**
	 * 添加新问题
	 */

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
		// TODO Auto-generated method stub
		return questionDao.queryQuestionNo();
	}

	@Override
	public Question findQuextionById(int questionId) {
		
		return questionDao.findQuextionById(questionId);
	}

	@Override
	public List<Question> queryQuestion(String status, int num) {
		// TODO Auto-generated method stub
		return questionDao.queryQuestion(status, num);
	}

	@Override
	public boolean deleteQuestion(String questionId) {
		// TODO Auto-generated method stub
		return questionDao.deleteQuestion(questionId);
	}

	@Override
	public List<Question> queryQuestionNo(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return questionDao.queryQuestionNo(currentPage, pageSize);
	}

	@Override
	public List<Question> queryQuestionOk(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return questionDao.queryQuestionOk(currentPage, pageSize);
	}

	@Override
	public int totalRowsOk() {
		// TODO Auto-generated method stub
		return questionDao.totalRowsOk();
	}

	@Override
	public int totalRowsNo() {
		// TODO Auto-generated method stub
		return questionDao.totalRowsNo();
	}


}
