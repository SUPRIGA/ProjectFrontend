package com.niit.controller.hmshop;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public String getlogin(@RequestParam(value="error",required= false)String error,

	@RequestParam(value="logout", required= false)String logout,Model model) { 		
			
	/*public ModelAndView getlogin(){
		ModelAndView mv=new ModelAndView("login");*/
		System.out.println("inside get login");
		 if (error != null) {
				model.addAttribute("error", "Invalid credentials");
			  }
		 if (logout != null) {
				model.addAttribute("logout", "You've been logged out successfully.");
			  }
		
		return "login";
	}
	
	@RequestMapping("getregister")
	public ModelAndView getregister(){
		ModelAndView mv=new ModelAndView("register");
		System.out.println("inside get login");
		return mv;
	}
	
	
	
 @RequestMapping("newUserAccount")
 public ModelAndView newUserAccount(@ModelAttribute("useraccount") UserAccount userAccount, @RequestParam("password") String password, @RequestParam("user_name") String user_name)
 {
	 String message=null;

	 
	 role.setRole("ROLE_USER");
	 role.setUser_name(user_name);
	 role.setEnabled(true);
	 role.setRole_Id(1);
	 role.setPassword(password);
	 role.setUseraccount(userAccount);
	 userAccount.setRole(role);
	
	 
	 useraccountDAO.insertUserAccount(userAccount);
	 ModelAndView mv = new ModelAndView("login");
	 mv.addObject("registered successfully", message);
	 return mv;
	
	}
 @RequestMapping(value = "/afterlogin")
	public String login(Principal p ) {
	  
	 String message=null;
	 Role role=roleDAO.getRole(p.getName());
	 System.out.println(role.getRole());
	 if(role.getRole().equals("ROLE_USER")){
		 message="redirect:/useraccount";
	 }
	 else
	 {
		 message="redirect:/admin";
	 }
	 
	 /* ModelAndView model = new ModelAndView();
	  if (error != null) {
		model.addObject("error", "Invalid username and password!");
	  }

	  if (logout != null) {
		model.addObject("msg", "You've been logged out successfully.");
	  }
	  model.setViewName("login");
*/

	 
	 
	System.out.println("inside security");
	  return message;

	}
 
/* @RequestMapping(value="logout", method = RequestMethod.GET)
 public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
     Authentication auth = SecurityContextHolder.getContext().getAuthentication();
     if (auth != null){    
         new SecurityContextLogoutHandler().logout(request, response, auth);
     }
     return "redirect:/getlogin?logout";
	
 }*/
 
	
}
	


