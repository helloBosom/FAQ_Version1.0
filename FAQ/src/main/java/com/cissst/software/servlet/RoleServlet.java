package com.cissst.software.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.Role;
import com.cissst.software.service.IRoleService;
import com.cissst.software.service.impl.RoleServiceImpl;

/**
 * ʵ�ֽ�ɫ����
 * 
 */
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
	  String methodName =  request.getParameter("method");
	 if("delete".equals(methodName)){
		 delete(request, response);		 
	 }else if("update".equals(methodName)){
		 update(request,response);
	 }else if("add".equals(methodName)){
		 addRole(request, response);
	 }else if("updateinput".equals(methodName)){
			updateInput(request,response);
	 }else{
		 queryAll(request, response);
		 
	 }
	
	}
	private void updateInput(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {			
		String roleId =request.getParameter("roleid");		
		Role role = roleService.queryRoleById(roleId);			
		request.setAttribute("role", role);
		request.getRequestDispatcher("admin/updaterole.jsp").forward(request, response);
	}

	/**
	 * ���½�ɫ
	 */
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

	/**
	 * ��ѯ���н�ɫ
	 * 
	 */

	private void queryAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Role> roles = roleService.queryRole();
		request.setAttribute("roles", roles);
		request.getRequestDispatcher("/admin/roles.jsp").forward(request, response);

	}

	/**
	 * ɾ����ɫ����
	 * 
	 */
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ��ȡɾ�������������
		String roleId = request.getParameter("roleid");
		// ����ҵ���߼����е�ɾ������
		roleService.deleteRole(roleId);
		// ��ѯ����
		queryAll(request, response);
	}

	/**
	 * ��ӽ�ɫ
	 */
	private void addRole(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ��ɫ����
		String roleId = request.getParameter("roleId");
		String roleName = request.getParameter("roleName");
		String status = request.getParameter("status");
		// ������ɫ����
		Role role = new Role();
		role.setRoleId(roleId);
		role.setRoleName(roleName);
		role.setStatus(status);
		// ����ҵ���߼������ӷ���
		roleService.addRole(role);
		// ��ѯ����
		queryAll(request, response);
	}

}
