## JPACRUDProject

### Overview

Find all the resources you need to learn whatever you need to learn!  

This is a full stack application which allows the user to query for educational resources by subject.  It also allows the user to share their favorite online resources, update incorrect/out-of-date information, and delete resources.

### Features

SQL database.
JPA project with mapping of Entities to SQL tables.
JUnit Jupiter tests to validate that JPA mappings are correct.
Spring MVC project integrated with a JPA project.
The frontend of the project is composed of JSP files which are hidden within the WEB-INF folder.

### Class structure

This application follows the MVC, and DAO design patterns.

I have enjoyed writing the last few Skill Distillery project applications using the separation of concerns principles - which provide for structured, maintainable code.

This app contains a JPA project which works together with a Spring boot project.  The JPA project is responsible for the mapping of the sql table to entity relationship.  The Spring boot project is responsible for the frontend as well as the network routing and DAO functionality.

The DAO structure is composed of an Interface and, because this is a weekend project, a single implementing class.  They can be found inside LearningApp/src/main/java/com.skilldistillery.bootmvc.data

The Controller - which provides network routing - can be found inside LearningApp/src/main/java/com.skilldistillery.bootmvc.controllers

The frontend portion of the project can be found inside LearningApp/src/main/webapp

### Technologies

This application combines the best aspects of a JPA project and a Spring boot project to create a full stack application.  This project persists information about educational resources in a mysql database.  It performs CRUD operations as it also performs network routing.
