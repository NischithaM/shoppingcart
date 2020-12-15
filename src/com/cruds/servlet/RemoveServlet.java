package com.cruds.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.cruds.database.ProductDAO;
import com.cruds.entity.Product;

/**
 * Servlet implementation class RemoveServlet
 */
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		String itemid=(String) session.getAttribute("itemid");
		System.out.println(itemid);
		List<Product> list=(List<Product>) session.getAttribute("cart");
		
		list.remove(0);

		if(list.size()==0)
		{
			session.removeAttribute("cart");
		}
		System.out.println(list);
		
		for(Product product1:list)
		{
			 int sum=0,totalsum=0,overall=0,tax=10,dis=25,discount=(100-dis),tax2=100+tax;
				
			
				sum+=Integer.parseInt(product1.getPrice());
				session.setAttribute("total", Integer.toString(sum));
				
				totalsum+=discount*Integer.parseInt(product1.getPrice())/100;
				overall=(totalsum*tax2)/100;
				session.setAttribute("dis", String.valueOf(dis)+"%");
				session.setAttribute("totalsum", Integer.toString(totalsum));
				session.setAttribute("tax", String.valueOf(tax)+"%");
				session.setAttribute("overall", String.valueOf(overall));
			
		}
		
		
		
		RequestDispatcher rd=request.getRequestDispatcher("cart.jsp");
		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
