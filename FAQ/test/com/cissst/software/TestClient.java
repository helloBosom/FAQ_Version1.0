package com.cissst.software;

import com.cissst.software.dao.QuestionClassifyDao;
import com.cissst.software.dao.RoleDao;
import com.cissst.software.dao.UserDao;
import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.Role;
import com.cissst.software.model.User;
import com.cissst.software.util.DBHelp;
import com.cissst.software.util.TestUtil;
import org.junit.Test;

import java.sql.Connection;
import java.util.List;

public class TestClient {

	QuestionClassifyDao qdao = new QuestionClassifyDao();
	RoleDao rdao = new RoleDao();
	@Test
	public void testMethod1(){
		Connection connection =DBHelp.getConnection();
		System.out.println(connection.toString());
		System.out.println("over");
	}
	
	@Test
	public void testMethod2(){
		//�������
		User user = new User();
		user.setUserName("admin1");
		user.setUserPwd("000");
		
		UserDao userDao = new UserDao();
		boolean flag = userDao.validateUser(user);
		System.out.println(flag);
	}
	
	@Test
	public void testMethod3(){
		String driver =TestUtil.getValueByName("driver");
		System.out.println("driver:" + driver);
		
	}
	
	@Test
	public void testMethod4(){
		String str="abc";
		System.out.println(str.toUpperCase());
	}
	
	@Test
	public void testMethod5(){
		//测试数据
		QuestionClassify q = new QuestionClassify();
		q.setQuestionClassId("002");
		q.setClassifyName("java");
		q.setRemarks("yes");
		
		QuestionClassifyDao qdao = new QuestionClassifyDao();
		boolean flag = qdao.addQuestionClassify(q);
		System.out.println(flag);
		
	}
	
	@Test
	public void testMethod6(){
		//测试数据
		QuestionClassify q = new QuestionClassify();
		q.setQuestionClassId("001");
		q.setClassifyName(".net");
		q.setRemarks("Y");
		
		QuestionClassifyDao qdao = new QuestionClassifyDao();
		boolean flag = qdao.updateQuestionClassify(q);
		System.out.println(flag);
		
	}
	
	@Test
	public void testMethod7(){
		
		
		boolean flag = qdao.deleteQuestionClassifyById("001");
		System.out.println(flag);
		
	}
	
	@Test
	public void testMethod8(){
		List<QuestionClassify> lists =qdao.queryQuestionClassify();
		for(QuestionClassify q :lists){
			System.out.println(q);
		}
	}
	
	@Test
	public void testMethod9(){
		QuestionClassify q= qdao.queryQuestionClassifyById("001");
		System.out.println(q.toString());
	}
	
	@Test
	public void testMethod10(){
		int count = qdao.totalRows();
		System.out.println(count);
	}
	
	@Test
	public void testMethod11(){
		List<QuestionClassify> lists =qdao.queryQuestionClassify(3,3);
		for(QuestionClassify q :lists){
			System.out.println(q);
		}
	}
	
	@Test
	public void testMethod12(){
		List<QuestionClassify> lists =qdao.queryQuestionClassify("","java", 1, 3);
		for(QuestionClassify q :lists){
			System.out.println(q);
		}
	}
	
	@Test
	public void testMethod13(){
		System.out.println( qdao.totalRows("004", "C"));
	}

	@Test
	public void testMethod14(){
		qdao.deleteQuestionClassifyById(new String[]{"006","008"});
	}
	@Test
	public void testMethod15(){
		Role  role= new Role();
		role.setRoleId("200");
		role.setRoleName("hello");
		role.setStatus("0");
		System.out.println(rdao.updateRole(role));
	}
}
