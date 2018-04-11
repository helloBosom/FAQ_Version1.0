package peri.fun.servlet;

import peri.fun.model.RoleManager;
import peri.fun.service.IRoleManagerService;
import peri.fun.service.impl.RoleManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class RoleManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IRoleManagerService roleManagerService = new RoleManagerServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        if ("add".equals(methodName)) {
            add(request, response);
        } else if ("updateInput".equals(methodName)) {
            updateInput(request, response);
        } else if ("update".equals(methodName)) {
            update(request, response);
        } else if ("delete".equals(methodName)) {
            delete(request, response);
        } else {
            queryAll(request, response);
        }
    }

    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleId");
        String roleName = request.getParameter("roleName");
        RoleManager roleManager = new RoleManager();
        roleManager.setRoleId(roleId);
        roleManager.setRoleName(roleName);
        roleManagerService.addRoleManager(roleManager);
        queryAll(request, response);
    }

    public void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<RoleManager> list = roleManagerService.queryRoleManager();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/admin/rolemanagerlist.jsp").forward(request, response);
    }

    public void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleid");
        RoleManager roleManager = roleManagerService.queryRoleManagerById(roleId);
        request.setAttribute("roleManager", roleManager);
        request.getRequestDispatcher("/admin/updaterolemanager.jsp").forward(request, response);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleId");
        String roleName = request.getParameter("roleName");
        RoleManager roleManager = new RoleManager();
        roleManager.setRoleId(roleId);
        roleManager.setRoleName(roleName);
        roleManagerService.updateRoleManager(roleManager);
        queryAll(request, response);
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleid");
        roleManagerService.deleteRoleManager(roleId);
        queryAll(request, response);
    }
}


