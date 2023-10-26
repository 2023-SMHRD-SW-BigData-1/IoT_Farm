package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.TestService;

@RestController
public class TestRestController {
   
   @Autowired
   private TestService service;   
   
   @GetMapping("join/idcheck")
   public    @ResponseBody String idCheck(@RequestParam("input") String input) {
      int cnt = service.idCheck(input);
      
      if(cnt>0) {
         return "fail";
      }else {
         return "success";
      }
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