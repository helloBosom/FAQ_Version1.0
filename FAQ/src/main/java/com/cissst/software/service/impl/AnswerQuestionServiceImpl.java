package com.cissst.software.service.impl;

import java.util.List;

import com.cissst.software.dao.AnswerQuestionDao;
import com.cissst.software.model.ReplyQuestion;
import com.cissst.software.service.IAnswerQuestionService;

/**
 * ҵ���߼���ʵ������--�Է�������Ļظ�����
 * @author lenovo
 *
 */
public class AnswerQuestionServiceImpl implements IAnswerQuestionService {

	private AnswerQuestionDao answerQuestionDao =
			new AnswerQuestionDao();
	@Override
	public boolean addAnswerQuestion(ReplyQuestion replyQuestion) {		
		return answerQuestionDao.addAnswerQuestion(replyQuestion);
	}
	@Override
	public List<ReplyQuestion> queryReplyQuestion(int publishQuestionId) {
		return answerQuestionDao.queryReplyQuestion(publishQuestionId);
	}

}
