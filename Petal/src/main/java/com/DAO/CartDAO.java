package com.DAO;

import java.util.List;

import com.entity.Cart;

public interface CartDAO {
	public boolean addCart(Cart c);
	public List<Cart> getCartbyUserid(int uid);
	public boolean deleteProduct(int pid, int uid);
	public boolean deleteAllCart(int uid);
	public Cart getCartbyId(int uid, int pid);
}
