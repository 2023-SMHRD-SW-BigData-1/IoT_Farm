package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.bigdata.model.TestMember;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErrorController {
	@RequestMapping("/error/error-404")
	public String errorPage404(HttpServletRequest request, HttpServletResponse response) {
		return "/error/error-404";
	}
	
	@RequestMapping("/error/error-500")
	public String errorPage500(HttpServletRequest request, HttpServletResponse response) {
		return "/error/error-500";
	}
}


