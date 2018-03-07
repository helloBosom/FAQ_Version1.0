package com.cissst.software.service;

import java.util.List;

import com.cissst.software.model.QuestionClassify;
import com.cissst.software.model.User;

/**
 * ҵ���߼���
 * @author lenovo
 *
 */
public interface IQuestionClassifyService {
	public boolean addQuestionClassify(QuestionClassify questionClassify);
	
	public boolean updateQuestionClassify(QuestionClassify questionClassify);
	
	/**
	 * ��ѯ�������������Ϣ
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify();
	
	public QuestionClassify queryQuestionClassifyById(String questionClassId);
	/**
	 * ͳ�Ʊ��еļ�¼����
	 * @return : ��ļ�¼����
	 */
	public int totalRows();
	
	/**
	 * ��������ѯ���е��ܼ�¼��
	 * @param questionClassId
	 * @param questionName
	 * @return
	 */
	public int totalRows(String questionClassId,String questionName);
	/**
	 * ��ҳ��ѯ���еļ�¼��Ϣ
	 * @param currentPage:��ǰҳ
	 * @param pageSize:ÿҳ��ʾ�ļ�¼����
	 * @return :��ѯ�����
	 */
	public List<QuestionClassify> queryQuestionClassify(int currentPage,int pageSize);
	
	/**
	 * ������ʵ�ַ�ҳ��ѯ����
	 * @param questionClassId:������
	 * @param questionName:��������(ģ����ѯ)
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<QuestionClassify> queryQuestionClassify(String questionClassId,String questionName,
			int currentPage,int pageSize);
	
	public boolean deleteQuestionClassifyById(String questionClassId);
	
	/**
	 * ����ɾ������
	 * @param questionClassId:Ҫɾ����¼�����������
	 * @return
	 */
	public boolean deleteQuestionClassifyById(String[] questionClassId);
	
}
