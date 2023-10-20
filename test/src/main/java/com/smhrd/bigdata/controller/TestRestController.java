package com.smhrd.bigdata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.bigdata.service.TestService;

@RestController
public class TestRestController {
	
	@Autowired
	private TestService service;	


}
