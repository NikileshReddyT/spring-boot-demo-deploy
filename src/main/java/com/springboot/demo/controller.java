package com.springboot.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class controller{

@GetMapping("/")
public String getstr() {
	return "hello world";
}


}