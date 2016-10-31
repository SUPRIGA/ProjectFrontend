package com.niit.controller.hmshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.homeshop.model.Category;
import com.niit.homeshop.service.CategoryDAO;
@Controller
public class CategoryController {
	
	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	
@RequestMapping("getcategory")
 public String getproduct()
 {
	return "AddCategory";
 }

@RequestMapping( value =  "newCategory",  method=RequestMethod.POST)
 public ModelAndView newCategory(@ModelAttribute Category category)
 {
	categoryDAO.insertCategory(category);
	ModelAndView mv = new ModelAndView("AddCategory");
	return mv;
 }

@RequestMapping("viewcategory")
public ModelAndView viewcategory()
{
	ModelAndView mv = new ModelAndView("ViewCategory");
	
	return mv;
}
@RequestMapping("viewcategorylist")
public @ResponseBody String viewategory()
{
	List<Category> listCategory = categoryDAO.getAllCategory();
	Gson gs= new Gson();
	String result=gs.toJson(listCategory);
	System.out.print(result);
	return result;
}
}
