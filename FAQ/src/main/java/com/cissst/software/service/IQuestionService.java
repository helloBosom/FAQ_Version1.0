package com.cissst.software.service;

import java.util.List;

import com.cissst.software.dao.QuestionDao;
import com.cissst.software.model.Question;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.User;

/**
 * ҵ���߼���
 * @author lenovo
 *
 */
public interface IQuestionService {
	/**
	 * ���������
	 * @param question
	 * @return
	 */
	public boolean addNewQuestion(Question question);
	
	/**
	 * ��ѯ��������
	 * @return
	 */
	public List<Question> queryQuestion();
	
	public List<Question> queryQuestionOk();
	
	public List<Question> queryQuestionNo();
	
	public List<Question> queryQuestion(String status,int num);
	
	/**
	 * ���������Ų�ѯ�����������ϸ��Ϣ
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
