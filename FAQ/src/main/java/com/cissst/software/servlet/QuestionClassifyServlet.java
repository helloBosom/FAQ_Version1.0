package com.cissst.software.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.QuestionClassify;
import com.cissst.software.service.IQuestionClassifyService;
import com.cissst.software.service.impl.QuestionClassifyServiceImpl;

/**
 * ǰ�˿�����--����������
 * @author lenovo
 *
 */
public class QuestionClassifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//ÿҳ��ʾ�ļ�¼����
	private int pageSize = 3;
	private boolean flag = false;
	private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	/**
	 * method:
	 *     add:��Ӳ���
	 *     updateinput:�޸��������
	 *     update:�޸ı������
	 *     delete:ɾ������
	 *     batchdelete:��������ѯ
	 *     Ĭ�ϣ���ѯ����
	 *     
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mesthodName = request.getParameter("method");
		if("add".equals(mesthodName)){
			add(request,response);
		}else if("delete".equals(mesthodName)){
			delete(request,response);
		}else if("updateinput".equals(mesthodName)){
			//�޸��������
			updateInput(request,response);
		}else if("update".equals(mesthodName)){
			//�޸ı������
			update(request,response);
		}else if("batchdelete".equals(mesthodName)){
			//����ɾ������
			batchDeleteByQuestionId(request,response);
		}else{
			//��ѯȫ��
			queryAll(request,response);
		}
	}
	
	/**
	 * ����ɾ������
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void batchDeleteByQuestionId(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//1.��ȡ����ɾ�������������
		String[] questionTypeIds =request.getParameterValues("questiontypeid");
		//2.����ҵ���߼����е�����ɾ������
		questionClassifyService.deleteQuestionClassifyById(questionTypeIds)		;
		//3.���ò�ѯ����
		queryAll(request,response);
	}
	
	/**
	 * ������ʵ�ֲ�ѯ����
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	/*private void queryByCondition(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//��ȡ��ѯ����		
		//������
		//��������
		//����ҵ���߼����еĲ�ѯ����
		//��ת����ʾҳ��
	}*/
	
	/**
	 * �޸��������
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void updateInput(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//1.��ȡ�޸ĵ����������
		String questionTypeId =request.getParameter("qid");
		//2.����ҵ���߼����ȡҪ�޸ĵļ�¼����(����)
		QuestionClassify questionClassify=
				questionClassifyService.queryQuestionClassifyById(questionTypeId);
		//3.����ѯ���Ķ��󱣴浽Request�洢������
		request.setAttribute("questiontype", questionClassify);
		//4.ת�����޸�ҳ��
		request.getRequestDispatcher("/admin/updatequestiontype.jsp").forward(request, response);
	}
	
	/**
	 * ʵ���޸ı������
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void update(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		String questionClassId = request.getParameter("questionClassId");
		String questionClassName = request.getParameter("classifyName");
		String remarks = request.getParameter("remarks");
		
		//��������������
		QuestionClassify questionClassify = new QuestionClassify();
		questionClassify.setQuestionClassId(questionClassId);
		questionClassify.setClassifyName(questionClassName);
		questionClassify.setRemarks(remarks);
		
		//����ҵ���߼����е��޸Ĳ���
		questionClassifyService.updateQuestionClassify(questionClassify);
		flag = true;
		//���ò�ѯ����
		queryAll(request,response);
	}
	
	/**
	 * ɾ��
	 * @param request
	 * @param response
	 */
	private void delete(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//��ȡɾ�������������
		String questionTypeId = request.getParameter("questiontypeid");
		//����ҵ���߼����е�ɾ������
		questionClassifyService.deleteQuestionClassifyById(questionTypeId);
		//��ѯ����
		queryAll(request,response);
	}

	/**
	 * ��Ӳ���
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String questionClassId = request.getParameter("questionClassId");
		String questionClassName = request.getParameter("classifyName");
		String remarks = request.getParameter("remarks");
		
		//��������������
		QuestionClassify questionClassify = new QuestionClassify();
		questionClassify.setQuestionClassId(questionClassId);
		questionClassify.setClassifyName(questionClassName);
		questionClassify.setRemarks(remarks);
		

		
		//����ҵ���߼����е���ӷ���
		
		questionClassifyService.addQuestionClassify(questionClassify);
		//��ѯ����
		queryAll(request,response);
		//�ض���addquestiontype.jsp
		//response.sendRedirect(request.getContextPath() + "/admin/addquestiontype.jsp");
	}
	/**
	 * ��ѯȫ����Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//��ȡ��ѯ����
		String questionTypeId =request.getParameter("questionClassId");
		String questionTypeName =request.getParameter("classifyName");
		
		//������ҳ��
		//��ȡ���е��ܼ�¼��
		int totalRecords = 0;
		if(questionTypeId==null && questionTypeName==null){
			totalRecords = questionClassifyService.totalRows();
		}else{
			totalRecords=questionClassifyService.totalRows(questionTypeId, questionTypeName);
		}
			
		int totalPages = totalRecords / pageSize;
		if(totalRecords % pageSize !=0){
			totalPages++;
		}
		request.setAttribute("totalPages", totalPages);
		
		//��ǰҳ��(Ĭ��Ϊ��һҳ)
		int currentPage = 1;
		String object =request.getParameter("currentPage");
		if(object != null ){
			currentPage = Integer.parseInt(object);
		}
		List<QuestionClassify> lists = null;
		//���ݲ�ѯ������������ҵ���߼����еķ���.		
		//����ҵ���߼����еĲ�ѯ����
		if((questionTypeId ==null) && (questionTypeName==null)){
			 lists =questionClassifyService.queryQuestionClassify(currentPage,pageSize);
		}else{
			 lists =questionClassifyService.queryQuestionClassify(questionTypeId,questionTypeName,currentPage,pageSize);
		}
		
		//��ѯ��Ľ��������request������
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//ת������ʾҳ����
		request.getRequestDispatcher("/admin/questiontypelist.jsp").forward(request, response);
	}
}
