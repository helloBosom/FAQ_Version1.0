package peri.fun.servlet;

import peri.fun.model.RoleManager;
import peri.fun.model.UserManager;
import peri.fun.service.IUserManagerService;
import peri.fun.service.impl.UserManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UserManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IUserManagerService userManagerService = new UserManagerServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        if ("add".equals(methodName)) {
            addUserManager(request, response);
        } else if ("updateInput".equals(methodName)) {
            updateInput(request, response);
        } else if ("update".equals(methodName)) {
            update(request, response);
        } else if ("delete".equals(methodName)) {
            delete(request, response);
        } else if ("queryRole".equals(methodName)) {
            queryRole(request, response);
        } else {
            queryAll(request, response);
        }
    }

    public void addUserManager(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String managerId = request.getParameter("managerId");
        String managerName = request.getParameter("managerName");
        String nickName = request.getParameter("nickName");
        String password = request.getParameter("password");
        String contactNumber = request.getParameter("contactNumber");
        String[] roles = request.getParameterValues("rollName");
        UserManager userManager = new UserManager();
        userManager.setManagerId(managerId);
        userManager.setManagerName(managerName);
        userManager.setNickName(nickName);
        userManager.setPassword(password);
        userManager.setContactNumber(contactNumber);
        userManagerService.addUserManager(userManager, roles);
        queryAll(request, response);
    }

    public void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserManager> list = userManagerService.queryUserManager();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/admin/usermanagerlist.jsp").forward(request, response);
    }

    public void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String managerId = request.getParameter("userid");
        UserManager userManager = userManagerService.queryUserManagerById(managerId);
        request.setAttribute("userManager", userManager);
        List<RoleManager> roles = userManagerService.queryRoleManager();
        request.setAttribute("roles", roles);
        request.getRequestDispatcher("/admin/updateusermanager.jsp").forward(request, response);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String managerId = request.getParameter("managerId");
        String managerName = request.getParameter("managerName");
        String nickName = request.getParameter("nickName");
        String password = request.getParameter("password");
        String contactNumber = request.getParameter("contactNumber");
        String[] roles = request.getParameterValues("rollName");
        UserManager userManager = new UserManager();
        userManager.setManagerId(managerId);
        userManager.setManagerName(managerName);
        userManager.setNickName(nickName);
        userManager.setPassword(password);
        userManager.setContactNumber(contactNumber);
        userManagerService.updateUserManager(userManager, roles);
        queryAll(request, response);
    }


    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String managerId = request.getParameter("userid");
        userManagerService.deleteUserManager(managerId);
        queryAll(request, response);
    }

    public void queryRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<RoleManager> roles = userManagerService.queryRoleManager();
        request.setAttribute("roles", roles);
        request.getRequestDispatcher("/admin/addusermanager.jsp").forward(request, response);
    }
}
