package com.yedam.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.control.LoginControl;
import com.yedam.control.LoginFormControl;



//@WebServlet("*.do")
public class FrontController extends HttpServlet{
	
	Map<String ,Control> map;
	
	public FrontController() {
		System.out.println("객체생성");
		map = new HashMap<>();
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("init호출");
		
		map.put("/loginFomr.do", new LoginFormControl());
		map.put("/login.do", new LoginControl());
		
		}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service호출");
		// 요청페이지?
		// url 전체 = http://localhost/FreeBoard/add.do
		String uri = req.getRequestURI();	// uri = /FreeBoard/add.do
		String context = req.getContextPath();	// context = /FreeBoard
		String page = uri.substring(context.length());	// page = /add.do
		
		Control control = map.get(page);
		control.exec(req, resp);
		
	}
	
}
