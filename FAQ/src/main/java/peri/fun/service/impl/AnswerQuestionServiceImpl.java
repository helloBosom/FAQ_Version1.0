package peri.fun.service.impl;

import peri.fun.dao.AnswerQuestionDao;
import peri.fun.model.ReplyQuestion;
import peri.fun.service.IAnswerQuestionService;

import java.util.List;

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
