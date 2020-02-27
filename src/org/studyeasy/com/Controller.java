package org.studyeasy.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().println(request.getParameter("name")+"<br/>");
		response.getWriter().println(request.getParameter("gender")+"<br/>");
		
		String [] languages=request.getParameterValues("language");
		if(languages!=null) {
			for(String var:languages) {
				response.getWriter().println("<br/>");
				response.getWriter().println(var);
			}
		}else {
			response.getWriter().println("None selected"+"<br/>");
		}
		response.getWriter().println(request.getParameter("country")+"<br/>");
		response.getWriter().println(request.getParameter("birthday")+"<br/>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().println(request.getParameter("name")+"<br/>");
		response.getWriter().println(request.getParameter("gender")+"<br/>");
		
		PrintWriter out=response.getWriter();
		String [] languages=request.getParameterValues("language");
		if(languages!=null) {
			for(String var:languages) {
				//response.getWriter().println("<br/>");
				//response.getWriter().println(var);
				out.print(var);
				out.print("<br/>");
				
			}
		}else {
			response.getWriter().println("None selected"+"<br/>");
		}
		response.getWriter().println(request.getParameter("country")+"<br/>");
		response.getWriter().println(request.getParameter("birthday")+"<br/>");
	}

}
