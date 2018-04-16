package com.lakshmi.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitializerConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

	/*@Override
	public void onStartup(ServletContext context) throws ServletException {
		// TODO Auto-generated method stub
		  AnnotationConfigWebApplicationContext annotationConfigWebApplicationContext = new AnnotationConfigWebApplicationContext();
		  annotationConfigWebApplicationContext.register(MVCConfiguration.class);
		  context.addListener(new ContextLoaderListener(annotationConfigWebApplicationContext));
	        ServletRegistration.Dynamic servlet = context.addServlet("dispatcher", new DispatcherServlet(annotationConfigWebApplicationContext));
	        servlet.setLoadOnStartup(1);
	        servlet.addMapping("/");
		  
	}*/

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { MVCConfiguration.class ,HibernateConfig.class,SecurityConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

}
