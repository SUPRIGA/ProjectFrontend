package com.niit.controller.hmshop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.homeshop.model.Role;
import com.niit.homeshop.model.UserAccount;
import com.niit.homeshop.service.RoleDAO;
import com.niit.homeshop.service.UserAccountDAO;
@Controller
public class UserAccountController{
	
	
	@Autowired
	private UserAccount userAccount;
	
	@Autowired
	private UserAccountDAO useraccountDAO;
	
	@Autowired
	private Role role;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@RequestMapping("getlogin")
	public ModelAndView getlogin(){
		ModelAndView mv=new ModelAndView("login");
		System.out.println("inside get login");
		return mv;
	}
	
	@RequestMapping("getregister")
	public ModelAndView getregister(){
		ModelAndView mv=new ModelAndView("register");
		System.out.println("inside get login");
		return mv;
	}
	
	@RequestMapping("getindex1")
	public ModelAndView getindex1(){
		ModelAndView mv=new ModelAndView("index1");
		
		return mv;
	}
	
 @RequestMapping("newUserAccount")
 public ModelAndView newUserAccount(@ModelAttribute UserAccount userAccount, @RequestParam("password") String password, @RequestParam("user_name") String user_name)
 {
	 role.setRole("ROLE_USER");
	 role.setUser_name(user_name);
	 role.setEnabled(true);
	 role.setRole_Id(1);
	 role.setPassword(password);
	 role.setUseraccount(userAccount);
	 userAccount.setRole(role);
	 
	 useraccountDAO.insertUserAccount(userAccount);
	 ModelAndView mv = new ModelAndView("login");
	 return mv;
	
	}
 @RequestMapping(value = "/afterlogin")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {
	  
	System.out.println("inside security");
	  return new ModelAndView("index1");

	}
 

	
	
 /*@RequestMapping(value = "/loginpage")
	  ModelAndView model = new ModelAndView();
	  if (error != null) {
		model.addObject("error", "Invalid username and password!");
	  }

	  if (logout != null) {
		model.addObject("msg", "You've been logged out successfully.");
	  }
	  model.setViewName("login");
*/
 
	
}
	


