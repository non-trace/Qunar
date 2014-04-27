/**
 * 
 */
package cn.edu.tstc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.tstc.common.constants.IComonConst;

public class AuthenticationFilter implements Filter {
	public void destroy() {
	}
	public void doFilter(ServletRequest req, ServletResponse res,FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		if (request.getRequestURI().startsWith(request.getContextPath()+"/login!login.action")||request.getRequestURI().startsWith(request.getContextPath()+"/css")||request.getRequestURI().startsWith(request.getContextPath()+"/js")||request.getRequestURI().startsWith(request.getContextPath()+"/images")) {
			chain.doFilter(req, res);
			return;
		}
		
		if (!(request.getRequestURI().equals(request.getContextPath()+"/login.jsp"))&&request.getSession().getAttribute(IComonConst.LOGIN_USER)==null) {
			response.sendRedirect("login.jsp");
		}else{
			chain.doFilter(req, res);
		}
	}
	public void init(FilterConfig arg0) throws ServletException {
	}
}
