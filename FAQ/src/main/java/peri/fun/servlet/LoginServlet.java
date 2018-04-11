package peri.fun.servlet;

import peri.fun.model.User;
import peri.fun.service.IUserService;
import peri.fun.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /*public void init(ServletConfig config) throws ServletException {
        super.init(config);
        Integer.parseInt(config.getInitParameter("width"));
        Integer.parseInt(config.getInitParameter("height"));
        Integer.parseInt(config.getInitParameter("number"));
        config.getInitParameter("codes");
    }*/
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPwd");
        String checkcode = request.getParameter("checkcode");
        String sessionCodes = (String) request.getSession().getAttribute("codes");
        //System.out.println(checkcode);
        //System.out.println(sessionCodes);
        if ("null".equals(sessionCodes) || !sessionCodes.equalsIgnoreCase(checkcode)) {
            request.setAttribute("error", "��֤�����");
            request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
        } else {
            User user = new User();
            user.setUserName(userName);
            user.setUserPwd(userPassword);
            IUserService userService = new UserServiceImpl();
            boolean flag = userService.validateUser(user);
            response.setContentType("text/html;utf-8");
            if (flag) {
                HttpSession session = request.getSession();
                session.setAttribute("username", userName);
                Map<String, List> power = userService.findPowerByName(userName);
                session.setAttribute("power", power);
                response.sendRedirect(request.getContextPath() + "/admin/indexsys.jsp");
            } else {
                //response.sendRedirect(request.getContextPath() + "/admin/index.jsp?uname=admin");
                request.setAttribute("error", "�û��������벻��ȷ!");
                request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
            }
        }
    }
}
