package com.shenbatechie.spring_eks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringEksApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringEksApplication.class, args);
	}
   @GetMapping("/message")
	public String hello(){
	return "New  deployed";
}
}
