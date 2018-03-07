package com.cissst.software.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.RoleManager;
import com.cissst.software.model.UserManager;
import com.cissst.software.service.IRoleManagerService;
import com.cissst.software.service.impl.RoleManagerServiceImpl;

/**
 * ǰ�˿�����--��ɫ�������
 * @author Administrator
 *
 */
public class RoleManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IRoleManagerService roleManagerService = 
    		new RoleManagerServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}
	
    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String methodName = request.getParameter("method");
		if("add".equals(methodName)){
			//��Ӳ���
			add(request,response);
		}else if("updateInput".equals(methodName)){
			//�޸Ľ�ɫ
			updateInput(request,response);
		}else if("update".equals(methodName)){
			//�����޸ĺ��ɫ
			update(request,response);
		}else if("delete".equals(methodName)){
			//ɾ������
			delete(request,response);
		}else{
			//��ѯ����
			queryAll(request,response);
		}
    }
		/**
		 * ��ӽ�ɫ����
		 * @param request
		 * @param response
		 * @throws ServletException
		 * @throws IOException
		 */
		public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String roleId = request.getParameter("roleId");
			String roleName = request.getParameter("roleName");
			// ������ɫ�������
			RoleManager roleManager = new RoleManager();
			roleManager.setRoleId(roleId);
			roleManager.setRoleName(roleName);
			// ����ҵ���߼����е���ӷ���
			roleManagerService.addRoleManager(roleManager);
			//��ѯ����
	   	    queryAll(request,response);
		}
	    
		/**
		 * ��ѯ��ɫ����
		 * @param request
		 * @param response
		 * @throws ServletException
		 * @throws IOException
		 */
	    public void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    
			// ����ҵ���߼���Ĳ�ѯ����
			List<RoleManager> list = roleManagerService.queryRoleManager();
			// ��ѯ��Ľ��������request������
			request.setAttribute("list", list);
			// ת������ʾҳ����
			request.getRequestDispatcher("/admin/rolemanagerlist.jsp").forward(request, response);
	    }
	    
	    /**
	     * �޸Ľ�ɫ����
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			// ��ȡ�޸ĵ��û����
			String roleId = request.getParameter("roleid");
			// ����ҵ���߼����ȡҪ�޸ĵ��û�������
			RoleManager roleManager = roleManagerService.queryRoleManagerById(roleId);
			// ����ѯ���Ķ��󱣴浽Request�洢������
			request.setAttribute("roleManager", roleManager);
			// ת�����޸�ҳ��
			request.getRequestDispatcher("/admin/updaterolemanager.jsp").forward(request, response);
	    }
	    
	    /**
	     * �ύ�޸ĵĽ�ɫ����
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    	String roleId = request.getParameter("roleId");
			String roleName = request.getParameter("roleName");
			// ��������������
			RoleManager roleManager = new RoleManager();
			roleManager.setRoleId(roleId);
			roleManager.setRoleName(roleName);
			//����ҵ���߼�����޸Ĳ���
			roleManagerService.updateRoleManager(roleManager);
			//��ѯ����
	   	    queryAll(request,response);
	    }
	    
	    /**
	     * ���ݽ�ɫ���ɾ����ɫ����
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			// ��ȡɾ�����û����
			String roleId = request.getParameter("roleid");
			// ����ҵ���߼����е�ɾ������
			roleManagerService.deleteRoleManager(roleId);
			// ��ѯ����
			queryAll(request, response);
	    }
	}


