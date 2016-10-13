package com.niit.controller.hmshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserAccount
{
	@RequestMapping("getlogin")
	public ModelAndView getlogin(){
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	
}

