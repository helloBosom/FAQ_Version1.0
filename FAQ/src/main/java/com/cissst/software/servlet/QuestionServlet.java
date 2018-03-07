package com.cissst.software.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.Question;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.service.IQuestionClassifyService;
import com.cissst.software.service.IQuestionService;
import com.cissst.software.service.impl.QuestionClassifyServiceImpl;
import com.cissst.software.service.impl.QuestionServiceImpl;

/**
 * 前端控制器--问题管理操作
 * @author lenovo
 *
 */
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private IQuestionService questionService = new QuestionServiceImpl();
	//创建业务逻辑层对象
		private IQuestionClassifyService questionClassifyService = 
				new QuestionClassifyServiceImpl(); 
		
	private int pageSize = 2;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			execute(request,response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			execute(request,response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	/**
	 * method:
	 *   add:添加操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 * @throws ParseException 
	 */
   protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
	   String mesthodName = request.getParameter("method");
	   if("add".equals(mesthodName)){
			add(request,response);
		}else if("queryquestiontype".equals(mesthodName)){
			//查询问题类型
			queryQuestionType(request,response);
		}else if("queryall".equals(mesthodName)){
			queryAll(request,response);
		}else if("queryok".equals(mesthodName)){
			queryOk(request,response);
		}else if("queryno".equals(mesthodName)){
			queryNo(request,response);
		}
		else if("delete".equals(mesthodName)){
			delete(request,response);
		}
	}
   /**
    * 查询未解决的问题
    * @param request
    * @param response
    * @throws ServletException
    * @throws IOException
    */
   private void queryNo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String sta = request.getParameter("sta");
	   List<Question> questions = questionService.queryQuestionNo();
	   request.setAttribute("questions", questions);
	   request.setAttribute("sta", sta);
	   request.getRequestDispatcher("/admin/questionlist.jsp").forward(request, response);
		
	}
   /**
    * 查询已解决的问题
    * @param request
    * @param response
    * @throws ServletException
    * @throws IOException
    */
 private void queryOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String sta = request.getParameter("sta");
	 List<Question> questions = questionService.queryQuestionOk();
	   request.setAttribute("questions", questions);
	   request.setAttribute("sta", sta);
	   request.getRequestDispatcher("/admin/questionlist.jsp").forward(request, response);
		
	}
private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
		//String publish_question_id = request.getParameter("publish_question_id");
		String title = request.getParameter("title");
		String uestionClassId = request.getParameter("questionClassifyId");
		int totle_score = Integer.parseInt(request.getParameter("totle_score"));
		int grade_diffculty = Integer.parseInt(request.getParameter("grade_diffculty"));
		String content = request.getParameter("content");
		String publisherId = request.getParameter("publisherId");

		//创建问题对象
		Question question = new Question();
		
		question.setTitle(title);
		question.setUestionClassId(uestionClassId);
		question.setTotle_score(totle_score);
		question.setGrade_diffculty(grade_diffculty);
		question.setContent(content);
		question.setPublisherId(publisherId);
	
		//调用业务逻辑层中的添加方法
		
		questionService.addNewQuestion(question);
		//查询操作
		queryQuestionType(request,response);
		
	}
   /**
    * 查询问题列表
    * @param request
    * @param response
 * @throws IOException 
 * @throws ServletException 
    */
   private void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	   String sta = request.getParameter("sta");
	   List<Question> questions = questionService.queryQuestion();
	   request.setAttribute("questions", questions);
	   request.setAttribute("sta", sta);
	   request.getRequestDispatcher("/admin/questionlist.jsp").forward(request, response);
   }
   /**
	 * 按条件查询全部信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryAllByIdAndTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取查询条件
		String publish_question_id =request.getParameter("publish_question_id");
		String title = request.getParameter("title");
		//计算总页数
		//获取表中的总记录数
		int totalRecords = 0;
		if(publish_question_id==null ){
			//totalRecords = questionService.totalRows();
		}else{
			//totalRecords=questionService.totalRows(publish_question_id, title);
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
		List<Question> lists = null;
		//根据查询条件分析调用业务逻辑层中的方法.		
		//调用业务逻辑层中的查询方法
		if((publish_question_id==null) && (title==null)){
			// lists = questionService.queryQuestion(currentPage,pageSize);
		}else{
			// lists =questionService.queryQuestion(publish_question_id,title,currentPage,pageSize);
		}
		
		//查询后的结果保存在request对象中
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//转发到显示页面中
		request.getRequestDispatcher("admin/questiontypelist.jsp").forward(request, response);
	}
	/**
	 * 获取问题类型
	 * @param request
	 * @param response
	 */
	private void queryQuestionType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1.查询所有的问题分类
		List<QuestionClassify> questionClasses = questionClassifyService.queryQuestionClassify();
		// 2.将查询到的结果集存放在request对象中
		request.setAttribute("questionClasses", questionClasses);
		
		// 3.转发到发布问题的页面中.
		request.getRequestDispatcher("/admin/addquestion.jsp").forward(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String questionId = request.getParameter("questionId");
		String sta = request.getParameter("sta");
		questionService.deleteQuestion(questionId);
		if("no".equals(sta)){
		}else if("ok".equals(sta)){
			queryOk(request,response);
		}else if("all".equals(sta)){
			queryAll(request,response);
		}
		
	}

}
