package com.itbank.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      HttpSession session = request.getSession(false);    // 현재 사용중인 세션이 없으면 새로 생성하지 마라
      if(session != null && session.getAttribute("login") != null) {
         return true;
      }
      String requestURI = request.getRequestURI();    // 어느 주소를 요청했는가?
      requestURI = requestURI.substring(request.getContextPath().length());
      session.setAttribute("requestURI", requestURI);
      response.sendRedirect(request.getContextPath() + "/member/login?uri=" + requestURI);   
      
      return false;   // : preHandle에서 처리 중 다른 방식으로 처리할거라서 컨트롤러에게 넘기지 않는다 (중단)
   }

   
}