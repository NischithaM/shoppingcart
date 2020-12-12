package com.cruds.entity;

public class User {
	
	private String username;
	private String emalid;
	private String password;
	
	public User(String username, String emalid, String password) {
		super();
		this.username = username;
		this.emalid = emalid;
		this.password = password;
	}

	public User(String emailid) {
		super();
		this.emalid=emailid;
	}

	public User(String emalid, String password) {
		super();
		this.emalid = emalid;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmalid() {
		return emalid;
	}

	public void setEmalid(String emalid) {
		this.emalid = emalid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Register [username=" + username + ", emalid=" + emalid + ", password=" + password + "]";
	}
	
	

}
