package com.cruds.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.database.ProductDAO;
import com.cruds.entity.Cart;
import com.cruds.entity.Orderitem;
import com.cruds.entity.Product;

public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static ArrayList<String> cartlist = new ArrayList<>();

	public CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session=request.getSession();
	
		String itemid= request.getParameter("itemid");
		String itemname=request.getParameter("itemname");
		String itemprice= request.getParameter("itemprice");
		String itemqty=request.getParameter("itemqty");
		String itemimage=request.getParameter("itemimage");
		
		session.setAttribute("itemname",itemname);
		session.setAttribute("itemprice",itemprice);
		session.setAttribute("itemqty",itemqty);
		session.setAttribute("itemimage",itemimage);
		session.setAttribute("itemid", itemid);
		
		System.out.println(itemid);
		
		List<Product> cart = (List<Product>) session.getAttribute("cart");
		Product p=new Product(itemid, itemname, itemprice, itemqty, itemimage);
		Cart c=new Cart(p);
		cart=c.addToCart(cart, p);
		
		/*if(cart==null)
		{
			session.setAttribute("MSG", "YOUR CART IS EMPTY");
			cart=new ArrayList<>();
			
		}*/
		/*cart=Cart.addToCart(itemid, itemname, itemprice, itemqty, itemimage);
		System.out.println("cartttttt"+cart);*/
		session.setAttribute("cart", cart);
		
      int sum=0,totalsum=0,overall=0,tax=10,dis=25,discount=(100-dis),tax2=100+tax;
		
		for(Product product1:cart)
		{
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
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}
