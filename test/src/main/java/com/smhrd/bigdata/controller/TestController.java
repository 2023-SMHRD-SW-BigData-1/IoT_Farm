package com.smhrd.bigdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	@GetMapping("/")
	public String boardList(Model model) {
		return "account-billing";
	}
	
	@GetMapping("/profile")
	public String profile(Model model) {
		return "profile";
	}
}

