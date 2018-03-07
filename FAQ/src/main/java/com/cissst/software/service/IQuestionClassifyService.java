package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.User;

/**
 * 业务逻辑层
 * @author lenovo
 *
 */
public interface IQuestionClassifyService {
	public boolean addQuestionClassify(QuestionClassify questionClassify);
	
	public boolean updateQuestionClassify(QuestionClassify questionClassify);
	
	/**
	 * 查询所有问题分类信息
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify();
	
	public QuestionClassify queryQuestionClassifyById(String questionClassId);
	/**
	 * 统计表中的记录总数
	 * @return : 表的记录总数
	 */
	public int totalRows();
	
	/**
	 * 按条件查询表中的总记录数
	 * @param questionClassId
	 * @param questionName
	 * @return
	 */
	public int totalRows(String questionClassId,String questionName);
	/**
	 * 分页查询表中的记录信息
	 * @param currentPage:当前页
	 * @param pageSize:每页显示的记录总数
	 * @return :查询结果集
	 */
	public List<QuestionClassify> queryQuestionClassify(int currentPage,int pageSize);
	
	/**
	 * 按条件实现分页查询操作
	 * @param questionClassId:分类编号
	 * @param questionName:分类名称(模糊查询)
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify(String questionClassId,String questionName,
			int currentPage,int pageSize);
	
	public boolean deleteQuestionClassifyById(String questionClassId);
	
	/**
	 * 批量删除操作
	 * @param questionClassId:要删除记录的问题类别编号
	 * @return
	 */
	public boolean deleteQuestionClassifyById(String[] questionClassId);
	
}
