package com.cissst.software;

import java.util.List;

import org.junit.Test;

import com.cissst.software.dao.QuestionClassifyDao;
import com.cissst.software.dao.QuestionDao;
import com.cissst.software.model.Question;

public class TestQuestion {

	private QuestionDao questionDao = new QuestionDao();
	@Test
	public void testMethod1(){
		Question question = new Question();
		question.setTitle("abc");
		question.setContent("gsgdgsdfg!");
		question.setPublisherId("1001");
		question.setUestionClassId("001");
		question.setStatus("0");
		boolean flag = 
				questionDao.addNewQuestion(question);
		System.out.println(flag);
	}
	
/*	@Test
	public void testMethod2(){
		List<Question> questions = questionDao.queryQuestion();
		for(Question question : questions){
			System.out.println(question.toString());
		}
	}
	@Test
	public void testMethod3(){
		List<Question> questions = questionDao.queryQuestion();
		for(Question question : questions){
			System.out.println(question.toString());
		}
	}*/
	
	@Test
	public void testMethod4(){
		List<Question> questions = questionDao.queryQuestion();
		for(Question question : questions){
			System.out.println(question.toString());
		}
	}
	
	@Test
	public void testMethod5(){
		Question question = questionDao.findQuextionById(41);
		System.out.println(question.toString());
	}
	
}
