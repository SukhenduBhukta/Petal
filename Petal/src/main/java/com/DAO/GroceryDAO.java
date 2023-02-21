package com.DAO;

import java.util.List;

import com.entity.GroceryDtls;

public interface GroceryDAO {
	public boolean addProduct(GroceryDtls p);
	public List<GroceryDtls> getAllProduct();
	public boolean deleteProduct(int id);
	public GroceryDtls getProductById(int id);
	public boolean updateEditProduct(GroceryDtls g);
}
