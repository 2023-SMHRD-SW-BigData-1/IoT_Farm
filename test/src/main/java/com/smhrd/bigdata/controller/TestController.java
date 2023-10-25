package com.smhrd.bigdata.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.TestService;

@Controller
public class TestController {

	@Autowired
	TestService service;
	
	@GetMapping("/header")
	public String header(Model model) {
		return "header";
	}

	@GetMapping("/join")
	public String joinForm(@ModelAttribute TestMember m) {
		return "join";
	}

	@PostMapping("/join")
	public String join(@ModelAttribute TestMember m, Model model) {
		service.join(m);
		return "redirect:/";
	}

	@GetMapping("/")
	public String boardList(Model model) {
		return "main";
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

	@GetMapping("/pricing")
	public String pricing(Model model) {
		return "pricing";
	}

	@GetMapping("/pay_success")
	public String pay_success(Model model) {
		return "pay_success";
	}

	@GetMapping("/pay_fail")
	public String pay_fail(Model model) {
		return "pay_fail";
	}
	
	@GetMapping("/guide")
	public String guide(Model model) {
		return "guide";
	}

	@GetMapping("/login")
	public String loginform() {
		return "login";
	}
	
	@PostMapping("/login_action")
	public String login_action(@ModelAttribute TestMember m, Model model, HttpSession session) {
		TestMember user=service.login(m);
		if(user != null) {
			session.setAttribute("user", user);
			return "redirect:/";
		} else {
			model.addAttribute("errorMessage", "ID 혹은 비밀번호를 잘못 입력하셨거나 등록되지 않은 ID 입니다.");
	        return "login";
		}
	}
	
	@GetMapping("/logout_action")
	public String logout_action(HttpSession session) {
		session.invalidate();
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

	@GetMapping("/pwfind")
	public String pwfind() {
		return "pwfind";
	}

	@GetMapping("/pwfind2")
	public String pwfind2() {
		return "pwfind2";
	}

	@GetMapping("/pwfind3")
	public String pwfind3() {
		return "pwfind3";
	}
	@GetMapping("/mydata")
	public String mydata() {
		return "mydata";
	}
}
