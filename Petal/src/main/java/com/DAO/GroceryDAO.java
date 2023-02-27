package com.DAO;

import java.util.List;

import com.entity.GroceryDtls;

public interface GroceryDAO {
	public boolean addProduct(GroceryDtls p);
	public List<GroceryDtls> getAllProducById(int id);
	public boolean deleteProduct(int id);
	public GroceryDtls getProductById(int id);
	public boolean updateEditProduct(GroceryDtls g);
	public List<GroceryDtls> getFood();
	public List<GroceryDtls> getDress();
	public List<GroceryDtls> getToy();
	public List<GroceryDtls> getProductByType(String type);
}
