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
 * 前端控制器
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
		//获取用户名和密码
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPwd");
		
		//封装用户对象
		User user = new User();
		user.setUserName(userName);
		user.setUserPwd(userPassword);
		
		//调用业务逻辑层中验证用户合法性的方法
		IUserService userService = new UserServiceImpl();
		boolean flag = userService.validateUser(user);
		//合法用户:跳转主页面 否则:跳转登录页面
		response.setContentType("text/html;utf-8");
		if(flag){
			//将登录的用户名存储在session对象中
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			//调用业务逻辑层中的查找权限集合方法，获取登录用户的权限集合
			Map<String, List> power = userService.findPowerByName(userName);
			//将权限集合保存在session对象中
			session.setAttribute("power", power);
			
			response.sendRedirect(request.getContextPath() + "/admin/indexsys.jsp");
		}else{
			//response.sendRedirect(request.getContextPath() + "/admin/index.jsp?uname=admin");
			request.setAttribute("error", "用户名或密码不正确!");
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}
	}

}
