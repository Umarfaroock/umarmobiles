package com.niit.controller;

import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.RoleDao;
import com.niit.dao.UserDao;
import com.niit.model.Role;
import com.niit.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDao userDAO;

	
	@Autowired
	private RoleDao roleDAO;

	@Autowired
	private Role role;

	@RequestMapping("addNewUser")
	public String addUser(@ModelAttribute User user,Model model) {
		
		String message;
		
		if(userDAO.isAllReadyRegister(user.getEmailId(), true)){
			message = "Your emailId is Alread registered you have to login";
			
		}
		else{
			
		
		user.setEnabled(true);
		role.setEmailId(user.getEmailId());
		role.setRole("ROLE_USER");
		role.setUserName(user.getUserName());
		role.setContactNumber(user.getContactNumber());

		user.setRole(role);
		role.setUser(user);

		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
		
		message = "You have Successfully Registered";
		}
		model.addAttribute("message", message);
		model.addAttribute("loginButtonClicked", true);
		return "index";

	}
	@RequestMapping("/afterlogin")
	public String loginProcess(Principal p, Model model){
		
		String email = p.getName();
	
		Role role = roleDAO.getByEmailId(email);
		
		String role1 = role.getRole();
		
		if(role1.equals("ROLE_ADMIN")){
			
			return "index";
		}
		else if(role1.equals("ROLE_USER")){
			model.addAttribute("userLoggedIn", "true");
			return "index";
		}
		else{		
		
		return "index";
		}
	}
	
}
