package peri.fun.servlet;

import peri.fun.model.Role;
import peri.fun.service.IRoleService;
import peri.fun.service.impl.RoleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class RoleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IRoleService roleService = new RoleServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        if ("delete".equals(methodName)) {
            delete(request, response);
        } else if ("update".equals(methodName)) {
            update(request, response);
        } else if ("add".equals(methodName)) {
            addRole(request, response);
        } else if ("updateinput".equals(methodName)) {
            updateInput(request, response);
        } else {
            queryAll(request, response);
        }
    }

    private void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleid");
        Role role = roleService.queryRoleById(roleId);
        request.setAttribute("role", role);
        request.getRequestDispatcher("admin/updaterole.jsp").forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleId");
        String roleName = request.getParameter("roleName");
        String status = request.getParameter("status");
        //System.out.println(roleName);
        Role role = new Role();
        role.setRoleId(roleId);
        role.setRoleName(roleName);
        role.setStatus(status);
        roleService.updateRole(role);
        queryAll(request, response);
    }

    private void queryAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Role> roles = roleService.queryRole();
        request.setAttribute("roles", roles);
        request.getRequestDispatcher("/admin/roles.jsp").forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleid");
        roleService.deleteRole(roleId);
        queryAll(request, response);
    }

    private void addRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleId");
        String roleName = request.getParameter("roleName");
        String status = request.getParameter("status");
        Role role = new Role();
        role.setRoleId(roleId);
        role.setRoleName(roleName);
        role.setStatus(status);
        roleService.addRole(role);
        queryAll(request, response);
    }
}
