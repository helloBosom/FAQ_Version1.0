package peri.fun.servlet;

import peri.fun.model.Question;
import peri.fun.model.QuestionClassify;
import peri.fun.service.IQuestionClassifyService;
import peri.fun.service.IQuestionService;
import peri.fun.service.impl.QuestionClassifyServiceImpl;
import peri.fun.service.impl.QuestionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

public class QuestionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IQuestionService questionService = new QuestionServiceImpl();
    private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();

    private int pageSize = 2;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            execute(request, response);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            execute(request, response);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        String mesthodName = request.getParameter("method");
        if ("add".equals(mesthodName)) {
            add(request, response);
        } else if ("queryquestiontype".equals(mesthodName)) {
            queryQuestionType(request, response);
        } else if ("queryall".equals(mesthodName)) {
            queryAll(request, response);
        } else if ("queryok".equals(mesthodName)) {
            queryOk(request, response);
        } else if ("queryno".equals(mesthodName)) {
            queryNo(request, response);
        } else if ("delete".equals(mesthodName)) {
            delete(request, response);
        }
    }

    private void queryNo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sta = request.getParameter("sta");
        List<Question> questions = questionService.queryQuestionNo();
        request.setAttribute("questions", questions);
        request.setAttribute("sta", sta);
        request.getRequestDispatcher("/admin/questionlist.jsp").forward(request, response);
    }

    private void queryOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sta = request.getParameter("sta");
        List<Question> questions = questionService.queryQuestionOk();
        request.setAttribute("questions", questions);
        request.setAttribute("sta", sta);
        request.getRequestDispatcher("/admin/questionlist.jsp").forward(request, response);

    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        //String publish_question_id = request.getParameter("publish_question_id");
        String title = request.getParameter("title");
        String uestionClassId = request.getParameter("questionClassifyId");
        int totle_score = Integer.parseInt(request.getParameter("totle_score"));
        int grade_diffculty = Integer.parseInt(request.getParameter("grade_diffculty"));
        String content = request.getParameter("content");
        String publisherId = request.getParameter("publisherId");
        Question question = new Question();
        question.setTitle(title);
        question.setUestionClassId(uestionClassId);
        question.setTotle_score(totle_score);
        question.setGrade_diffculty(grade_diffculty);
        question.setContent(content);
        question.setPublisherId(publisherId);
        questionService.addNewQuestion(question);
        queryQuestionType(request, response);
    }

    private void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sta = request.getParameter("sta");
        List<Question> questions = questionService.queryQuestion();
        request.setAttribute("questions", questions);
        request.setAttribute("sta", sta);
        request.getRequestDispatcher("/admin/questionlist.jsp").forward(request, response);
    }

    private void queryAllByIdAndTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String publish_question_id = request.getParameter("publish_question_id");
        String title = request.getParameter("title");
        int totalRecords = 0;
        if (publish_question_id == null) {
            //totalRecords = questionService.totalRows();
        } else {
            //totalRecords=questionService.totalRows(publish_question_id, title);
        }
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
        if ((publish_question_id == null) && (title == null)) {
            // lists = questionService.queryQuestion(currentPage,pageSize);
        } else {
            // lists =questionService.queryQuestion(publish_question_id,title,currentPage,pageSize);
        }
        request.setAttribute("lists", lists);
        request.setAttribute("currentPage", currentPage);
        request.getRequestDispatcher("admin/questiontypelist.jsp").forward(request, response);
    }

    private void queryQuestionType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<QuestionClassify> questionClasses = questionClassifyService.queryQuestionClassify();
        request.setAttribute("questionClasses", questionClasses);
        request.getRequestDispatcher("/admin/addquestion.jsp").forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionId = request.getParameter("questionId");
        String sta = request.getParameter("sta");
        questionService.deleteQuestion(questionId);
        if ("no".equals(sta)) {
        } else if ("ok".equals(sta)) {
            queryOk(request, response);
        } else if ("all".equals(sta)) {
            queryAll(request, response);
        }
    }
}
