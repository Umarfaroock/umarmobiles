package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {

	public List<Product> list();

	public Product getByProductId(int productid);

	public Product getByProductName(String productname);

	public List<Product> getBySupplierName(String suppliername);

	public List<Product> getByFeatured();

	public List<Product> getByAlbumName(String albumname);

	public void saveOrUpdate(Product product);

	public void delete(int product_id);
}
