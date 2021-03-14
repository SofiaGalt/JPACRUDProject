package com.skilldistillery.bootmvc.data;


import java.util.List;

import com.skilldistillery.learningapp.entities.Resource;

public interface ResourceDAO {

	Resource findById(int id);
	List<Resource> getAllResources();
	List<Resource> findResourcesBySubject(String subject);
	Resource createResource(Resource r);
}
