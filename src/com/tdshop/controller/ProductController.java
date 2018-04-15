package com.tdshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tdshop.model.Category;
import com.tdshop.model.Product;
import com.tdshop.model.Supplier;
import com.tdshop.service.CategoryService;
import com.tdshop.service.ProductService;
import com.tdshop.service.SupplierService;

@Controller
@RequestMapping("product")
public class ProductController extends TDShopController{
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("list-by-category/{id}")
	public String listByCategory(Model model,@PathVariable("id") Integer id) {
		Category c = categoryService.get(id);
		model.addAttribute("model", c);
		model.addAttribute("titleName", c.getNameVN());
		model.addAttribute("items", productService.listByCategory(id));
		return user("product/index.jsp");
	}
	@RequestMapping("list-by-category1/{id}")
	public String listByCategory1(Model model,@PathVariable("id") Integer id) {
		Category c = categoryService.get(id);
		model.addAttribute("model", c);
		model.addAttribute("titleName", c.getNameVN());
		model.addAttribute("items", productService.revenueByProduct1(id));
		return user("product/index.jsp");
	}
	@RequestMapping("list-by-category2/{id}")
	public String listByCategory2(Model model,@PathVariable("id") Integer id) {
		Category c = categoryService.get(id);
		model.addAttribute("model", c);
		model.addAttribute("titleName", c.getNameVN());
		model.addAttribute("items", productService.revenueByProduct2(id));
		return user("product/index.jsp");
	}
	@RequestMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") Integer id) {
		Product p = productService.get(id);
		p.setViewCount(p.getViewCount() + 1);
		productService.update(p);
		String value = getCookieValue("views", "-1");
		if(value.indexOf(id.toString()) < 0) {
			value += "~" + id.toString();
			addCookie("views", value, 30);
		}
		model.addAttribute("views", productService.getViewProducts(value.replace("~", ",")));
		model.addAttribute("model", p);
		return user("product/detail.jsp");
	}
	@RequestMapping("search")
	public String search(Model model, @RequestParam("keywords") String keywords) {
		model.addAttribute("items", productService.search(keywords));
		return user("product/index.jsp");
	}
	@RequestMapping("list-by-supplier/{id}")
	public String listBySupplier(Model model, @PathVariable("id") String id) {
		Supplier s= supplierService.get(id);
		model.addAttribute("titleName", s.getCompanyName());
		model.addAttribute("items", productService.listBySupplier(id));
		return user("product/index.jsp");
	}
	@RequestMapping("get-page")
	public String getPage(Model model,  
			@RequestParam(value="pageNo", defaultValue="0") int pageNo,
			@RequestParam(value="pageSize", defaultValue="12") int pageSize) {
		List<Product> list = productService.getPage(pageNo, pageSize);
		model.addAttribute("items", list);
		return "product/list-product";
	}
	
	@ResponseBody
	@RequestMapping("get-page-count")
	public String getPageCount(Model model,  
			@RequestParam(value="pageSize", defaultValue="12") int pageSize) {
		int rowCount = productService.list().size();
		int pageCount = (int) Math.ceil(1.0*rowCount/pageSize);
		return String.valueOf(pageCount);
	}
}
