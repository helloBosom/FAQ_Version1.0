package com.cissst.software.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.UserMember;
import com.cissst.software.service.IUserMemberService;
import com.cissst.software.service.impl.UserMemberServiceimpl;

/*
 * 前端控制器
 */
public class UserMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IUserMemberService userService=new UserMemberServiceimpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
		}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}
    private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mesthodName = request.getParameter("method");
		if("add".equals(mesthodName)){
			add(request,response);
		}else if("lock".equals(mesthodName)){
			lock(request,response);
		}else if("deblock".equals(mesthodName)){
			deblock(request,response);
		}else{
			//查询全部
			query(request,response);
		}
    }	
		private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 String  userid=request.getParameter("userid");
			 String  username=request.getParameter("username") ;
			 String  userpassward=request.getParameter("userpassward");
			 String  qq=request.getParameter("qq") ;
			 String  email=request.getParameter("email") ;
			 String  msn =request.getParameter("msn") ;
			 String  contactnumber=request.getParameter("contactnumber");
			 String  mobilephone =request.getParameter("mobilephone");
	          String  applymajor =request.getParameter("applymajor");
			 String   classes =request.getParameter("classes")  ;
			 String   graduation =request.getParameter("graduation") ;
			 String   major=request.getParameter("major")  ;
			 String   identitycard =request.getParameter("identitycard") ;
			 String  birth =request.getParameter("birth");
			 String englishlevel=request.getParameter("englishlevel");
			 String isjob=request.getParameter("isjob")   ;
		     String company=request.getParameter("company");
			 String status=request.getParameter("status");
			//创建问题类别对象
			 UserMember user=new UserMember();
			 user.setUserid(userid);
				user.setUsername(username);
				user.setUserpassward(userpassward);
				user.setQq(qq);
				user.setEmail(email);
				user.setMsn(msn);
				user.setContactnumber(contactnumber);	
				user.setMobilephone(mobilephone);
				user.setApplymajor(applymajor);
				user.setGraduation(graduation);
				user.setClasses(classes);
				user.setMajor(major);
				user.setIdentitycard(identitycard);
				user.setBirth(birth);
				user.setEnglishlevel(englishlevel);
				user.setIsjob(isjob);
				user.setCompany(company);
				
		   //调用业务逻辑层中的添加方法
			userService.addUser(user);
			//查询操作
			query(request,response);
		
		}
		private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			//1.调用业务逻辑层中的查询方法
			List<UserMember> lists =userService.query(); 
			//2.查询后的结果保存在request对象中
			request.setAttribute("lists", lists);
			//3.转发到显示页面中studlist.htm
			request.getRequestDispatcher("/admin/studlist.jsp").forward(request, response);
		}
			
	

        private void lock(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        	//1.获取锁定的问题类别编号
    		String userId =request.getParameter("userid");
    		//2.调用业务逻辑层获取要锁定的记录内容(对象)
    		userService.lock(userId);
    		//3.查询
    		 query(request,response);
    		//4.转发到修改页面
    		//request.getRequestDispatcher("/admin/studlist.jsp").forward(request, response);

       }
       private void deblock(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取解锁的问题类别编号
   		String userId =request.getParameter("userid");
   		//2.调用业务逻辑层获取要锁定的记录内容(对象)
   		userService.deblock(userId);
   		//3.查询
   		 query(request,response);
   		//4.转发到修改页面
   		//request.getRequestDispatcher("admin/studlist.jsp").forward(request, response);


     }

      }




