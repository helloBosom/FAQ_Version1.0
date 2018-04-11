package peri.fun.servlet;

import peri.fun.model.Question;
import peri.fun.model.QuestionClassify;
import peri.fun.model.ReplyQuestion;
import peri.fun.service.IAnswerQuestionService;
import peri.fun.service.IQuestionClassifyService;
import peri.fun.service.IQuestionService;
import peri.fun.service.impl.AnswerQuestionServiceImpl;
import peri.fun.service.impl.QuestionClassifyServiceImpl;
import peri.fun.service.impl.QuestionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * ǰ̨ҳ����ʾ����
 *
 * @author lenovo
 */
public class DisplayQuestionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int pageSize = 15;
    private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();
    private IQuestionService questionService = new QuestionServiceImpl();
    private IAnswerQuestionService answerQuestionService = new AnswerQuestionServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        List<QuestionClassify> questionClassifys = questionClassifyService.queryQuestionClassify();
        request.setAttribute("questionClassifys", questionClassifys);
        if ("querycontentbyid".equals(methodName)) {
            queryContentById(request, response);
        } else if ("addanswerquestion".equals(methodName)) {
            addAnswerQuestion(request, response);
        } else if ("queryQuestionOk".equals(methodName)) {
            queryQuestionOk(request, response);
        } else if ("queryQuestionNo".equals(methodName)) {
            queryQuestionNo(request, response);
        } else {
            queryTitle(request, response);
        }
    }

    private void addAnswerQuestion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String replyQuestionContent = request.getParameter("questionContent");
        int publishQuestionId = Integer.parseInt(request.getParameter("publishQuestionId"));
        HttpSession session = request.getSession();
        String loginUserName = (String) session.getAttribute("username");
        System.out.println(publishQuestionId);
        System.out.println(replyQuestionContent);
        System.out.println(loginUserName);
        ReplyQuestion replyQuestion = new ReplyQuestion();
        replyQuestion.setPublishQuestionId(publishQuestionId);
        replyQuestion.setQuestionContent(replyQuestionContent);
        replyQuestion.setUserId(loginUserName);
        answerQuestionService.addAnswerQuestion(replyQuestion);
        Question question = questionService.findQuextionById(publishQuestionId);
        List<ReplyQuestion> replyQuestions = answerQuestionService.queryReplyQuestion(publishQuestionId);
        request.setAttribute("question", question);
        request.setAttribute("answerquestion", replyQuestions);
        request.getRequestDispatcher("showdetail.jsp").forward(request, response);
    }

    private void queryContentById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionId = request.getParameter("questionId");
        Question question = questionService.findQuextionById(Integer.parseInt(questionId));
        request.setAttribute("question", question);
        request.getRequestDispatcher("showdetail.jsp").forward(request, response);
    }

    private void queryTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Question> questions = questionService.queryQuestion();
        request.setAttribute("questions", questions);
        request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
    }

    private void queryQuestionOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int totalRecords = 0;
        totalRecords = questionService.totalRowsOk();
        int totalPages = totalRecords / pageSize;
        if (totalRecords % pageSize != 0) {
            totalPages++;
        }
        request.setAttribute("totalPages", totalPages);
        int currentPage = 1;
        String object = request.getParameter("currentPage");
        if (object != null) {
            currentPage = Integer.parseInt(object);
        }
        List<Question> lists = null;
        lists = questionService.queryQuestionOk(currentPage, pageSize);
        request.setAttribute("lists", lists);
        request.setAttribute("currentPage", currentPage);
        request.getRequestDispatcher("/yfaqlist.jsp").forward(request, response);
    }

    private void queryQuestionNo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int totalRecords = 0;
        totalRecords = questionService.totalRowsNo();
        int totalPages = totalRecords / pageSize;
        if (totalRecords % pageSize != 0) {
            totalPages++;
        }
        request.setAttribute("totalPages", totalPages);
        int currentPage = 1;
        String object = request.getParameter("currentPage");
        if (object != null) {
            currentPage = Integer.parseInt(object);
        }
        List<Question> lists = null;
        lists = questionService.queryQuestionNo(currentPage, pageSize);
        request.setAttribute("lists", lists);
        request.setAttribute("currentPage", currentPage);
        request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
    }
}
