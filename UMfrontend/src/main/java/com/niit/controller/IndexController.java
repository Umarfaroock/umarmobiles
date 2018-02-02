package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String homePage(Model model) {

		return "index";
	}
@RequestMapping("index")
public String HomePage(Model model){

	return "index";
}
@RequestMapping("/signup")
public String Signuppage(Model model) {

	return "signup";
}
@RequestMapping("/login")
public String loginpage(Model model) {

	return "login";
}

}
