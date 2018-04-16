package com.lakshmi.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.lakshmi.domain.User;



	@Component
	public class UserValidator implements Validator {
		

	    @Override
	    public boolean supports(Class<?> aClass) {
	        return User.class.equals(aClass);
	    }

	    @Override
	    public void validate(Object o, Errors errors) {
	        User user = (User) o;

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
	        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
	            errors.rejectValue("username", "Size.userForm.username");
	        }
	       

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
	        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
	            errors.rejectValue("password", "Size.userForm.password");
	        }
	      
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty");
	        if (user.getLastName().length()==0 || user.getLastName().matches( "[0-9]*" )) {
	            errors.rejectValue("lastName", "Invalid lastName");
	        }
	        
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty");
	        if (user.getLastName().length()==0 || user.getLastName().matches( "[0-9]*" ))  {
	            errors.rejectValue("firstName", "Invalid firstName");
	        }

	    }
	}

