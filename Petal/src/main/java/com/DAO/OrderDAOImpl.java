package com.DAO;

import java.sql.Connection;

public class OrderDAOImpl implements OrderDAO{
	private Connection con;

	public OrderDAOImpl(Connection con) {
		super();
		this.con = con;
	}
	
}
