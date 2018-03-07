package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.ReplyQuestion;

/**
 * ҵ���߼���--�ظ�����
 * @author lenovo
 *
 */
public interface IAnswerQuestionService {

	/**
	 * ��ӻظ�����
	 * @param replyQuestion
	 * @return
	 */
	public boolean addAnswerQuestion(ReplyQuestion replyQuestion);
	
	/**
	 * ���ݷ�������ı�Ų�ѯ�ѻظ���������Ϣ
	 * @param publishQuestionId
	 * @return
	 */
	public List<ReplyQuestion> queryReplyQuestion(int publishQuestionId); 
	
}
