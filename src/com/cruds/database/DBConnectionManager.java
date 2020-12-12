package com.cruds.database;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.cruds.exception.NCException;


public class DBConnectionManager 
{
	static
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); // class-keyword Class-package
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}

	}
	public static Connection getConnection()
	{
		Connection con=null;
		try{
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root","dummy");
		}catch(SQLException e)
		{
			e.printStackTrace();
			throw new NCException("database error ,please contact system admin");
		}
	
	return con;
	}
}
