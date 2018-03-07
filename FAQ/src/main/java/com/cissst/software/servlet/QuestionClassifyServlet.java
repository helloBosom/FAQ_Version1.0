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
 * 前端控制器--问题分类操作
 * @author lenovo
 *
 */
public class QuestionClassifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//每页显示的记录总数
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
	 *     add:添加操作
	 *     updateinput:修改输入操作
	 *     update:修改保存操作
	 *     delete:删除操作
	 *     batchdelete:按条件查询
	 *     默认：查询操作
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
			//修改输入操作
			updateInput(request,response);
		}else if("update".equals(mesthodName)){
			//修改保存操作
			update(request,response);
		}else if("batchdelete".equals(mesthodName)){
			//批量删除操作
			batchDeleteByQuestionId(request,response);
		}else{
			//查询全部
			queryAll(request,response);
		}
	}
	
	/**
	 * 批量删除操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void batchDeleteByQuestionId(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//1.获取批量删除的问题类别编号
		String[] questionTypeIds =request.getParameterValues("questiontypeid");
		//2.调用业务逻辑层中的批量删除方法
		questionClassifyService.deleteQuestionClassifyById(questionTypeIds)		;
		//3.调用查询方法
		queryAll(request,response);
	}
	
	/**
	 * 按条件实现查询操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	/*private void queryByCondition(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//获取查询条件		
		//分类编号
		//分类名称
		//调用业务逻辑层中的查询方法
		//跳转到显示页面
	}*/
	
	/**
	 * 修改输入操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void updateInput(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//1.获取修改的问题类别编号
		String questionTypeId =request.getParameter("qid");
		//2.调用业务逻辑层获取要修改的记录内容(对象)
		QuestionClassify questionClassify=
				questionClassifyService.queryQuestionClassifyById(questionTypeId);
		//3.将查询到的对象保存到Request存储对象中
		request.setAttribute("questiontype", questionClassify);
		//4.转发到修改页面
		request.getRequestDispatcher("/admin/updatequestiontype.jsp").forward(request, response);
	}
	
	/**
	 * 实现修改保存操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void update(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		String questionClassId = request.getParameter("questionClassId");
		String questionClassName = request.getParameter("classifyName");
		String remarks = request.getParameter("remarks");
		
		//创建问题类别对象
		QuestionClassify questionClassify = new QuestionClassify();
		questionClassify.setQuestionClassId(questionClassId);
		questionClassify.setClassifyName(questionClassName);
		questionClassify.setRemarks(remarks);
		
		//调用业务逻辑层中的修改操作
		questionClassifyService.updateQuestionClassify(questionClassify);
		flag = true;
		//调用查询方法
		queryAll(request,response);
	}
	
	/**
	 * 删除
	 * @param request
	 * @param response
	 */
	private void delete(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//获取删除的问题类别编号
		String questionTypeId = request.getParameter("questiontypeid");
		//调用业务逻辑层中的删除操作
		questionClassifyService.deleteQuestionClassifyById(questionTypeId);
		//查询操作
		queryAll(request,response);
	}

	/**
	 * 添加操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String questionClassId = request.getParameter("questionClassId");
		String questionClassName = request.getParameter("classifyName");
		String remarks = request.getParameter("remarks");
		
		//创建问题类别对象
		QuestionClassify questionClassify = new QuestionClassify();
		questionClassify.setQuestionClassId(questionClassId);
		questionClassify.setClassifyName(questionClassName);
		questionClassify.setRemarks(remarks);
		

		
		//调用业务逻辑层中的添加方法
		
		questionClassifyService.addQuestionClassify(questionClassify);
		//查询操作
		queryAll(request,response);
		//重定向到addquestiontype.jsp
		//response.sendRedirect(request.getContextPath() + "/admin/addquestiontype.jsp");
	}
	/**
	 * 查询全部信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取查询条件
		String questionTypeId =request.getParameter("questionClassId");
		String questionTypeName =request.getParameter("classifyName");
		
		//计算总页数
		//获取表中的总记录数
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
		
		//当前页面(默认为第一页)
		int currentPage = 1;
		String object =request.getParameter("currentPage");
		if(object != null ){
			currentPage = Integer.parseInt(object);
		}
		List<QuestionClassify> lists = null;
		//根据查询条件分析调用业务逻辑层中的方法.		
		//调用业务逻辑层中的查询方法
		if((questionTypeId ==null) && (questionTypeName==null)){
			 lists =questionClassifyService.queryQuestionClassify(currentPage,pageSize);
		}else{
			 lists =questionClassifyService.queryQuestionClassify(questionTypeId,questionTypeName,currentPage,pageSize);
		}
		
		//查询后的结果保存在request对象中
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//转发到显示页面中
		request.getRequestDispatcher("/admin/questiontypelist.jsp").forward(request, response);
	}
}
