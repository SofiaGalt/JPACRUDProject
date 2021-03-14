package com.skilldistillery.bootmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bootmvc.data.ResourceDAO;
import com.skilldistillery.learningapp.entities.Resource;

@Controller
public class ResourceController {

	@Autowired
	private ResourceDAO resourceDao;
	
	@RequestMapping(path= {"/","home.do"}, method = RequestMethod.GET)
	public ModelAndView index() {
		
		  ModelAndView mv = new ModelAndView();
		  mv.addObject("resources", resourceDao.getAllResources());
		  
		  mv.setViewName("index"); // (ViewResolver in use)
		  return mv; 
	}
	
	@RequestMapping(path="findResourceBySubject.do", method=RequestMethod.GET)
	public ModelAndView findBySubject(@RequestParam(name="subject") String subject ) {
		
		  ModelAndView mv = new ModelAndView();
		  mv.addObject("resources", resourceDao.findResourcesBySubject(subject));
		  
		  mv.setViewName("index"); // (ViewResolver in use)
		  return mv; 
	}
	
	@RequestMapping(path={"addResource.do"}, method = RequestMethod.GET)
	public ModelAndView addResource() {
		
		  ModelAndView mv = new ModelAndView();
		  mv.addObject("resource", new Resource());
		  
		  mv.setViewName("addResource"); // (ViewResolver in use)
		  return mv; 
	}
		
	@RequestMapping(path={"submitNewResource.do"}, method = RequestMethod.POST)
	public ModelAndView submitResource(Resource r) {
		
		  ModelAndView mv = new ModelAndView();
		  
		  r = resourceDao.createResource(r);
		  
		  mv.addObject("resource", r);
		  mv.addObject("message", "Your new resource has been successfully created -");
		  
		  mv.setViewName("resourceCreated"); // (ViewResolver in use)
		  return mv; 
	}
	
	@RequestMapping(path={"update.do"}, method = RequestMethod.GET)
	public ModelAndView updateResource(Integer id) {
		
		  ModelAndView mv = new ModelAndView();
		  
		  mv.addObject("resource", resourceDao.findById(id));
		  
		  mv.setViewName("updateResource"); // (ViewResolver in use)
		  return mv; 
	}
		
	@RequestMapping(path={"submitUpdatedResource.do"}, method = RequestMethod.POST)
	public ModelAndView submitUpdatedResource(Resource r) {
		
		  ModelAndView mv = new ModelAndView();
		  
		  
		  mv.addObject("resource", resourceDao.updateResource(r));
		  mv.addObject("message", "Your resource has been successfully updated -");
		  
		  mv.setViewName("resourceCreated"); // (ViewResolver in use)
		  return mv; 
	}
		
	@RequestMapping(path={"remove.do"}, method = RequestMethod.GET)
	public ModelAndView deleteResource(Integer id) {
		
		  ModelAndView mv = new ModelAndView();
		  
		  mv.addObject("resource", resourceDao.deleteResource(id));
		  mv.addObject("message", "Your resource has been successfully deleted -");
		  
		  
		  mv.setViewName("resourceCreated"); // (ViewResolver in use)
		  return mv; 
	}
}