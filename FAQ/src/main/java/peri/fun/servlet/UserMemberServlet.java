package peri.fun.servlet;

import peri.fun.model.UserMember;
import peri.fun.service.IUserMemberService;
import peri.fun.service.impl.UserMemberServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UserMemberServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IUserMemberService userService = new UserMemberServiceImpl();

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
        } else if ("lock".equals(mesthodName)) {
            lock(request, response);
        } else if ("deblock".equals(mesthodName)) {
            deblock(request, response);
        } else {
            query(request, response);
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        query(request, response);
    }

    private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserMember> lists = userService.query();
        request.setAttribute("lists", lists);
        request.getRequestDispatcher("/admin/studlist.jsp").forward(request, response);
    }

    private void lock(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userid");
        userService.lock(userId);
        query(request, response);
        //request.getRequestDispatcher("/admin/studlist.jsp").forward(request, response);
    }

    private void deblock(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userid");
        userService.deblock(userId);
        query(request, response);
        //request.getRequestDispatcher("admin/studlist.jsp").forward(request, response);
    }
}




