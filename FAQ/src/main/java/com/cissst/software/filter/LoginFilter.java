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
 * ��¼��֤
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
		// ��֤��ǰ�û��Ƿ�Ϊ�Ϸ��û�������ǽ�����Ȩ����
		// ������ǺϷ��û������ض��򵽵�¼ҳ��
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		// �ͻ��������url��ַ
		String requestURI = request.getRequestURI();
		int position = requestURI.lastIndexOf("/");
		String requestPage = requestURI.substring(position + 1);
		if (requestURI.matches(filterPattern)) {
			HttpSession session = request.getSession();
			Object object = session.getAttribute("username");
			if (object == null && !("index.jsp".equals(requestPage)) && !("LoginServlet".equals(requestPage))) {
				// �ض��򵽵�¼ҳ��
				response.sendRedirect(request.getContextPath() + "/admin/index.jsp");
				return;
			}
		}
		// ������Ȩ��󴫵�
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
	}

}
