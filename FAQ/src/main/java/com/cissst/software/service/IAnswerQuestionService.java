package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.ReplyQuestion;

/**
 * 业务逻辑层--回复问题
 * @author lenovo
 *
 */
public interface IAnswerQuestionService {

	/**
	 * 添加回复内容
	 * @param replyQuestion
	 * @return
	 */
	public boolean addAnswerQuestion(ReplyQuestion replyQuestion);
	
	/**
	 * 根据发布问题的编号查询已回复的所有信息
	 * @param publishQuestionId
	 * @return
	 */
	public List<ReplyQuestion> queryReplyQuestion(int publishQuestionId); 
	
}
