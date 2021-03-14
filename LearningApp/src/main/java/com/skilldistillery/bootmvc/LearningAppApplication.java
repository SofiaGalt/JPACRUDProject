package com.skilldistillery.bootmvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.learningapp")
public class LearningAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(LearningAppApplication.class, args);
	}

}
