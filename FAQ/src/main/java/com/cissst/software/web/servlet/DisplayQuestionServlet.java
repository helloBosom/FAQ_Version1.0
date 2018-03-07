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
 * ǰ̨ҳ����ʾ����
 * @author lenovo
 *
 */
public class DisplayQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int pageSize = 15;
	private IQuestionClassifyService questionClassifyService = new QuestionClassifyServiceImpl();
	//�����������ҵ���߼������
	private IQuestionService questionService = new QuestionServiceImpl();
	//�����ظ������ҵ���߼������
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
	 *         1.querycontentbyid:���ݱ����Ų�ѯ�������ϸ����
	 *         2.addanswerquestion:��ӵ�ǰ��������Ļظ���Ϣ         
	 *         3.Ĭ��ִ�в�ѯδ�����������Ϣ(���⣬�����ˣ�����ʱ��)
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
			//��ӻظ�����
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
	 * �鿴��ǰδ���������Ȼ����лظ�����
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void addAnswerQuestion(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		//1.��ȡ�ͻ����ύ�Ļظ���Ϣ
		String replyQuestionContent =request.getParameter("questionContent");
		int publishQuestionId = Integer.parseInt(request.getParameter("publishQuestionId"));
		//2.��ȡ��ǰ��¼���û�(Session) admin
		HttpSession session = request.getSession(); 
		String loginUserName = (String) session.getAttribute("username");	
		System.out.println(publishQuestionId);
		System.out.println(replyQuestionContent);
		System.out.println(loginUserName);
		
		//�����ظ��������
		ReplyQuestion replyQuestion = new ReplyQuestion();
		//��ȡ��������ı��		
		replyQuestion.setPublishQuestionId(publishQuestionId);
		replyQuestion.setQuestionContent(replyQuestionContent);
		replyQuestion.setUserId(loginUserName);		
		//3.����ҵ���߼����е���ӷ���ʵ����Ӳ���.
		answerQuestionService.addAnswerQuestion(replyQuestion);		
		//4.��ת����ǰ��ʾҳ��(showdetail.jsp)
		     //4.1 ��ʾ�ظ��ķ�������
		     //4.2 ��ʾ���лظ�����ϸ����	
				Question question =
						questionService.findQuextionById(publishQuestionId);				
				
				List<ReplyQuestion> replyQuestions =
						answerQuestionService.queryReplyQuestion(publishQuestionId);
				request.setAttribute("question", question);		
				request.setAttribute("answerquestion",replyQuestions);
				request.getRequestDispatcher("showdetail.jsp").forward(request, response);
	}
	
	/**
	 * ���������Ų�ѯ������ϸ��Ϣ(������������)
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryContentById(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		//1.��ȡ��ѯ��������
		String questionId =request.getParameter("questionId");
		//2.����ҵ���߼����в�ѯ����
		Question question =
				questionService.findQuextionById(Integer.parseInt(questionId));
		//3.����ѯ���Ķ��󱣴浽request�洢������
		request.setAttribute("question", question);
		//4.ת������ʾҳ����
		request.getRequestDispatcher("showdetail.jsp").forward(request, response);
	}
	
	/**
	 * ��ѯ��������ļ�Ҫ��Ϣ(����)
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private  void queryTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1.����ҵ���߼�������ȡδ���������(List)
		List<Question> questions = questionService.queryQuestion();
		// 2.����ѯ���Ľ������ŵ�request������
		request.setAttribute("questions", questions);
		// 3.ת������ʾδ���������ҳ����
		request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
	}
	
	private void queryQuestionOk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//������ҳ��
		//��ȡ���е��ܼ�¼��
		int totalRecords = 0;
		totalRecords = questionService.totalRowsOk();
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
		List<Question> lists = null;
		//���ݲ�ѯ������������ҵ���߼����еķ���.		
		//����ҵ���߼����еĲ�ѯ����
		lists =questionService.queryQuestionOk(currentPage,pageSize);
		
		//��ѯ��Ľ��������request������
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//ת������ʾҳ����
		request.getRequestDispatcher("/yfaqlist.jsp").forward(request, response);
	}
	
private void queryQuestionNo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//������ҳ��
		//��ȡ���е��ܼ�¼��
		int totalRecords = 0;
		totalRecords = questionService.totalRowsNo();
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
		List<Question> lists = null;
		//���ݲ�ѯ������������ҵ���߼����еķ���.		
		//����ҵ���߼����еĲ�ѯ����
		lists =questionService.queryQuestionNo(currentPage,pageSize);
		
		//��ѯ��Ľ��������request������
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//ת������ʾҳ����
		request.getRequestDispatcher("/wfaqlist.jsp").forward(request, response);
	}

}
