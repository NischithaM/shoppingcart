package com.cruds.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.database.UserDAO;
import com.cruds.entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		
		
		UserDAO dao=new UserDAO();
		User r =new User(username, emailid, password);
		
		if(dao.register(r))
		{
			session.setAttribute("MESSAGE","successful register");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("MESSAGE", "ERROR ");
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}

		doGet(request, response);
	}

}
