package peri.fun.service;

import peri.fun.model.ReplyQuestion;

import java.util.List;

public interface IAnswerQuestionService {

    public boolean addAnswerQuestion(ReplyQuestion replyQuestion);

    public List<ReplyQuestion> queryReplyQuestion(int publishQuestionId);

}
