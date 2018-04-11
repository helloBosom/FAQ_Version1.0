package peri.fun.servlet;

import peri.fun.model.*;
import peri.fun.service.*;
import peri.fun.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

public class IndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IQuestionService questionService = new QuestionServiceImpl();
    private IAnswerQuestionService answerQuestionService = new AnswerQuestionServiceImpl();
    private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();
    private IUserMemberService userService = new UserMemberServiceImpl();
    private IAnnouncementService announcementService = new AnnouncementServiceImpl();

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

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        request.setCharacterEncoding("gb2312");
        getData(request, response);
        String methodName = request.getParameter("method");
        if ("login".equals(methodName)) {
            login(request, response);
        } else if ("logout".equals(methodName)) {
            logout(request, response);
        } else if ("queryDetails".equals(methodName)) {
            queryQuestionDetails(request, response);
        } else if ("queryQuestionOk".equals(methodName)) {
            queryOk(request, response);
        } else if ("queryQuestionNo".equals(methodName)) {
            queryNo(request, response);
        } else if ("addQuestion".equals(methodName)) {
            addQuestion(request, response);
        } else if ("addUser".equals(methodName)) {
            addUser(request, response);
        } else {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        session.removeAttribute("username");
        session.invalidate();
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private void queryQuestionDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String questionId = request.getParameter("questionid");
        Question question = questionService.findQuextionById(Integer.parseInt(questionId));
        List<ReplyQuestion> answerquestion = answerQuestionService.queryReplyQuestion(Integer.parseInt(questionId));
        request.setAttribute("question", question);
        request.setAttribute("answerquestion", answerquestion);
        request.getRequestDispatcher("/showdetail.jsp").forward(request, response);
    }

    private void getData(HttpServletRequest request, HttpServletResponse response) {
        List<Map> annos = announcementService.queryAnnouncement(7);
        request.setAttribute("annos", annos);
        List<Question> questions1 = questionService.queryQuestion("0", 7);
        List<Question> questions2 = questionService.queryQuestion("1", 7);
        request.setAttribute("questions1", questions1);
        request.setAttribute("questions2", questions2);
        List<QuestionClassify> questionClassifys = questionClassifyService.queryQuestionClassify();
        request.setAttribute("questionClassifys", questionClassifys);
    }

    public boolean isLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        boolean flag = false;
        if (!"null".equals(session.getAttribute("username"))) {
            flag = true;
        }
        return flag;
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String userName = request.getParameter("username");
        String userPwd = request.getParameter("userpassword");
        User user = new User();
        user.setUserName(userName);
        user.setUserPwd(userPwd);
        boolean flag = userService.validateUser(user);
        if (flag) {
            session.setAttribute("username", userName);
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private void queryOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sta = request.getParameter("sta");
        List<Question> questions = questionService.queryQuestionOk();
        request.setAttribute("questions", questions);
        request.setAttribute("sta", sta);
        request.getRequestDispatcher("/yfaqlist.jsp").forward(request, response);
    }

    private void queryNo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sta = request.getParameter("sta");
        List<Question> questions = questionService.queryQuestionNo();
        request.setAttribute("questions", questions);
        request.setAttribute("sta", sta);
        request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
    }

    private void addQuestion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        String title = request.getParameter("title");
        String uestionClassId = request.getParameter("uestionClassId");
        if (uestionClassId == null) {
            request.getRequestDispatcher("/postquestion.jsp").forward(request, response);
            return;
        }
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

    private void queryQuestionType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<QuestionClassify> questionClasses = questionClassifyService.queryQuestionClassify();
        request.setAttribute("questionClasses", questionClasses);
        request.getRequestDispatcher("/postquestion.jsp").forward(request, response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String username = request.getParameter("username");
        String userpassward = request.getParameter("userpassward");
        String qq = request.getParameter("qq");
        String email = request.getParameter("email");
        String msn = request.getParameter("msn");
        String contactnumber = request.getParameter("contactnumber");
        String mobilephone = request.getParameter("mobilephone");
        String applymajor = request.getParameter("applymajor");
        String classes = request.getParameter("classes");
        String graduation = request.getParameter("graduation");
        String major = request.getParameter("major");
        String identitycard = request.getParameter("identitycard");
        String birth = request.getParameter("birth");
        String englishlevel = request.getParameter("englishlevel");
        String isjob = request.getParameter("isjob");
        String company = request.getParameter("company");
        String status = request.getParameter("status");
        if (userid == null) {
            request.getRequestDispatcher("/userreg.jsp").forward(request, response);
            return;
        }
        UserMember user = new UserMember();
        user.setUserid(userid);
        user.setUsername(username);
        user.setUserpassward(userpassward);
        user.setQq(qq);
        user.setEmail(email);
        user.setMsn(msn);
        user.setContactnumber(contactnumber);
        user.setMobilephone(mobilephone);
        user.setApplymajor(applymajor);
        user.setGraduation(graduation);
        user.setClasses(classes);
        user.setMajor(major);
        user.setIdentitycard(identitycard);
        user.setBirth(birth);
        user.setEnglishlevel(englishlevel);
        user.setIsjob(isjob);
        user.setCompany(company);
        userService.addUser(user);
        request.getRequestDispatcher("/userreg.jsp").forward(request, response);
    }
}
