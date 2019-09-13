package com.RS;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.RS.modal.User;
import com.RS.repository.UserRepository;

@SpringBootApplication
@ComponentScan({ "com.RS.controller", "com.RS.services" })
//@EnableAutoConfiguration(exclude = {ErrorMvcAutoConfiguration.class})
public class SchoolRankingApplication  {

	
	public static void main(String[] args) {
	 SpringApplication.run(SchoolRankingApplication.class, args);
		
		

	
	}

}
