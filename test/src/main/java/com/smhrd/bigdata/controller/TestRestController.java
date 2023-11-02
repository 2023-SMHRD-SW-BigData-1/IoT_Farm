package com.smhrd.bigdata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.EmailService;
import com.smhrd.bigdata.service.TestService;

import java.util.HashMap;
import java.util.Map;

@RestController
public class TestRestController {

   
   @Autowired
   private TestService service;   
   
   @Autowired
   private EmailService emailservice;
   
   @GetMapping("join/idcheck")
   public    @ResponseBody String idCheck(@RequestParam("input") String input) {
      int cnt = service.idCheck(input);
      
      if(cnt>0) {
         return "fail";
      }else {
         return "success";
      }
   }
   
   @GetMapping("join/emailSend")
   @ResponseBody
   public String emailSend(@RequestParam("email") String email) {
	   String check =  emailservice.makeRandomNumber();
	   emailservice.sendSimpleMessage(email, "이메일 인증번호", check);
	   return check;
   }
   
   @GetMapping("updateImg")
   public String updateUser(HttpSession session, @RequestParam("img") String img) {
	   TestMember user=(TestMember)session.getAttribute("user");
	   user.setP_img(img);
	   int cnt=service.updateImg(user.getId(),user.getP_img());
	   if(cnt>0) {
		   return "success";
	   }else {
		   return "fail";
	   }
   }
}
   