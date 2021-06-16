package com.xue.intercept;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author xue
 */
public class LoginCheck implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

            if (request.getSession().getAttribute("login") != null) {
            return true;
        }
        //重定向到登录页!
        response.sendRedirect(request.getContextPath()+"/index.jsp");


        return false;

    }
}
