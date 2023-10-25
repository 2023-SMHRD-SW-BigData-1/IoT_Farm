package com.smhrd.bigdata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.bigdata.service.TestService;

@RestController
public class TestRestController {
	
	@Autowired
	private TestService service;	
	
	public String idCheck(@RequestParam("input") String input) {
		int cnt = service.idCheck(input);
		
		if(cnt>0) {
			return "fail";
		}else {
			return "success";
		}
	}
	
	
}
