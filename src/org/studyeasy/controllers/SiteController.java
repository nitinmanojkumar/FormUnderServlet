package org.studyeasy.controllers;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SiteController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "login":
			request.getRequestDispatcher("Session_Login.jsp").forward(request, response);
			break;
		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action=request.getParameter("action");
		
		String action1=request.getParameter("action1");
		System.out.println(action1);
		
		switch(action) {
		case "loginSubmit":
			authenticate(request, response);
			break;
		default:
			break;
		}
		
	}

	public void authenticate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username.equals("usnm") && password.equals("pwd")) {
			System.out.println(request.getSession().getId());
			// Inactivate session if any
			request.getSession().invalidate();
			HttpSession newSession = request.getSession(true);
			newSession.setMaxInactiveInterval(300);
			/*
			 * Cookie cUsername=new Cookie("username",username);
			 * response.addCookie(cUsername);
			 */
			newSession.setAttribute("username", username);
			//response.sendRedirect("member.jsp");
			String encode=response.encodeUrl(request.getContextPath());
			response.sendRedirect(encode+"/MemberAreaController?action=memberArea");
			//response.sendRedirect(encode+"/MemberAreaController?action=memberOnly");
		} else {
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		}
	}

}
