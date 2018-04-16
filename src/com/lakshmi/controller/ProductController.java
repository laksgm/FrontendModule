package com.lakshmi.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lakshmi.DAO.CategoryDAO;
import com.lakshmi.DAO.ProductDAO;
import com.lakshmi.DAO.SupplierDAO;
import com.lakshmi.domain.Category;
import com.lakshmi.domain.Product;
import com.lakshmi.domain.Supplier;

@Controller
@RequestMapping("/admin")

public class ProductController {

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	SupplierDAO supplierDAO;

	@Autowired
	ProductDAO productDAO;

	@RequestMapping(value = { "/addProduct" }, method = RequestMethod.GET)
	public String addProduct(Model model) {

		model.addAttribute("productForm", new Product());
		model.addAttribute("categoryList", categoryDAO.categoryList());
		model.addAttribute("supplierList", supplierDAO.SupplierList());

		return "addProduct";

	}
	
	
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("categoryList", categoryDAO.categoryList());
		model.addAttribute("supplierList", supplierDAO.SupplierList());

} 

	@RequestMapping("/productlist")
	public String contactList(Model model) {

		model.addAttribute("productList", productDAO.productList());
		return "productList";
	}
	
	@RequestMapping(value="/deleteProduct/{productID}")
	public String deleteCategory(Model model,@PathVariable Integer productID) {
		
		productDAO.deleteProduct(productID);
		return "redirect:/admin/productlist";
		
	}
	
	
	
	@RequestMapping(value="/updateProduct/{productID}")
	public String updateProduct(Model model,@PathVariable Integer productID) {
		
		Product product=productDAO.getProduct(productID);
		model.addAttribute("productForm", product);
		return "addProduct";
		
	}

	@RequestMapping(value = { "/addProduct" }, method = RequestMethod.POST)
	public String saveProduct(HttpServletRequest request, @RequestParam("file") MultipartFile file,
			@RequestParam String productName, Model model, @RequestParam String description,
			@RequestParam String productSaveDate, @RequestParam Integer stock, @RequestParam Double price,
			@RequestParam Integer categoryId, @RequestParam Integer supplierId, @RequestParam Integer productId) {
		System.out.println("-----------------------------Cum here!.............................");
		Product p = new Product();
		if (productId == null) {
			p.setProductSaveDate(productSaveDate);
			p.setProductName(productName);
			Category category = categoryDAO.getCategory(categoryId);
			p.setCategory(category);

			Supplier supplier = supplierDAO.getSupplier(supplierId);
			p.setSupplier(supplier);

			p.setDescription(description);
			p.setPrice(price);
			p.setStock(stock);

			String filepath = request.getSession().getServletContext().getRealPath("/");

			String filname = file.getOriginalFilename();
			p.setImageName(filname);
			System.out.println("File path File" + filepath + " " + filname);

			try {
				// byte imagebyte[] = product.getPimage().getBytes();
				byte imagebyte[] = file.getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(
						new FileOutputStream(filepath + "/resources/images/" + filname));
				fos.write(imagebyte);
				fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

			productDAO.saveProduct(p);
			/* model.addAttribute("saveSuccesful", "Your product was saved succesfully"); */
		} else {
			p.setProductID(productId);

			p.setProductSaveDate(productSaveDate);
			p.setProductName(productName);
			Category category = categoryDAO.getCategory(categoryId);
			p.setCategory(category);

			Supplier supplier = supplierDAO.getSupplier(supplierId);
			p.setSupplier(supplier);

			p.setDescription(description);
			p.setPrice(price);
			p.setStock(stock);

			String filepath = request.getSession().getServletContext().getRealPath("/");

			String filname = file.getOriginalFilename();
			p.setImageName(filname);
			System.out.println("File path File" + filepath + " " + filname);

			try {
				// byte imagebyte[] = product.getPimage().getBytes();
				byte imagebyte[] = file.getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(
						new FileOutputStream(filepath + "/resources/images/" + filname));
				fos.write(imagebyte);
				fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

			productDAO.updateProduct(p);

		}

		return "redirect:/admin/productlist";
	}
}
