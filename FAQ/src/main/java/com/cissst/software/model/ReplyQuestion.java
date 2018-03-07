package com.cissst.software.model;

import java.util.Date;

/**
 * ʵ���--�ظ��������
 * @author lenovo
 *
 */
public class ReplyQuestion {
	private int replyQuestionId;
	private int publishQuestionId;
	private String questionContent;
	private String userId;
	private Date replyTime;
	//0:��ʾ�ظ���Ϣ  1:���ػظ���Ϣ
	private String status;
	private String remarks;
	
	public int getReplyQuestionId() {
		return replyQuestionId;
	}
	public void setReplyQuestionId(int replyQuestionId) {
		this.replyQuestionId = replyQuestionId;
	}
	public int getPublishQuestionId() {
		return publishQuestionId;
	}
	public void setPublishQuestionId(int publishQuestionId) {
		this.publishQuestionId = publishQuestionId;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "ReplyQuestion [replyQuestionId=" + replyQuestionId + ", publishQuestionId=" + publishQuestionId
				+ ", questionContent=" + questionContent + ", userId=" + userId + ", replyTime=" + replyTime
				+ ", status=" + status + ", remarks=" + remarks + "]";
	}
	
	
}
