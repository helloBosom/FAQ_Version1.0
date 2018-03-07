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
 * ǰ�˿�����--����������
 * @author lenovo
 *
 */
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private IQuestionService questionService = new QuestionServiceImpl();
	//����ҵ���߼������
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
	 *   add:��Ӳ���
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
			//��ѯ��������
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
    * ��ѯδ���������
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
    * ��ѯ�ѽ��������
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

		//�����������
		Question question = new Question();
		
		question.setTitle(title);
		question.setUestionClassId(uestionClassId);
		question.setTotle_score(totle_score);
		question.setGrade_diffculty(grade_diffculty);
		question.setContent(content);
		question.setPublisherId(publisherId);
	
		//����ҵ���߼����е���ӷ���
		
		questionService.addNewQuestion(question);
		//��ѯ����
		queryQuestionType(request,response);
		
	}
   /**
    * ��ѯ�����б�
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
	 * ��������ѯȫ����Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void queryAllByIdAndTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//��ȡ��ѯ����
		String publish_question_id =request.getParameter("publish_question_id");
		String title = request.getParameter("title");
		//������ҳ��
		//��ȡ���е��ܼ�¼��
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
		
		//��ǰҳ��(Ĭ��Ϊ��һҳ)
		int currentPage = 1;
		String object =request.getParameter("currentPage");
		if(object != null ){
			currentPage = Integer.parseInt(object);
		}
		List<Question> lists = null;
		//���ݲ�ѯ������������ҵ���߼����еķ���.		
		//����ҵ���߼����еĲ�ѯ����
		if((publish_question_id==null) && (title==null)){
			// lists = questionService.queryQuestion(currentPage,pageSize);
		}else{
			// lists =questionService.queryQuestion(publish_question_id,title,currentPage,pageSize);
		}
		
		//��ѯ��Ľ��������request������
		request.setAttribute("lists", lists);
				
		request.setAttribute("currentPage",currentPage);
		//ת������ʾҳ����
		request.getRequestDispatcher("admin/questiontypelist.jsp").forward(request, response);
	}
	/**
	 * ��ȡ��������
	 * @param request
	 * @param response
	 */
	private void queryQuestionType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1.��ѯ���е��������
		List<QuestionClassify> questionClasses = questionClassifyService.queryQuestionClassify();
		// 2.����ѯ���Ľ���������request������
		request.setAttribute("questionClasses", questionClasses);
		
		// 3.ת�������������ҳ����.
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
