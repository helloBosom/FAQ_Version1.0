package peri.fun.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {

    private String filterPattern;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        filterPattern = filterConfig.getInitParameter("filterpattern");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        String requestURI = request.getRequestURI();
        int position = requestURI.lastIndexOf("/");
        String requestPage = requestURI.substring(position + 1);
        if (requestURI.matches(filterPattern)) {
            HttpSession session = request.getSession();
            Object object = session.getAttribute("username");
            if (object == null && !("index.jsp".equals(requestPage)) && !("LoginServlet".equals(requestPage))) {
                response.sendRedirect(request.getContextPath() + "/admin/index.jsp");
                return;
            }
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
}
