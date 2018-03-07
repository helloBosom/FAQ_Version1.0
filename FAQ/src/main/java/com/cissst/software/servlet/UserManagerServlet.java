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
 * ǰ�˿�����--�û��������
 *
 * @author Administrator
 */
public class UserManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    //����ҵ���߼������
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
            //�����û�������Ӳ���
            addUserManager(request, response);
        } else if ("updateInput".equals(methodName)) {
            //�޸��û�����
            updateInput(request, response);
        } else if ("update".equals(methodName)) {
            //�����޸Ĳ���
            update(request, response);
        } else if ("delete".equals(methodName)) {
            //�����û����ɾ���û�����
            delete(request, response);
        } else if ("queryRole".equals(methodName)) {
            //��ѯ���еĽ�ɫ����
            queryRole(request, response);
        } else {
            //��ѯ�û�����
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

        // ��������������
        UserManager userManager = new UserManager();
        userManager.setManagerId(managerId);
        userManager.setManagerName(managerName);
        userManager.setNickName(nickName);
        userManager.setPassword(password);
        userManager.setContactNumber(contactNumber);
        // ����ҵ���߼����е���ӷ���
        userManagerService.addUserManager(userManager, roles);
        //��ѯ����
        queryAll(request, response);
    }

    public void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // ����ҵ���߼���Ĳ�ѯ����
        List<UserManager> list = userManagerService.queryUserManager();
        // ��ѯ��Ľ��������request������
        request.setAttribute("list", list);
        // ת������ʾҳ����
        request.getRequestDispatcher("/admin/usermanagerlist.jsp").forward(request, response);
    }

    public void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ��ȡ�޸ĵ��û����
        String managerId = request.getParameter("userid");
        // ����ҵ���߼����ȡҪ�޸ĵ��û�������
        UserManager userManager = userManagerService.queryUserManagerById(managerId);
        // ����ѯ���Ķ��󱣴浽Request�洢������
        request.setAttribute("userManager", userManager);
        //����ҵ���߼���Ĳ�ѯ��ɫ����
        List<RoleManager> roles = userManagerService.queryRoleManager();
        // ����ѯ���Ķ��󼯺ϱ��浽Request�洢������
        request.setAttribute("roles", roles);
        // ת�����޸�ҳ��
        request.getRequestDispatcher("/admin/updateusermanager.jsp").forward(request, response);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String managerId = request.getParameter("managerId");
        String managerName = request.getParameter("managerName");
        String nickName = request.getParameter("nickName");
        String password = request.getParameter("password");
        String contactNumber = request.getParameter("contactNumber");
        String[] roles = request.getParameterValues("rollName");
        // ��������������
        UserManager userManager = new UserManager();
        userManager.setManagerId(managerId);
        userManager.setManagerName(managerName);
        userManager.setNickName(nickName);
        userManager.setPassword(password);
        userManager.setContactNumber(contactNumber);
        //����ҵ���߼�����޸Ĳ���
        userManagerService.updateUserManager(userManager, roles);
        //��ѯ����
        queryAll(request, response);
    }


    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ��ȡɾ�����û����
        String managerId = request.getParameter("userid");
        // ����ҵ���߼����е�ɾ������
        userManagerService.deleteUserManager(managerId);
        // ��ѯ����
        queryAll(request, response);
    }

    /**
     * ��ѯ���н�ɫ����
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void queryRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //����ҵ���߼���Ĳ�ѯ��ɫ����
        List<RoleManager> roles = userManagerService.queryRoleManager();
        // ����ѯ���Ķ��󼯺ϱ��浽Request�洢������
        request.setAttribute("roles", roles);
        //ת����addusermanager.jspҳ��
        request.getRequestDispatcher("/admin/addusermanager.jsp").forward(request, response);
    }
}
