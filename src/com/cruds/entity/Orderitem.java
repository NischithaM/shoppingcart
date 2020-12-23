package com.cruds.entity;

import java.util.Date;

public class Orderitem 
{

	private int orderId;
	private int itemId;
	public int getItemId() {
		return itemId;
	}


	private String emailid;
	private String itemname;
	private String itemprice;
	private String itemquantity;
	private  Date orderdate;
	private String orderstatus;
	private String totalcost;
	
	public Orderitem(int orderId) {
		this.orderId = orderId;
	}

	public Orderitem(int orderId, int itemId, String itemname, String itemprice, String itemquantity, Date orderdate,
			String orderstatus) {
		super();
		this.orderId = orderId;
		this.itemId = itemId;
		this.itemname = itemname;
		this.itemprice = itemprice;
		this.itemquantity = itemquantity;
		this.orderdate = orderdate;
		this.orderstatus = orderstatus;
	}

	public Orderitem(int orderId, Date orderdate, String orderstatus) {
		super();
		this.orderId = orderId;
		this.orderdate = orderdate;
		this.orderstatus = orderstatus;
	}

	public Orderitem(int orderId, String itemname, String itemprice, String itemquantity, Date orderdate,
			String orderstatus) {
		super();
		this.orderId = orderId;
		this.itemname = itemname;
		this.itemprice = itemprice;
		this.itemquantity = itemquantity;
		this.orderdate = orderdate;
		this.orderstatus = orderstatus;
	}

	public Orderitem(int orderId, String itemname, String itemprice, String itemquantity) {
		super();
		this.orderId = orderId;
		this.itemname = itemname;
		this.itemprice = itemprice;
		this.itemquantity = itemquantity;
	}

	public Orderitem(String emailid, Date orderdate, String orderstatus, String totalcost) {
		super();
		this.emailid = emailid;
		this.orderdate = orderdate;
		this.orderstatus = orderstatus;
		this.totalcost = totalcost;
	}

	
	public Orderitem(String emailid) {
		super();
		this.emailid = emailid;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public String getTotalcost() {
		return totalcost;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public int getOrderId() {
		return orderId;
	}

	
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getItemprice() {
		return itemprice;
	}

	public void setItemprice(String itemprice) {
		this.itemprice = itemprice;
	}

	public String getItemquantity() {
		return itemquantity;
	}

	public void setItemquantity(String itemquantity) {
		this.itemquantity = itemquantity;
	}


	@Override
	public String toString() {
		return " orderId :" + orderId ;
	}

	
	
	
}
