package com.cruds.entity;

import java.util.ArrayList;
import java.util.List;

public class Product {
	
	
	private String id;
	private String name;
	private String price;
	private String qty;
	private String img;
	private double overall;
	
	public Product() {
		super();
	}

	public Product(String id) {
		super();
		this.id = id;
	}

	public Product(String id, String name, String price, String qty) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.qty = qty;
	}



	public Product(String id, String name, String price, String qty, String img) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.qty = qty;
		this.img = img;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}
	
	public void setOverall(int overall) {
		this.overall = overall;
	}

	
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", qty=" + qty + "]";
	}

	
	
}
