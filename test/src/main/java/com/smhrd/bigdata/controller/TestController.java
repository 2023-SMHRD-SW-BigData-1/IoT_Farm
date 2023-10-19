package com.smhrd.bigdata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	@GetMapping("/")
	public String boardList(Model model) {
		return "temp/account-profile";
	}
	
	@GetMapping("/profile")
	public String profile(Model model) {
		return "profile";
	}
	
	@GetMapping("/billing")
	public String billing(Model model) {
		return "billing";
	}
	
	@GetMapping("/security")
	public String security(Model model) {
		return "security";
	}
	
	@GetMapping("/notifications")
	public String notifications(Model model) {
		return "notifications";
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
