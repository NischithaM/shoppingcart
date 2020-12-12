package com.cruds.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.database.UserDAO;
import com.cruds.entity.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
		HttpSession session=request.getSession();
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		session.setAttribute("emailid",emailid);
	
		UserDAO dao=new UserDAO();
		User u=new User(emailid, password);
	
		if(dao.login(u))
		{	
				
				session.setAttribute("MESSAGE","LOGIN SUCCESS");
				RequestDispatcher rd=request.getRequestDispatcher("cart2.jsp");
				rd.forward(request, response);

		}else
		{
			request.setAttribute("MESSAGE", "INVALID CREDENTIALS");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}

		
	}

}
