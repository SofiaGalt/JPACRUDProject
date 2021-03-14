package com.skilldistillery.bootmvc.data;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.learningapp.entities.Resource;

@Service
@Transactional
public class ResourceDAOImpl implements ResourceDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Resource findById(int id) {
		// TODO Auto-generated method stub
		return em.find(Resource.class, id);
	}

	@Override
	public List<Resource> getAllResources() {
		
		return em.createQuery("select r from Resource r", Resource.class).getResultList();
	}

	@Override
	public List<Resource> findResourcesBySubject(String subject) {
		
		return em.createQuery("select r from Resource r where subject like :subject", Resource.class).setParameter("subject", "%" + subject +"%").getResultList();
	}

	@Override
	public Resource createResource(Resource r) {
		
		em.persist(r);
		return r;
	}

	@Override
	public Resource updateResource(Resource r) {
		
		Resource persistedResource = em.find(Resource.class, r.getId());
		
		persistedResource.setToEqual(r);
		
		return persistedResource;
	}

	@Override
	public Resource deleteResource(Integer id) {
		
		Resource toDelete = em.find(Resource.class, id);
		
		em.remove(toDelete);
		
		return toDelete;
	}
	
}
