package peri.fun.servlet;

import peri.fun.model.QuestionClassify;
import peri.fun.service.IQuestionClassifyService;
import peri.fun.service.impl.QuestionClassifyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class QuestionClassifyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int pageSize = 3;
    private boolean flag = false;
    private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mesthodName = request.getParameter("method");
        if ("add".equals(mesthodName)) {
            add(request, response);
        } else if ("delete".equals(mesthodName)) {
            delete(request, response);
        } else if ("updateinput".equals(mesthodName)) {
            updateInput(request, response);
        } else if ("update".equals(mesthodName)) {
            update(request, response);
        } else if ("batchdelete".equals(mesthodName)) {
            batchDeleteByQuestionId(request, response);
        } else {
            queryAll(request, response);
        }
    }

    private void batchDeleteByQuestionId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] questionTypeIds = request.getParameterValues("questiontypeid");
        questionClassifyService.deleteQuestionClassifyById(questionTypeIds);
        queryAll(request, response);
    }

    private void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionTypeId = request.getParameter("qid");
        QuestionClassify questionClassify = questionClassifyService.queryQuestionClassifyById(questionTypeId);
        request.setAttribute("questiontype", questionClassify);
        request.getRequestDispatcher("/admin/updatequestiontype.jsp").forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionClassId = request.getParameter("questionClassId");
        String questionClassName = request.getParameter("classifyName");
        String remarks = request.getParameter("remarks");
        QuestionClassify questionClassify = new QuestionClassify();
        questionClassify.setQuestionClassId(questionClassId);
        questionClassify.setClassifyName(questionClassName);
        questionClassify.setRemarks(remarks);
        questionClassifyService.updateQuestionClassify(questionClassify);
        flag = true;
        queryAll(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionTypeId = request.getParameter("questiontypeid");
        questionClassifyService.deleteQuestionClassifyById(questionTypeId);
        queryAll(request, response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionClassId = request.getParameter("questionClassId");
        String questionClassName = request.getParameter("classifyName");
        String remarks = request.getParameter("remarks");
        QuestionClassify questionClassify = new QuestionClassify();
        questionClassify.setQuestionClassId(questionClassId);
        questionClassify.setClassifyName(questionClassName);
        questionClassify.setRemarks(remarks);
        questionClassifyService.addQuestionClassify(questionClassify);
        queryAll(request, response);
        //�ض���addquestiontype.jsp
        //response.sendRedirect(request.getContextPath() + "/admin/addquestiontype.jsp");
    }

    private void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String questionTypeId = request.getParameter("questionClassId");
        String questionTypeName = request.getParameter("classifyName");
        int totalRecords = 0;
        if (questionTypeId == null && questionTypeName == null) {
            totalRecords = questionClassifyService.totalRows();
        } else {
            totalRecords = questionClassifyService.totalRows(questionTypeId, questionTypeName);
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
        List<QuestionClassify> lists = null;
        if ((questionTypeId == null) && (questionTypeName == null)) {
            lists = questionClassifyService.queryQuestionClassify(currentPage, pageSize);
        } else {
            lists = questionClassifyService.queryQuestionClassify(questionTypeId, questionTypeName, currentPage, pageSize);
        }
        request.setAttribute("lists", lists);
        request.setAttribute("currentPage", currentPage);
        request.getRequestDispatcher("/admin/questiontypelist.jsp").forward(request, response);
    }
}
