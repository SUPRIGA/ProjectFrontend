package com.niit.controller.homeshopfront;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.homeshop.modal.Role;
import com.niit.homeshop.modal.UserAccount;
import com.niit.homeshop.service.RoleDAO;
import com.niit.homeshop.service.UserAccountDAO;
@Controller
public class UserAccountController{
	
	
	@Autowired
	private UserAccount userAccount;
	
	@Autowired
	private Role role;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private UserAccountDAO useraccountDAO;
	
	@RequestMapping("getlogin")
	public ModelAndView getlogin(){
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	@RequestMapping("login")
	public ModelAndView register(@ModelAttribute UserAccount userAccount ){
		useraccountDAO.insertUserAccount(userAccount);
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
 @RequestMapping("newUserAccount")
 public ModelAndView newUserAccount(@ModelAttribute UserAccount userAccount, @RequestParam("password") String password, @RequestParam("user_name") String user_name) 
 {
	 role.setRole("ROLE_USER");
	 role.setUseraccount(userAccount);
	 role.setRole_Id(4);
	 role.setPassword("supriga");
	 role.setUser_name("vivek");
	 role.setEnabled("true");
	 userAccount.setRole(role);
	 
	 useraccountDAO.insertUserAccount(userAccount);
	 ModelAndView mv = new ModelAndView("login");
	 return mv;
	
	}
	
}
	


