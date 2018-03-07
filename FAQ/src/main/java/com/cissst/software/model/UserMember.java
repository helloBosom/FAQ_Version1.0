package com.cissst.software.model;

import java.util.Date;

public class UserMember {


		private String  userid;
		private String  username;
		private String  userpassward;
		private String  qq;
		private String  email ;
		private String  msn ;
		private String  contactnumber ;
		private String  mobilephone;
		private String   applymajor ;
		private String  classes;
		private String  graduation ;
		private String   major ;
		private String  identitycard;
		private String  birth;
		 private  String   englishlevel;
		 private String    isjob  ;
		 private String company ;
		 private String status;
		public String getUserid() {
			return userid;
		}
		public void setUserid(String userid) {
			this.userid = userid;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getUserpassward() {
			return userpassward;
		}
		public void setUserpassward(String userpassward) {
			this.userpassward = userpassward;
		}
		public String getQq() {
			return qq;
		}
		public void setQq(String qq) {
			this.qq = qq;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMsn() {
			return msn;
		}
		public void setMsn(String msn) {
			this.msn = msn;
		}
		public String getContactnumber() {
			return contactnumber;
		}
		public void setContactnumber(String contactnumber) {
			this.contactnumber = contactnumber;
		}
		public String getMobilephone() {
			return mobilephone;
		}
		public void setMobilephone(String mobilephone) {
			this.mobilephone = mobilephone;
		}
		public String getApplymajor() {
			return applymajor;
		}
		public void setApplymajor(String applymajor) {
			this.applymajor = applymajor;
		}
		public String getClasses() {
			return classes;
		}
		public void setClasses(String classes) {
			this.classes = classes;
		}
		public String getGraduation() {
			return graduation;
		}
		public void setGraduation(String graduation) {
			this.graduation = graduation;
		}
		public String getMajor() {
			return major;
		}
		public void setMajor(String major) {
			this.major = major;
		}
		public String getIdentitycard() {
			return identitycard;
		}
		public void setIdentitycard(String identitycard) {
			this.identitycard = identitycard;
		}
		public String getBirth() {
			return birth;
		}
		public void setBirth(String birth) {
			this.birth = birth;
		}
	
		public String getEnglishlevel() {
			return englishlevel;
		}
		public void setEnglishlevel(String englishlevel) {
			this.englishlevel = englishlevel;
		}
		
		public String getIsjob() {
			return isjob;
		}
		public void setIsjob(String isjob) {
			this.isjob = isjob;
		}
		public String getCompany() {
			return company;
		}
		public void setCompany(String company) {
			this.company = company;
		}
		
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		@Override
		public String toString() {
			return "User [userid=" + userid + ", username=" + username + ", userpassward=" + userpassward + ", qq=" + qq
					+ ", email=" + email + ", msn=" + msn + ", contactnumber=" + contactnumber + ", mobilephone="
					+ mobilephone + ", applymajor=" + applymajor + ", classes=" + classes + ", graduation=" + graduation
					+ ", major=" + major + ", identitycard=" + identitycard + ", birth=" + birth + ", englishlevel="
					+ englishlevel + ", isjob=" + isjob + ", company=" + company + ", status=" + status + "]";
		}
		
		
	}