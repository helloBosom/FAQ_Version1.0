package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.QuestionClassifyDao;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.service.IQuestionClassifyService;

/**
 * 业务逻辑层实现子类
 * @author lenovo
 *
 */
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
	public List<QuestionClassify> queryQuestionClassify(String questionClassId, String questionName, int currentPage,
			int pageSize) {
		
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
