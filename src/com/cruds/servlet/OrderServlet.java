package com.cruds.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.database.UserDAO;
import com.cruds.database.ProductDAO;
import com.cruds.entity.Orderitem;
import com.cruds.entity.Product;
import com.cruds.util.DateUtil;

/**
 * Servlet implementation class Order
 */
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session=request.getSession();
		String emailid=(String) session.getAttribute("emailid");
		String id=request.getParameter("id");
		String itemname=(String) session.getAttribute("itemname");
		String itemprice=(String) session.getAttribute("itemprice");
		String itemqty=(String) session.getAttribute("itemqty");
		String itemimg=(String) session.getAttribute("itemimg");
		String overall=(String) session.getAttribute("overall");
		String status="shipped";
	
		ProductDAO dao=new ProductDAO();
		List<Product> cart = (List<Product>) session.getAttribute("cart");
		
		Orderitem o=new Orderitem(emailid, DateUtil.getCurrentDate(), status, overall);
		session.setAttribute("cart", cart);
		
		if(dao.order(cart,o) != null)
		{
			Orderitem oid=dao.getOrderid(emailid);
			System.out.println(oid);
			session.setAttribute("MESSAGE","your order is placed!!!"+oid);
			RequestDispatcher rs=request.getRequestDispatcher("ordersuccess.jsp");
			rs.forward(request, response);
			
		}
	
	}
}
