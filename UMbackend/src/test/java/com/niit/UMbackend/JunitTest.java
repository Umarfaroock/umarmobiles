package com.niit.UMbackend;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.RoleDao;
import com.niit.dao.SupplierDao;
import com.niit.dao.UserDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Role;
import com.niit.model.Supplier;
import com.niit.model.User;

public class JunitTest {

	/*
	 * private static Cart productid;
	 */
	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		UserDao userDao = (UserDao) context.getBean("UserDao");
		RoleDao roleDao = (RoleDao) context.getBean("RoleDao");
		CategoryDao categoryDao = (CategoryDao) context.getBean("CategoryDao");
		SupplierDao supplierDao = (SupplierDao) context.getBean("SupplierDao");
		ProductDao productDao = (ProductDao) context.getBean("ProductDao");

		User user = (User) context.getBean("user");
		Role role = (Role) context.getBean("role");
		Category category = (Category) context.getBean("category");
		Supplier supplier = (Supplier) context.getBean("supplier");
		Product product = (Product) context.getBean("product");

		user.setUserName("skfr");
		user.setEmailId("jhvd@gmail.com");
		user.setPassword("umar");

		user.setContactNumber(98765);
		user.setAddress("s12,sejkajdh");

		role.setUserName("Umarfaroock");
		role.setEmailId("Sukt.umar@gmail.com");
		role.setContactNumber(9942145);

		user.setRole(role);
		role.setUser(user);

		userDao.saveOrUpdate(user);
		roleDao.saveOrUpdate(role);

		category.setCategoryName("Watches");

		categoryDao.saveOrUpdate(category);
		
		supplier.setSupplierName("hddsjk");
		supplier.setContactNumber(87968764);
		supplierDao.saveOrUpdate(supplier);
		
		product.setProductName("fdknmfg");
		productDao.saveOrUpdate(product);
	}
}