package peri.fun.model;

import java.util.List;

public class UserManager {

    private String managerId;
    private String managerName;
    private String nickName;
    private String password;
    private String contactNumber;
    private String status;
    private String limit;
    private List<String> roleNames;

    public UserManager() {

    }

    public List<String> getRoleNames() {
        return roleNames;
    }

    public void setRoleNames(List<String> roleNames) {
        this.roleNames = roleNames;
    }

    public String getManagerId() {
        return managerId;
    }

    public void setManagerId(String announcementId) {
        this.managerId = announcementId;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String name) {
        this.managerName = name;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLimit() {
        return limit;
    }

    public void setLimit(String limit) {
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "UserManager [managerId=" + managerId + ", managerName=" + managerName + ", nickName=" + nickName
                + ", password=" + password + ", contactNumber=" + contactNumber + "]";
    }
}
