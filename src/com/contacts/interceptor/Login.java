package com.contacts.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class Login implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if(request.getSession().getAttribute("user")==null) {
			response.sendRedirect("login");
			//below to try to get the perious page address
			HttpSession session=request.getSession(true);
			//get Url
			String url=request.getRequestURI();
			//cut the context path from url
			String path=url.substring(request.getContextPath().length());
			String query = request.getQueryString();
			if(query==null) {
				query="";
			}
			String realpath= path+"?"+query;
			session.setAttribute("realpath", realpath);
			return false;
		}
		return true;
	}
	
}
