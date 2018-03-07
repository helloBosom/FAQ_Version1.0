package com.cissst.software.servlet;

import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;
import com.cissst.software.service.IUserManagerService;
import com.cissst.software.service.impl.UserManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 前端控制器--用户管理操作
 *
 * @author Administrator
 */
public class UserManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    //创建业务逻辑层对象
    private IUserManagerService userManagerService =
            new UserManagerServiceImpl();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        execute(request, response);
    }

    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        if ("add".equals(methodName)) {
            //调用用户管理添加操作
            addUserManager(request, response);
        } else if ("updateInput".equals(methodName)) {
            //修改用户管理
            updateInput(request, response);
        } else if ("update".equals(methodName)) {
            //保存修改操作
            update(request, response);
        } else if ("delete".equals(methodName)) {
            //根据用户编号删除用户管理
            delete(request, response);
        } else if ("queryRole".equals(methodName)) {
            //查询所有的角色对象
            queryRole(request, response);
        } else {
            //查询用户管理
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

        // 创建问题类别对象
        UserManager userManager = new UserManager();
        userManager.setManagerId(managerId);
        userManager.setManagerName(managerName);
        userManager.setNickName(nickName);
        userManager.setPassword(password);
        userManager.setContactNumber(contactNumber);
        // 调用业务逻辑层中的添加方法
        userManagerService.addUserManager(userManager, roles);
        //查询操作
        queryAll(request, response);
    }

    public void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 调用业务逻辑层的查询方法
        List<UserManager> list = userManagerService.queryUserManager();
        // 查询后的结果保存在request对象中
        request.setAttribute("list", list);
        // 转发到显示页面中
        request.getRequestDispatcher("/admin/usermanagerlist.jsp").forward(request, response);
    }

    public void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取修改的用户编号
        String managerId = request.getParameter("userid");
        // 调用业务逻辑层获取要修改的用户（对象）
        UserManager userManager = userManagerService.queryUserManagerById(managerId);
        // 将查询到的对象保存到Request存储对象中
        request.setAttribute("userManager", userManager);
        //调用业务逻辑层的查询角色方法
        List<RoleManager> roles = userManagerService.queryRoleManager();
        // 将查询到的对象集合保存到Request存储对象中
        request.setAttribute("roles", roles);
        // 转发到修改页面
        request.getRequestDispatcher("/admin/updateusermanager.jsp").forward(request, response);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String managerId = request.getParameter("managerId");
        String managerName = request.getParameter("managerName");
        String nickName = request.getParameter("nickName");
        String password = request.getParameter("password");
        String contactNumber = request.getParameter("contactNumber");
        String[] roles = request.getParameterValues("rollName");
        // 创建问题类别对象
        UserManager userManager = new UserManager();
        userManager.setManagerId(managerId);
        userManager.setManagerName(managerName);
        userManager.setNickName(nickName);
        userManager.setPassword(password);
        userManager.setContactNumber(contactNumber);
        //调用业务逻辑层的修改操作
        userManagerService.updateUserManager(userManager, roles);
        //查询操作
        queryAll(request, response);
    }


    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取删除的用户编号
        String managerId = request.getParameter("userid");
        // 调用业务逻辑层中的删除操作
        userManagerService.deleteUserManager(managerId);
        // 查询操作
        queryAll(request, response);
    }

    /**
     * 查询所有角色对象
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void queryRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用业务逻辑层的查询角色方法
        List<RoleManager> roles = userManagerService.queryRoleManager();
        // 将查询到的对象集合保存到Request存储对象中
        request.setAttribute("roles", roles);
        //转发到addusermanager.jsp页面
        request.getRequestDispatcher("/admin/addusermanager.jsp").forward(request, response);
    }
}
