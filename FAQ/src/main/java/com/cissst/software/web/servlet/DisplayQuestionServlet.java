package com.cissst.software.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cissst.software.model.Question;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.ReplyQuestion;
import com.cissst.software.service.IAnswerQuestionService;
import com.cissst.software.service.IQuestionClassifyService;
import com.cissst.software.service.IQuestionService;
import com.cissst.software.service.impl.AnswerQuestionServiceImpl;
import com.cissst.software.service.impl.QuestionClassifyServiceImpl;
import com.cissst.software.service.impl.QuestionServiceImpl;

/**
 * 前台页面显示问题
 * @author lenovo
 *
 */
public class DisplayQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int pageSize = 15;
	private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();
	//创建问题类的业务逻辑层对象
	private IQuestionService questionService = new QuestionServiceImpl();
	//创建回复问题的业务逻辑层对象
	private IAnswerQuestionService answerQuestionService = 
			new AnswerQuestionServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}
	
	/**
	 * methodName:
	 *         1.querycontentbyid:根据标题编号查询标题的详细内容
	 *         2.addanswerquestion:添加当前发布问题的回复信息         
	 *         3.默认执行查询未处理的问题信息(标题，发布人，发布时间)
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private  void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String methodName = request.getParameter("method");
		List<QuestionClassify> questionClassifys=questionClassifyService.queryQuestionClassify();
		request.setAttribute("questionClassifys", questionClassifys);
		if("querycontentbyid".equals(methodName)){
			queryContentById(request,response);
		}else if("addanswerquestion".equals(methodName)){
			//添加回复问题
			addAnswerQuestion(request,response);
		}else if("queryQuestionOk".equals(methodName)){
				queryQuestionOk(request,response);
		}else if("queryQuestionNo".equals(methodName)){
			queryQuestionNo(request,response);
		}else{
			queryTitle(request,response);
		}
	}
	
	/**
	 * 查看当前未处理的问题然后进行回复操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void addAnswerQuestion(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		//1.获取客户端提交的回复信息
		String replyQuestionContent =request.getParameter("questionContent");
		int publishQuestionId = Integer.parseInt(request.getParameter("publishQuestionId"));
		//2.获取当前登录的用户(Session) admin
		HttpSession session = request.getSession(); 
		String loginUserName = (String) session.getAttribute("username");	
		System.out.println(publishQuestionId);
		System.out.println(replyQuestionContent);
		System.out.println(loginUserName);
		
		//创建回复问题对象
		ReplyQuestion replyQuestion = new ReplyQuestion();
		//获取发布问题的编号		
		replyQuestion.setPublishQuestionId(publishQuestionId);
		replyQuestion.setQuestionContent(replyQuestionContent);
		replyQuestion.setUserId(loginUserName);		
		//3.调用业务逻辑层中的添加方法实现添加操作.
		answerQuestionService.addAnswerQuestion(replyQuestion);		
		//4.跳转到当前显示页面(showdetail.jsp)
		     //4.1 显示回复的发布问题
		     //4.2 显示所有回复的详细内容	
				Question question =
						questionService.findQuextionById(publishQuestionId);				
				
				List<ReplyQuestion> replyQuestions =
						answerQuestionService.queryReplyQuestion(publishQuestionId);
				request.setAttribute("question", question);		
				request.setAttribute("answerquestion",replyQuestions);
				request.getRequestDispatcher("showdetail.jsp").forward(request, response);
	}
	
	/**
	 * 根据问题编号查询问题详细信息(发布问题内容)
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryContentById(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		//1.获取查询的问题编号
		String questionId =request.getParameter("questionId");
		//2.调用业务逻辑层中查询方法
		Question question =
				questionService.findQuextionById(Integer.parseInt(questionId));
		//3.将查询到的对象保存到request存储对象中
		request.setAttribute("question", question);
		//4.转发到显示页面中
		request.getRequestDispatcher("showdetail.jsp").forward(request, response);
	}
	
	/**
	 * 查询发布问题的简要信息(标题)
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private  void queryTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1.调用业务逻辑层对象获取未处理的问题(List)
		List<Question> questions = questionService.queryQuestion();
		// 2.将查询到的结果集存放到request对象中
		request.setAttribute("questions", questions);
		// 3.转发到显示未处理问题的页面中
		request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
	}
	
	private void queryQuestionOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//计算总页数
		//获取表中的总记录数
		int totalRecords = 0;
		totalRecords = questionService.totalRowsOk();
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
		lists =questionService.queryQuestionOk(currentPage,pageSize);
		
		//查询后的结果保存在request对象中
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//转发到显示页面中
		request.getRequestDispatcher("/yfaqlist.jsp").forward(request, response);
	}
	
private void queryQuestionNo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//计算总页数
		//获取表中的总记录数
		int totalRecords = 0;
		totalRecords = questionService.totalRowsNo();
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
		lists =questionService.queryQuestionNo(currentPage,pageSize);
		
		//查询后的结果保存在request对象中
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//转发到显示页面中
		request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
	}

}
