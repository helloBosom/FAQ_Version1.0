package com.cissst.software.model;

public class QuestionClassify {
	private String questionClassId;
	private String classifyName;
	private String remarks;
	
	public String getQuestionClassId() {
		return questionClassId;
	}
	public void setQuestionClassId(String questionClassId) {
		this.questionClassId = questionClassId;
	}
	public String getClassifyName() {
		return classifyName;
	}
	public void setClassifyName(String classifyName) {
		this.classifyName = classifyName;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "QuestionClassify [questionClassId=" + questionClassId + ", classifyName=" + classifyName + ", remarks="
				+ remarks + "]";
	}
	
	
}
