package com.cruds.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cruds.entity.User;
import com.cruds.exception.NCException;


public class UserDAO {
	
	public boolean login(User l)
	{
		
		String sql="select emailid,password from user where emailid=? and password=?";
		boolean found=false;
		
		try(Connection con=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, l.getEmalid());
			ps.setString(2, l.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs != null && rs.next())
			{
				found =true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return found;
		
	}
	
	public boolean register(User r)
	{
		String sql="insert into user (username,emailid,password) values (?,?,?)";
		int rows=0;
		
		try(Connection con=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,r.getUsername());
			ps.setString(2, r.getEmalid());
			ps.setString(3, r.getPassword());
			rows=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rows>0;
		
	}
	
	
}
