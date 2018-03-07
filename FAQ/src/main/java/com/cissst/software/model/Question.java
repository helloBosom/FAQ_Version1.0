package com.cissst.software.model;

import java.util.Date;

/**
 * 实体层--发布问题实体类
 * @author lenovo
 *
 */
public class Question {
	private int publish_question_id;
	private String title;
	private String uestionClassId;
	private int totle_score;
	private int grade_diffculty;
	private String content;
	private String publisherId;
	private Date publishTime;
	private Date lasterReply_date;
	private String status;
	private String remarks;
	
	public int getPublish_question_id() {
		return publish_question_id;
	}
	public void setPublish_question_id(int publish_question_id) {
		this.publish_question_id = publish_question_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUestionClassId() {
		return uestionClassId;
	}
	public void setUestionClassId(String uestionClassId) {
		this.uestionClassId = uestionClassId;
	}
	public int getTotle_score() {
		return totle_score;
	}
	public void setTotle_score(int totle_score) {
		this.totle_score = totle_score;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPublisherId() {
		return publisherId;
	}
	public void setPublisherId(String publisherId) {
		this.publisherId = publisherId;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public Date getLasterReply_date() {
		return lasterReply_date;
	}
	public void setLasterReply_date(Date lasterReply_date) {
		this.lasterReply_date = lasterReply_date;
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
	public int getGrade_diffculty() {
		return grade_diffculty;
	}
	public void setGrade_diffculty(int grade_diffculty) {
		this.grade_diffculty = grade_diffculty;
	}
	@Override
	public String toString() {
		return "Question [publish_question_id=" + publish_question_id + ", title=" + title + ", uestionClassId="
				+ uestionClassId + ", totle_score=" + totle_score + ", grade_diffculty=" + grade_diffculty
				+ ", content=" + content + ", publisherId=" + publisherId + ", publishTime=" + publishTime
				+ ", lasterReply_date=" + lasterReply_date + ", status=" + status + ", remarks=" + remarks + "]";
	}
	
	
}
