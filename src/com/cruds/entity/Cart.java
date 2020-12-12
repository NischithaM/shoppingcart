package com.cruds.entity;

import java.util.ArrayList;

import java.util.List;


public class Cart {


	private static int sum=0;
	
	private static List<Product> list=new ArrayList<Product>();
	private static ArrayList<Product> items;

	public static List<Product> addToCart(String itemid ,String itemname,String itemprice,String itemqty,String image)
	{

		int qty=0,total=0;
		Product product=new Product();
		try
		{
			sum=Integer.valueOf(itemprice);
			qty=Integer.valueOf(itemqty);
			if(qty>0)
			{
				total=sum*qty;
				product.setId(itemid);
				product.setName(itemname);
				product.setPrice(itemprice);
				product.setQty(itemqty);
				product.setImg(image);

				list.add(product);

			}
		}
		catch(NumberFormatException nfe)
		{
			nfe.printStackTrace();
		}
		return list;
	}

	
}
