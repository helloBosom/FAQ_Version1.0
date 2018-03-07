package com.cissst.software.model;

public class FunctionModule implements Comparable {

	private String functionId;
	private String moduleName;
	private String remarks;

	public FunctionModule() {

	}

	public String getFunctionId() {
		return functionId;
	}

	public void setFunctionId(String functionId) {
		this.functionId = functionId;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Override
	public String toString() {
		return "FunctionModuel [functionId=" + functionId + ", moduleName=" + moduleName + "]";
	}

	/**
	 * 按照功能编号进行排序
	 * 
	 * @param o
	 * @return
	 */
	@Override
	public int compareTo(Object o) {
		if (!(o instanceof FunctionModule))
			return 0;
		else {
			FunctionModule functionModule = (FunctionModule) o;
			return this.functionId.compareTo(functionModule.functionId);
		}

	}

}
