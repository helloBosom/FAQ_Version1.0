package com.cissst.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.User;
import com.cissst.software.util.DBHelp;

/**
 * ���ݿ���ʲ�--�������
 * @author lenovo
 *
 */
public class QuestionClassifyDao {
	/**
	 * �������������
	 * @param questionClassify
	 * @return
	 */
	public boolean addQuestionClassify(QuestionClassify questionClassify) {
		String sql = "insert into tbl_questionclassify(QUESTIONCLASSID,CLASSIFYNAME,REMARKS,STATUS) values ('"+questionClassify.getQuestionClassId()
		                       +"','"+questionClassify.getClassifyName()+"','"+questionClassify.getRemarks()+"','0')";
		
		boolean flag = DBHelp.executeSingleSql(sql);
		return flag;
	}
	
	public boolean updateQuestionClassify(QuestionClassify questionClassify) {
		String sql="update tbl_questionclassify set classifyname='"+questionClassify.getClassifyName()
		                 +"',remarks='"+questionClassify.getRemarks()+"'"
				         + "  where questionclassid='"+questionClassify.getQuestionClassId()+"'";
       boolean flag = DBHelp.executeSingleSql(sql);
		return flag;
	}
	
	/**
	 * �������������ɾ����¼
	 * @param questionClassId
	 * @return
	 */
	public boolean deleteQuestionClassifyById(String questionClassId) {
		//String sql ="delete from tbl_questionclassify where questionclassid='"+questionClassId+"'";
	   //�߼�ɾ��
		String sql="update tbl_questionclassify set status='1' where questionclassid='"+
	                    questionClassId+"'";
		boolean flag = DBHelp.executeSingleSql(sql);
		return flag;
	}
	
	/**
	 * ��ѯ���������е���������
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify() {
		List<QuestionClassify> lists = new ArrayList<QuestionClassify>();
		Connection connection = DBHelp.getConnection();
		String sql="select questionclassid,classifyname,remarks from tbl_questionclassify where status='0'";
		PreparedStatement ps =null;
		ResultSet rs = null;
		try {
			ps= connection.prepareStatement(sql);
			rs = ps.executeQuery();
			QuestionClassify questionClassify=null;
			while(rs.next()){
				questionClassify =new QuestionClassify();
				questionClassify.setQuestionClassId(rs.getString("questionclassid"));
				questionClassify.setClassifyName(rs.getString("classifyname"));
				questionClassify.setRemarks(rs.getString("remarks"));
				
				lists.add(questionClassify);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBHelp.closeAll(rs, ps, connection);
		}
		return lists;
	}
	
	/**
	 * ������������Ų�ѯ��¼
	 * @param questionClassId:���������
	 * @return:����������
	 */
	public QuestionClassify queryQuestionClassifyById(String questionClassId) {
		QuestionClassify questionClassify=new QuestionClassify();
		Connection connection = DBHelp.getConnection();
		String sql="select questionclassid,classifyname,remarks from tbl_questionclassify "
				+ " where questionclassid='" +questionClassId+"' and status='0'" ;
		PreparedStatement ps =null;
		ResultSet rs = null;
		try {
			ps= connection.prepareStatement(sql);
			rs = ps.executeQuery();			
			if(rs.next()){				
				questionClassify.setQuestionClassId(rs.getString("questionclassid"));
				questionClassify.setClassifyName(rs.getString("classifyname"));
				questionClassify.setRemarks(rs.getString("remarks"));						
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBHelp.closeAll(rs, ps, connection);
		}
		return questionClassify;
	}
	
	/**
	 * ͳ�Ʊ������
	 * @return
	 */
	public int totalRows() {
		String sql = "select count(*) from tbl_questionclassify where status='0'";
		int count =Integer.parseInt(DBHelp.executeSqlReturnValue(sql).toString());
		return count;
	}
	
	public int totalRows(String questionClassId, String questionName) {
		String sql ="select count(*) from tbl_questionclassify where 1=1 and status='0'";
		if(questionClassId!=null && questionClassId.length()>0){
			sql = sql + " and questionclassid='"+questionClassId+"'";
		}
		if(questionName!=null && questionName.length()>0){
			sql = sql + " and classifyname like '%"+questionName+"%'";
		}
		return Integer.parseInt(DBHelp.executeSqlReturnValue(sql).toString());
	}

	/**
	 * ��ҳ��ѯ
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify(int currentPage, int pageSize) {
		String sql ="select questionclassid,classifyname,remarks from " +
						" (select rownum r,questionclassid,classifyname,remarks from tbl_questionclassify " + 
						" where status='0' and  rownum<="+(currentPage * pageSize)+") m  " +
						" where m.r>=" + ((currentPage-1)*pageSize+1);
		List<QuestionClassify> lists = new ArrayList<QuestionClassify>();
		Connection connection = DBHelp.getConnection();	
		PreparedStatement ps =null;
		ResultSet rs = null;
		try {
			ps= connection.prepareStatement(sql);
			rs = ps.executeQuery();
			QuestionClassify questionClassify=null;
			while(rs.next()){
				questionClassify =new QuestionClassify();
				questionClassify.setQuestionClassId(rs.getString("questionclassid"));
				questionClassify.setClassifyName(rs.getString("classifyname"));
				questionClassify.setRemarks(rs.getString("remarks"));
				
				lists.add(questionClassify);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBHelp.closeAll(rs, ps, connection);
		}
		return lists;
	}
	
	/**
	 * ������ʵ�ַ�ҳ��ѯ
	 * @param questionClassId
	 * @param questionName
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify(String questionClassId, String questionName, int currentPage,
			int pageSize) {
		String sql ="select questionclassid,classifyname,remarks from " +
				" (select rownum r,questionclassid,classifyname,remarks from tbl_questionclassify " + 
				" where status='0' and  rownum<="+(currentPage * pageSize)+" and 1=1 ";				
		if(questionClassId!=null && questionClassId.length()>0){
			sql = sql + " and questionclassid='"+questionClassId+"'";
		}
		if(questionName!=null && questionName.length()>0){
			sql = sql + " and  classifyname like '%"+questionName+"%'";
		}		
		sql = sql + ") m   where m.r>=" + ((currentPage-1)*pageSize+1);
		
		List<QuestionClassify> lists = new ArrayList<QuestionClassify>();
		Connection connection = DBHelp.getConnection();	
		PreparedStatement ps =null;
		ResultSet rs = null;
		try {
			ps= connection.prepareStatement(sql);
			rs = ps.executeQuery();
			QuestionClassify questionClassify=null;
			while(rs.next()){
				questionClassify =new QuestionClassify();
				questionClassify.setQuestionClassId(rs.getString("questionclassid"));
				questionClassify.setClassifyName(rs.getString("classifyname"));
				questionClassify.setRemarks(rs.getString("remarks"));
				
				lists.add(questionClassify);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBHelp.closeAll(rs, ps, connection);
		}
		return lists;
	}
	
	/**
	 * ����ɾ��
	 * --˼���ϻ��������ɾ������
	 * @param questionClassId:"002","003"
	 * @return
	 */
	public boolean deleteQuestionClassifyById(String[] questionClassId) {
		boolean flag = true;
		String sql ="delete from tbl_questionclassify where questionclassid=?";
		List parameters = new ArrayList();   
		
		if(questionClassId!=null && questionClassId.length>0){
			List parameter = null;
			for(String questionId :questionClassId ){
				parameter = new ArrayList();
				parameter.add(questionId);
				
				parameters.add(parameter);
			}
		}		
		 DBHelp.executeBatchSql(sql,parameters);
		 return flag;
	}
	
}
