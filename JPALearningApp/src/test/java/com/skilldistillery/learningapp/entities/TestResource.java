package com.skilldistillery.learningapp.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class TestResource {
	
	private static EntityManagerFactory emf;
	
	private EntityManager em;
	
	private Resource resource;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		
		emf = Persistence.createEntityManagerFactory("LearningApp");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		resource = em.find(Resource.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		resource = null;
	}

	@Test
	@DisplayName("Test resource not null.")
	void testNotNull() {
		assertNotNull(resource);
	}
	
	@Test
	@DisplayName("Test for correct resource state data mapping.")
	void testFieldMapping() {
		
		assertEquals(1, resource.getId());
		assertEquals("Khan Academy", resource.getName());
		assertEquals("https://www.khanacademy.org/", resource.getUrl());
		assertEquals("Math  Science  Computing  JavaScript HTML CSS Computer Science  Arts  Humanities", resource.getSubject());
	}

}
