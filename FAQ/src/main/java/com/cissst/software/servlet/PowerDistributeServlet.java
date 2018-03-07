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
 * ǰ�˿�����--Ȩ�޹������
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
			//�����ɫȨ��
			distributePower(request,response);
		}else if("find".equals(methodName)){
			//��ѯ����ģ������û���Ӧ�Ĺ��ܼ���
			findRoleFunction(request,response);
		}else{
			queryRoleManager(request,response);
		}
    }
    
    /**
     * ��ȡ��ɫ���󼯺�
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void queryRoleManager(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	//����ҵ���߼����еĲ�ѯ��������ȡ��ɫ���󼯺�
    	List<RoleManager> roles = powerDistributeService.queryRoleManager();
    	//����ɫ���ϱ�����Request������
    	request.setAttribute("roles", roles);
    	//��ת��powerdistributelist.jspҳ��
    	request.getRequestDispatcher("/admin/powerdistributelist.jsp").forward(request, response);
    }
    /**
     * �����ɫȨ��
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void distributePower(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//��ȡ��ɫ���
    	String roleId = request.getParameter("roleId");
    	//��ȡ��ɫȨ�޵��ַ�������
    	String[] rolePower = request.getParameterValues("functionName");
    	//����ҵ���߼����е���Ӳ������������ύ�����ݿ�
    	powerDistributeService.addPowerDistribute(roleId, rolePower);
    	//����ҵ���߼����е��޸�״̬����
        powerDistributeService.updateRoleStatus(roleId);
    	
    	//���ò�ѯ����
    	queryRoleManager(request,response);
    }
    
	/**
	 * 1�����ݽ�ɫ��Ų�ѯ����ɫ��ӵ�еĹ��� 2.��ѯ��ɫ���ܱ������еĹ��� 3.��ת��powerdistribute.jsp
	 * 4.��powerdistribute.jsp���ý�ɫӵ�еĹ��������й������ȶԣ���ɫ����Ӧ�Ĺ�����ѡ��
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void findRoleFunction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ��ɫ��ţ���ɫ���ƣ���ɫ״̬
		String roleId = request.getParameter("roleid");
		String roleName = request.getParameter("rolename");
		// ����ɫ��š���ɫ���ơ�״̬,������Request������
		request.setAttribute("roleId", roleId);
		request.setAttribute("roleName", roleName);

		// ����ҵ���߼����еĲ�ѯ��ɫȨ�޷���
		List<String> selectedFun = powerDistributeService.findRolePower(roleId);
		request.setAttribute("selectedFun", selectedFun);
		// ����ҵ���߼����еĲ�ѯ����ģ�鷽��
		Map<FunctionModule, List<FunctionModule>> functionMenu = powerDistributeService.findFunctionModule();
		request.setAttribute("functionMenu", functionMenu);
		// ת����powerdistribute.jspҳ��
		request.getRequestDispatcher("/admin/powerdistribute.jsp").forward(request, response);

	}
    
}
