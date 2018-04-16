package com.lakshmi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lakshmi.DAO.CategoryDAO;
import com.lakshmi.domain.Category;

@Controller
@RequestMapping("/admin")
public class CategoryController {
	private static final Logger LOG = LoggerFactory.getLogger(CategoryController.class);

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String getCategoryForm(Model model) {
		LOG.debug("Get requset of add category");
		model.addAttribute("categoryForm", new Category());
		return "addCategory";
	}

	@RequestMapping("/catlist")
	public String contactList(Model model) {

		model.addAttribute("categoryList", categoryDAO.categoryList());
		return "categoryList";
	}

	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("categoryForm") Category categoryForm, BindingResult bindingResult,
			HttpServletRequest request, HttpServletResponse response) {

		if (categoryForm.getCatId() == null) {
			categoryDAO.addCategory(categoryForm);
			return "redirect:/admin/catlist";
		} else {
			categoryDAO.updateCategory(categoryForm);
			return "redirect:/admin/catlist";
		}
	}

	@RequestMapping(value = "/deleteCategory/{catId}")
	public String deleteCategory(Model model, @PathVariable Integer catId) {

		categoryDAO.deleteCategory(catId);
		model.addAttribute("deleteCat", " Category Deleted..");
		return "redirect:/admin/catlist";

	}

	@RequestMapping(value = "/updateCategory/{catId}")
	public String updateCategory(Model model, @PathVariable Integer catId) {

		Category category = categoryDAO.getCategory(catId);
		model.addAttribute("categoryForm", category);
		return "addCategory";

	}
}
