package com.cissst.software.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cissst.software.model.User;
import com.cissst.software.service.IUserService;
import com.cissst.software.service.impl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
/**
 * ǰ�˿�����
 * @author lenovo
 * @date 2016.9.12
 */
public class LoginServlet_bak extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}
	
	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ�û���������
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPwd");
		
		//��װ�û�����
		User user = new User();
		user.setUserName(userName);
		user.setUserPwd(userPassword);
		
		//����ҵ���߼�������֤�û��Ϸ��Եķ���
		IUserService userService = new UserServiceImpl();
		boolean flag = userService.validateUser(user);
		//�Ϸ��û�:��ת��ҳ�� ����:��ת��¼ҳ��
		response.setContentType("text/html;utf-8");
		if(flag){
			//����¼���û����洢��session������
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			//����ҵ���߼����еĲ���Ȩ�޼��Ϸ�������ȡ��¼�û���Ȩ�޼���
			Map<String, List> power = userService.findPowerByName(userName);
			//��Ȩ�޼��ϱ�����session������
			session.setAttribute("power", power);
			
			response.sendRedirect(request.getContextPath() + "/admin/indexsys.jsp");
		}else{
			//response.sendRedirect(request.getContextPath() + "/admin/index.jsp?uname=admin");
			request.setAttribute("error", "�û��������벻��ȷ!");
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}
	}

}
