package com.lakshmi.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	DataSource dataSource;
	
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		
	  auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(
			"select email,password, 'TRUE' as enabled from User where email=?")
		.authoritiesByUsernameQuery(
			"select email, role from User where email=?");
	}	
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

	    http.csrf().disable().authorizeRequests().antMatchers("/admin/**")
		.access("hasRole('ROLE_ADMIN')").and().formLogin()
		.loginPage("/login").failureForwardUrl("/error").successForwardUrl("/userlogged")
		.usernameParameter("username")
		.passwordParameter("password")
		.and().logout().logoutUrl("/logout").invalidateHttpSession(true).logoutSuccessUrl("/")

		.and().exceptionHandling().accessDeniedPage("/error");
	}

}
