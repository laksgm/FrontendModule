package com.lakshmi.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lakshmi.domain.Cart;

@Controller
public class CartController {

	@Autowired
	private Cart cart;

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart() {
		return "checkout";
	}

	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest request, @RequestParam String productName,
			@RequestParam String price, @RequestParam Integer productId, @RequestParam int quantity) {
		ModelAndView model = new ModelAndView();
		Principal principal = request.getUserPrincipal();

		if (principal == null) {
			cart.setQuantity(quantity);
			cart.setPriceInCart(price);
			cart.setProductNameInCart(productName);

		} else {
			cart.setQuantity(quantity);
			cart.setPriceInCart(price);
			cart.setProductNameInCart(productName);

		}
		return model;

	}

}
