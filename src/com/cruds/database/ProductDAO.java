package com.cruds.database;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cruds.entity.Orderitem;
import com.cruds.entity.Product;
import com.cruds.util.DateUtil;
import com.mysql.jdbc.Statement;

public class ProductDAO {
	
	
	public List<Product> order(List<Product> list,Orderitem o)
	{
		System.out.println(list);
		
		String sql="insert into orders(emailid,orderdate,orderstatus,totalcost) values(?,?,?,?)";
		String sql2="insert into orderitem(orderid,itemname,itemprice,itemquantity) values(?,?,?,?)";
		
		int rows=0,orderid = 0;
		int row2;
		
		try(Connection con=DBConnectionManager.getConnection())
		{
			/*PreparedStatement ps=con.prepareStatement(sql);*/
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1,o.getEmailid());
			ps.setDate(2, DateUtil.getSQLDate(o.getOrderdate()) );
			ps.setString(3, o.getOrderstatus());
			ps.setString(4, o.getTotalcost());
			
			rows=ps.executeUpdate();
			
			try(ResultSet rs=ps.getGeneratedKeys() )
			{
				
				if(rs.next()&& rs!=null)
				{
					orderid=rs.getInt(1);
						
				}
			}
			
			for(Product p:list)
			{
			ps=con.prepareStatement(sql2);
			
			ps.setInt(1, orderid);
			ps.setString(2, p.getName());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getQty());
			row2=ps.executeUpdate();
			}
			
		
		}
		
		catch(SQLException e)
		{
				e.printStackTrace();
		}
		
		return  list;
	}
	
	public Orderitem getOrderid(String emailid)
	{
		String sql="select orderid from orders where emailid=?";
		Orderitem o=null;
		try(Connection con=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, emailid);
			ResultSet rs=ps.executeQuery();
			
			while(rs!=null && rs.next())
			{
			o=new Orderitem(rs.getInt(1));	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return o;
	}
	
	public List<Orderitem> orders(String email)
	{
		Orderitem o=null;
		
		List<Orderitem> list=new ArrayList<Orderitem>();
		String sql="select o.orderid,oi.itemname,oi.itemprice,oi.itemquantity from orders o ,orderlist oi where o.orderid=oi.orderid and o.emailid=?";
		try(Connection con=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				o=new Orderitem(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4));
				
				list.add(o);
				System.out.println("list"+o);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
