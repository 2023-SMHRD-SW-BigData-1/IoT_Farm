package com.smhrd.bigdata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	@GetMapping("/")
	public String boardList(Model model) {
		return "account-profile";
	}
	
	@GetMapping("/profile")
	public String profile(Model model) {
		return "profile";
	}

	@GetMapping("/login")
	public String loginform() {
		return "login";
	}
	
	@GetMapping("/join")
	public String joinform() {
		return "join";
	}
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
}
