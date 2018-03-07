package com.cissst.software.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.FunctionModule;
import com.cissst.software.model.RoleManager;
import com.cissst.software.service.IPowerDistributeService;
import com.cissst.software.service.impl.PowerDistributeServiceImpl;

/**
 * 前端控制器--权限管理操作
 * @author Administrator
 *
 */
public class PowerDistributeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IPowerDistributeService powerDistributeService =
    		new PowerDistributeServiceImpl();
    		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}
	
    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String methodName = request.getParameter("method");
		if("distribute".equals(methodName)){
			//分配角色权限
			distributePower(request,response);
		}else if("find".equals(methodName)){
			//查询功能模块表中用户对应的功能集合
			findRoleFunction(request,response);
		}else{
			queryRoleManager(request,response);
		}
    }
    
    /**
     * 获取角色对象集合
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void queryRoleManager(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	//调用业务逻辑层中的查询方法，获取角色对象集合
    	List<RoleManager> roles = powerDistributeService.queryRoleManager();
    	//将角色集合保存在Request对象中
    	request.setAttribute("roles", roles);
    	//跳转到powerdistributelist.jsp页面
    	request.getRequestDispatcher("/admin/powerdistributelist.jsp").forward(request, response);
    }
    /**
     * 分配角色权限
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void distributePower(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//获取角色编号
    	String roleId = request.getParameter("roleId");
    	//获取角色权限的字符串数组
    	String[] rolePower = request.getParameterValues("functionName");
    	//调用业务逻辑层中的添加操作，将数据提交到数据库
    	powerDistributeService.addPowerDistribute(roleId, rolePower);
    	//调用业务逻辑层中的修改状态方法
        powerDistributeService.updateRoleStatus(roleId);
    	
    	//调用查询方法
    	queryRoleManager(request,response);
    }
    
	/**
	 * 1。根据角色编号查询到角色所拥有的功能 2.查询角色功能表中所有的功能 3.跳转到powerdistribute.jsp
	 * 4.在powerdistribute.jsp中用角色拥有的功能与所有功能作比对，角色有相应的功能则勾选。
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void findRoleFunction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取角色编号，角色名称，角色状态
		String roleId = request.getParameter("roleid");
		String roleName = request.getParameter("rolename");
		// 将角色编号、角色名称、状态,保存在Request对象中
		request.setAttribute("roleId", roleId);
		request.setAttribute("roleName", roleName);

		// 调用业务逻辑层中的查询角色权限方法
		List<String> selectedFun = powerDistributeService.findRolePower(roleId);
		request.setAttribute("selectedFun", selectedFun);
		// 调用业务逻辑层中的查询功能模块方法
		Map<FunctionModule, List<FunctionModule>> functionMenu = powerDistributeService.findFunctionModule();
		request.setAttribute("functionMenu", functionMenu);
		// 转发到powerdistribute.jsp页面
		request.getRequestDispatcher("/admin/powerdistribute.jsp").forward(request, response);

	}
    
}
