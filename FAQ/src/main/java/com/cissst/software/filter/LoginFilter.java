package com.cissst.software.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录验证
 * 
 * @author 
 *
 */
public class LoginFilter implements Filter {

	private String filterPattern;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		filterPattern = filterConfig.getInitParameter("filterpattern");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// 验证当前用户是否为合法用户，如果是将控制权往后传
		// 如果不是合法用户，则重定向到登录页面
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		// 客户端请求的url地址
		String requestURI = request.getRequestURI();
		int position = requestURI.lastIndexOf("/");
		String requestPage = requestURI.substring(position + 1);
		if (requestURI.matches(filterPattern)) {
			HttpSession session = request.getSession();
			Object object = session.getAttribute("username");
			if (object == null && !("index.jsp".equals(requestPage)) && !("LoginServlet".equals(requestPage))) {
				// 重定向到登录页面
				response.sendRedirect(request.getContextPath() + "/admin/index.jsp");
				return;
			}
		}
		// 将控制权向后传递
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
	}

}
