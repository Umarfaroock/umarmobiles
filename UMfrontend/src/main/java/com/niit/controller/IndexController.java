package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Controller
public class IndexController {
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String homePage(Model model) {

		return "index";
	}
	
	@RequestMapping("/index")
	public String mainPage(Model model) {
		List<Product> product = productDao.getByFeatured();
		model.addAttribute("product", product);
		return "index";
		
	}@RequestMapping("/signup")
public String Signuppage(Model model) {

	return "signup";
}
	@RequestMapping("/login")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("login");

		if (error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
		}

		mv.addObject("loginButtonClicked", true);
		return mv;
	}
	
	@RequestMapping("/about")
	public String aboutPage(Model model) {

		return "about";
	}
	
}
