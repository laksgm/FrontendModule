package com.lakshmi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lakshmi.DAO.SupplierDAO;
import com.lakshmi.domain.Supplier;
import com.lakshmi.domain.User;

@Controller
@RequestMapping("/admin")

public class SupplierController {

	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String getSupplierForm(Model model) {
		model.addAttribute("supplierForm", new Supplier());
		return "addSupplier";
	}

	
	@RequestMapping("/suplist")
	public ModelAndView contactList() {
		ModelAndView mav = new ModelAndView("supplierList");
		mav.addObject("supplierList", supplierDAO.SupplierList());
		return mav;
}

	@RequestMapping(value = "/supplier", method = RequestMethod.POST)
	public String addSupplier(@Valid @ModelAttribute("supplierForm") Supplier supplierForm, BindingResult bindingResult,
			HttpServletRequest request, HttpServletResponse response) {

		if(supplierForm.getSupplierId()==null) {
		supplierDAO.addSupplier(supplierForm);
		return "redirect:/admin/suplist";
		}
		else
		{
			supplierDAO.updateSupplier(supplierForm);
			return "redirect:/admin/suplist";
		}
	}
	
	
	@RequestMapping(value="/deleteSupplier/{supplierId}")
	public String deleteSupplier(Model model,@PathVariable Integer supplierId) {
		
		supplierDAO.deleteSupplier(supplierId);
		model.addAttribute("deleteCat", " Supplier Deleted..");
		return "redirect:/suplist";
		
	}
	
	
	
	@RequestMapping(value="/updateSupplier/{supplierId}")
	public String updateSupplier(Model model,@PathVariable Integer supplierId) {
		
	Supplier supplier=supplierDAO.getSupplier(supplierId);
	model.addAttribute("supplierForm", supplier);
	return "addSupplier";
	

}}
