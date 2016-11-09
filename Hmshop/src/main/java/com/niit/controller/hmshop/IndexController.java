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
public class IndexController {

	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	
	@RequestMapping("/")
	public ModelAndView gethomepage(Principal p){
		
		ModelAndView mv = new ModelAndView("index");
		List <Product> listProduct = productDAO.getAllProduct();
		
		mv.addObject("listProduct", listProduct);
		System.out.println(listProduct);
		//mv.addObject("ProductList", true);
		return mv;
	}
	@RequestMapping("/home")
	public String gethome(Principal p){
		return "redirect:/";
		
	}

}