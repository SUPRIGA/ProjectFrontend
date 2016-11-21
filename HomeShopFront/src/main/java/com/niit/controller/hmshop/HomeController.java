package com.niit.controller.hmshop;



import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.homeshop.model.Product;
import com.niit.homeshop.service.ProductDAO;


@Controller
@RequestMapping("/useraccount")
public class HomeController {

	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping
	public ModelAndView getuserhome(Principal p){
		String name=p.getName();
		List<Product> listProduct = productDAO.getAllProduct();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("listProduct", listProduct);
		mv.addObject("name", name);
		return mv;
	}
	
	
	
}