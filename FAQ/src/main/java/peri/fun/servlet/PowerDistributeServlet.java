package peri.fun.servlet;

import peri.fun.model.FunctionModule;
import peri.fun.model.RoleManager;
import peri.fun.service.IPowerDistributeService;
import peri.fun.service.impl.PowerDistributeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class PowerDistributeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IPowerDistributeService powerDistributeService = new PowerDistributeServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        if ("distribute".equals(methodName)) {
            distributePower(request, response);
        } else if ("find".equals(methodName)) {
            findRoleFunction(request, response);
        } else {
            queryRoleManager(request, response);
        }
    }

    private void queryRoleManager(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<RoleManager> roles = powerDistributeService.queryRoleManager();
        request.setAttribute("roles", roles);
        request.getRequestDispatcher("/admin/powerdistributelist.jsp").forward(request, response);
    }

    private void distributePower(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleId");
        String[] rolePower = request.getParameterValues("functionName");
        powerDistributeService.addPowerDistribute(roleId, rolePower);
        powerDistributeService.updateRoleStatus(roleId);
        queryRoleManager(request, response);
    }

    private void findRoleFunction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roleId = request.getParameter("roleid");
        String roleName = request.getParameter("rolename");
        request.setAttribute("roleId", roleId);
        request.setAttribute("roleName", roleName);
        List<String> selectedFun = powerDistributeService.findRolePower(roleId);
        request.setAttribute("selectedFun", selectedFun);
        Map<FunctionModule, List<FunctionModule>> functionMenu = powerDistributeService.findFunctionModule();
        request.setAttribute("functionMenu", functionMenu);
        request.getRequestDispatcher("/admin/powerdistribute.jsp").forward(request, response);
    }
}