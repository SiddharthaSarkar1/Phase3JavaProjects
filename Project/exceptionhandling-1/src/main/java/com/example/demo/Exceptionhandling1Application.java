package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.simplilearn.controller")
public class Exceptionhandling1Application {

	public static void main(String[] args) {
		SpringApplication.run(Exceptionhandling1Application.class, args);
	}

}
