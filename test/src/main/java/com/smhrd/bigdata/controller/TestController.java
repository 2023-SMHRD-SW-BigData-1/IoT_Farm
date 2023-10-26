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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.bigdata.model.IoT_Sensor;
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

   @PostMapping("/updateName")
   public String updateName(@ModelAttribute TestMember m, HttpSession session, Model model) {
       TestMember user = (TestMember) session.getAttribute("user");
       if (service.updateName(user.getId(), m.getName()) > 0) {
           user.setName(m.getName());
           model.addAttribute("alertMessage", "프로필이 업데이트되었습니다."); // 알림 메시지를 모델에 추가
           return "profile";
       } else {
           model.addAttribute("alertMessage", "프로필 업데이트가 실패했습니다."); // 알림 메시지를 모델에 추가
           return "profile";
       }
   }
   
   @GetMapping("/billing")
   public String billing(Model model) {
      return "billing";
   }

   @GetMapping("/security")
   public String security(Model model) {
      return "security";
   }
   
   @PostMapping("/changePw")
   public String changePassword(@RequestParam("cPw") String currentPassword,
                                @RequestParam("nPw") String newPassword,
                                @RequestParam("cnPw") String confirmNewPassword,
                                HttpSession session, Model model) {
       // 세션에서 사용자 정보 가져오기
       TestMember user = (TestMember) session.getAttribute("user");
       
       // 현재 비밀번호와 사용자의 저장된 비밀번호 비교
       if (!user.getPw().equals(currentPassword)) {
           model.addAttribute("alertMessage", "현재 비밀번호가 일치하지 않습니다.");
           return "security";
       }

       // 새 비밀번호와 비밀번호 확인 일치 여부 확인
       if (!newPassword.equals(confirmNewPassword)) {
           model.addAttribute("alertMessage", "새 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
           return "security";
       }

       // 비밀번호 변경 로직 실행
       if (service.changePw(user.getId(), newPassword) > 0) {
           user.setPw(newPassword);
           model.addAttribute("alertMessage", "비밀번호가 성공적으로 변경되었습니다.");
           return "security";
       } else {
           model.addAttribute("alertMessage", "비밀번호 변경을 실패하였습니다.");
           return "security";
       }
   }
   
   @GetMapping("/delete")
   public String delete(HttpSession session) {
	  TestMember user = (TestMember) session.getAttribute("user");
	  service.delete(user.getId());
	  session.invalidate();
      return "main";
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
			
			
			/*
			int usingIot=service.iotNum(user.getUser_num()); // 유저의 iot 개수 함수
			int usingSensor=service.sensorNum(user.getUser_num()); // 유저의 sensor 개수 함수
			*/
			int usingIot=2;
			int usingSensor=2;
			
			
			IoT_Sensor max;
			if(user.getPclass().equals("Free")) {
				max=new IoT_Sensor(3,9,usingIot,usingSensor);
			}else if(user.getPclass().equals("Paid")) {
				max=new IoT_Sensor(10,30,usingIot,usingSensor);
			}else {
				max=new IoT_Sensor(20,100,usingIot,usingSensor);
			}
			session.setAttribute("max", max);
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