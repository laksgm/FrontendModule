package com.lakshmi.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lakshmi.DAO.UserDAO;
import com.lakshmi.DAOImpl.UserDAOImpl;
import com.lakshmi.domain.User;
import com.lakshmi.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	private UserValidator userValidator;

	@Autowired
	UserDAO userDAO;

	/*
	 * @Autowired private BCryptPasswordEncoder bCryptPasswordEncoder;
	 */

	static Logger logger = Logger.getLogger(UserDAOImpl.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpage() {
		logger.debug("Usercontroller: In mainpage get method");
		return "homepage";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login2";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model m) {
		m.addAttribute("userForm", new User());
		return "register";
	}

	@RequestMapping("/userlogged")
	public String userLogged() {
		return "redirect:/";

	}

	@RequestMapping("/error")
	public String errorPage() {
		return "error";

	}

	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String passwordResetPage() {

		return "forgotPassword";

	}


	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registration(@Valid @ModelAttribute("userForm") User userForm, BindingResult bindingResult,
			HttpServletRequest request, HttpServletResponse response) {

		ModelAndView modelAndView = new ModelAndView();

		userForm.setDateOfRegistration(new Date());
		userForm.setRole("ROLE_USER");
		if (bindingResult.hasErrors()) {

			modelAndView.addObject("error", "Invalid details provided.Please check.");
			modelAndView.setViewName("register");
			return modelAndView;
		}

		userDAO.registerUser(userForm);
		modelAndView.setViewName("Success");

		return null;

	}

}
