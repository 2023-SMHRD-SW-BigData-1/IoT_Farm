package com.smhrd.bigdata.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.TestService;

@Controller
public class TestController {
	
	@Autowired
	TestService service;
	
	@GetMapping("/")
	public String boardList(Model model) {
		return "temp/account-billing";
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
	
	@PostMapping("/join")
	public String join(@ModelAttribute TestMember member) {
		service.join(member);
		return "redirect:/login";
	}
	
	@GetMapping("/join")
	public String joinForm() {
	    return "join"; // 회원가입 폼 페이지로 이동
	}
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	@GetMapping("/question")
	public String question() {
		return "question";
	}
	@GetMapping("/faq")
	public String faq() {
		return "faq";
	}
	@GetMapping("/qna")
	public String qna() {
		return "qna";
	}
}
