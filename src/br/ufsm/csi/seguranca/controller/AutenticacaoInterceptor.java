package br.ufsm.csi.seguranca.controller;

import br.ufsm.csi.seguranca.model.Usuario;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AutenticacaoInterceptor extends HandlerInterceptorAdapter{

	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception{
		
		Usuario u = (Usuario) request.getSession().getAttribute("usuario");
		
		if (u == null && !request.getRequestURI().endsWith("login.html")  && !request.getRequestURI().endsWith("todosPosts.html")  && !request.getRequestURI().endsWith("verPost.html")  && !request.getRequestURI().endsWith("cadastro-comentario.html")){
			// 
			response.sendRedirect("login.html");
			return false;
		}
		return true;
		
	}
	
}