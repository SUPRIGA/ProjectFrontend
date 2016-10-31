package com.niit.controller.hmshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.homeshop.model.Product;
import com.niit.homeshop.service.ProductDAO;
@Controller
public class ProductController {
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	
	
@RequestMapping("getproduct")
 public String getproduct()
 {
	return "AddProduct";
 }
@RequestMapping("deleteproduct/{id}")
    public String deleteProduct(@PathVariable("id") int id)
    {
	productDAO.deleteProduct(id);
    return "redirect:/viewproduct";
    }
    

@RequestMapping("newProduct")
 public ModelAndView newProduct(@ModelAttribute Product product)
 {
	
	
	productDAO.insertProduct(product);
	ModelAndView mv = new ModelAndView("AddProduct");
	return mv;
 }





@RequestMapping("viewproduct")
public ModelAndView viewproduct()
{
	ModelAndView mv = new ModelAndView("ViewProduct");
	
	return mv;
}
@RequestMapping("viewproductlist")
public @ResponseBody String viewproducts()
{
	List<Product> listProduct = productDAO.getAllProduct();
	Gson gs= new Gson();
	String result=gs.toJson(listProduct);
	System.out.print(result);
	return result;
}
}
