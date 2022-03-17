package com.simplilearn;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.simplilearn.controllers")
public class FileHApplication {

	public static void main(String[] args) {
		SpringApplication.run(FileHApplication.class, args);
	}

}
