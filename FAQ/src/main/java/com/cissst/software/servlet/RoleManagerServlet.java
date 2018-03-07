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
 * 前端控制器--角色管理操作
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
			//添加操作
			add(request,response);
		}else if("updateInput".equals(methodName)){
			//修改角色
			updateInput(request,response);
		}else if("update".equals(methodName)){
			//保存修改后角色
			update(request,response);
		}else if("delete".equals(methodName)){
			//删除操作
			delete(request,response);
		}else{
			//查询操作
			queryAll(request,response);
		}
    }
		/**
		 * 添加角色管理
		 * @param request
		 * @param response
		 * @throws ServletException
		 * @throws IOException
		 */
		public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String roleId = request.getParameter("roleId");
			String roleName = request.getParameter("roleName");
			// 创建角色管理对象
			RoleManager roleManager = new RoleManager();
			roleManager.setRoleId(roleId);
			roleManager.setRoleName(roleName);
			// 调用业务逻辑层中的添加方法
			roleManagerService.addRoleManager(roleManager);
			//查询操作
	   	    queryAll(request,response);
		}
	    
		/**
		 * 查询角色管理
		 * @param request
		 * @param response
		 * @throws ServletException
		 * @throws IOException
		 */
	    public void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    
			// 调用业务逻辑层的查询方法
			List<RoleManager> list = roleManagerService.queryRoleManager();
			// 查询后的结果保存在request对象中
			request.setAttribute("list", list);
			// 转发到显示页面中
			request.getRequestDispatcher("/admin/rolemanagerlist.jsp").forward(request, response);
	    }
	    
	    /**
	     * 修改角色管理
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void updateInput(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			// 获取修改的用户编号
			String roleId = request.getParameter("roleid");
			// 调用业务逻辑层获取要修改的用户（对象）
			RoleManager roleManager = roleManagerService.queryRoleManagerById(roleId);
			// 将查询到的对象保存到Request存储对象中
			request.setAttribute("roleManager", roleManager);
			// 转发到修改页面
			request.getRequestDispatcher("/admin/updaterolemanager.jsp").forward(request, response);
	    }
	    
	    /**
	     * 提交修改的角色管理
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    	String roleId = request.getParameter("roleId");
			String roleName = request.getParameter("roleName");
			// 创建问题类别对象
			RoleManager roleManager = new RoleManager();
			roleManager.setRoleId(roleId);
			roleManager.setRoleName(roleName);
			//调用业务逻辑层的修改操作
			roleManagerService.updateRoleManager(roleManager);
			//查询操作
	   	    queryAll(request,response);
	    }
	    
	    /**
	     * 根据角色编号删除角色管理
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			// 获取删除的用户编号
			String roleId = request.getParameter("roleid");
			// 调用业务逻辑层中的删除操作
			roleManagerService.deleteRoleManager(roleId);
			// 查询操作
			queryAll(request, response);
	    }
	}


