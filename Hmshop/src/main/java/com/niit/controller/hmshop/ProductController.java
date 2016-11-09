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
import com.niit.homeshop.model.Category;
import com.niit.homeshop.model.Product;
import com.niit.homeshop.model.Supplier;
import com.niit.homeshop.service.CategoryDAO;
import com.niit.homeshop.service.ProductDAO;
import com.niit.homeshop.service.SupplierDAO;
@Controller
public class ProductController {
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	
@RequestMapping("getproduct")
 public ModelAndView getproduct()
 {
	List<Category> categoryList = categoryDAO.getAllCategory();
	List<Supplier> supplierList = supplierDAO.getAllSupplier();
	
	ModelAndView mv=new ModelAndView("AddProduct");
	mv.addObject("categoryList",categoryList);
	mv.addObject("supplierList", supplierList);
	return mv;
 }
@RequestMapping("deleteproduct/{id}")
    public String deleteProduct(@PathVariable("id") int id)
    {
	productDAO.deleteProduct(id);
    return "redirect:/viewproduct";
    }
    

@RequestMapping(value="newProduct" , method=RequestMethod.POST)
 public ModelAndView newProduct(@ModelAttribute Product product,@RequestParam("file") MultipartFile file)
 {
	
	
	productDAO.insertProduct(product);
	String path = "E://project1/Hmshop/src/main/webapp/WEB-INF/resources/productimages/";
	FileUtil.upload(path, file, product.getId()+".jpg");
    
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
@RequestMapping("getproductimage/{id}")
public ModelAndView getproductimage(@PathVariable ("id") int id){
	Product product = productDAO.getProduct(id);
	ModelAndView mv=new ModelAndView("productimage");
	mv.addObject("p", product);
	System.out.println("display image");
	return mv;
}

}
