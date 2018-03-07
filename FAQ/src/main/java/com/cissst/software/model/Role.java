package com.cissst.software.model;
/**
 * ½ÇÉ«Àà
 * @author Administrator
 *
 */
public class Role {
	private String roleId;
	private String roleName;
	private String status;
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", status=" + status + "]";
	}
	
	

}
