package com.smhrd.bigdata.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.bigdata.model.Bill;
import com.smhrd.bigdata.model.IoT_Sensor;
import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.EmailService;
import com.smhrd.bigdata.model.Useriot_Info;
import com.smhrd.bigdata.service.TestService;

@Controller
public class TestController {

   @Autowired
   TestService service;
   
   @Autowired
   EmailService emailservice;
   


	@GetMapping("/test")
	public String table() {
		return "daeun/tables";
	}

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
	public String billing(Model model, HttpSession session) {
		TestMember user = (TestMember) session.getAttribute("user");
		List<Bill> list = service.billList(user.getUser_num());
		Bill last=service.last_payment(user.getUser_num());
		Bill test=new Bill("null"," "," "," ",new Date(1,1,1),new Date(1,1,1));
		if(last!=null) {
			model.addAttribute("last",last );
		}else {
			model.addAttribute("last",test);
		}
		model.addAttribute("list", list);
		return "billing";
	}

	@GetMapping("/security")
	public String security(Model model) {
		return "security";
	}

	@PostMapping("/changePw")
	public String changePassword(@RequestParam("cPw") String currentPassword, @RequestParam("nPw") String newPassword,
			@RequestParam("cnPw") String confirmNewPassword, HttpSession session, Model model) {
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

	@PostMapping("/noti")
	public String noti(@RequestParam(value = "select_noti") String[] check, HttpSession session, Model model) {
		String[] check_num = { "0", "0" };
		String checknoti = "";
		for (String str : check) {
			if (str.equals("email")) {
				check_num[0] = "1";
			}
			if (str.equals("web")) {
				check_num[1] = "1";
			}
		}
		for (String str : check_num) {
			checknoti += str;
		}
		TestMember user = (TestMember) session.getAttribute("user");
		if (service.updateSelect_noti(user.getId(), checknoti) > 0) {
			user.setSelect_noti(checknoti);
			model.addAttribute("alertMessage", "설정이 저장되었습니다."); // 알림 메시지를 모델에 추가
			return "notifications";
		} else {
			model.addAttribute("alertMessage", "설정이 실패했습니다."); // 알림 메시지를 모델에 추가
			return "notifications";
		}
	}

	@PostMapping("/changeEmail")
	public String changePassword(@RequestParam("cEmail") String email, HttpSession session, Model model) {
		// 세션에서 사용자 정보 가져오기
		TestMember user = (TestMember) session.getAttribute("user");

		// 현재 email와 사용자의 저장된 email 비교
		if (user.getEmail().equals(email)) {
			model.addAttribute("alertMessage", "같은 이메일로 변경할 수 없습니다.");
			return "notifications";
		}

		// 비밀번호 변경 로직 실행
		if (service.changeEmail(user.getId(), email) > 0) {
			user.setEmail(email);
			model.addAttribute("alertMessage", "이메일이 성공적으로 변경되었습니다.");
			return "notifications";
		} else {
			model.addAttribute("alertMessage", "이메일 변경을 실패하였습니다.");
			return "notifications";
		}
	}

	@PostMapping("/noti_email")
	public String noti_email(@RequestParam(value = "email_noti") String[] check, HttpSession session, Model model) {
		String[] check_num = { "1", "0", "0", "0" };
		String checknoti = "";
		for (String str : check) {
			if (str.equals("op1")) {
				check_num[0] = "1";
			}
			if (str.equals("op2")) {
				check_num[1] = "1";
			}
			if (str.equals("op3")) {
				check_num[2] = "1";
			}
			if (str.equals("op4")) {
				check_num[3] = "1";
			}
		}
		for (String str : check_num) {
			checknoti += str;
		}
		TestMember user = (TestMember) session.getAttribute("user");
		if (service.updateEmail_noti(user.getId(), checknoti) > 0) {
			user.setEmail_noti(checknoti);
			model.addAttribute("alertMessage", "설정이 저장되었습니다."); // 알림 메시지를 모델에 추가
			return "notifications";
		} else {
			model.addAttribute("alertMessage", "설정이 실패했습니다."); // 알림 메시지를 모델에 추가
			return "notifications";
		}
	}

	@PostMapping("/noti_web")
	public String noti_web(@RequestParam(value = "web_noti") String[] check, HttpSession session, Model model) {
		String[] check_num = { "1", "0", "0", "0" };
		String checknoti = "";
		for (String str : check) {
			if (str.equals("op1")) {
				check_num[0] = "1";
			}
			if (str.equals("op2")) {
				check_num[1] = "1";
			}
			if (str.equals("op3")) {
				check_num[2] = "1";
			}
			if (str.equals("op4")) {
				check_num[3] = "1";
			}
		}
		for (String str : check_num) {
			checknoti += str;
		}
		TestMember user = (TestMember) session.getAttribute("user");
		if (service.updateWeb_noti(user.getId(), checknoti) > 0) {
			user.setWeb_noti(checknoti);
			model.addAttribute("alertMessage", "설정이 저장되었습니다."); // 알림 메시지를 모델에 추가
			return "notifications";
		} else {
			model.addAttribute("alertMessage", "설정이 실패했습니다."); // 알림 메시지를 모델에 추가
			return "notifications";
		}
	}

	@GetMapping("/pricing")
	public String pricing(Model model) {
		return "pricing";
	}

	@PostMapping("/pay_success")
	public String pay_success(@RequestParam(value = "paymentData") String[] data) {
        // 받은 값들을 활용하여 원하는 로직을 수행하고 결과를 반환하거나 다른 처리를 수행할 수 있습니다.
        // 예시: 받은 값들을 로그로 출력
        System.out.println("user_num: " + data[0]);
        System.out.println("product: " + data[1]);
        System.out.println("price: " + data[2]);
        service.addPayment(data);
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
		TestMember user = service.login(m);

		if (user != null) {
			session.setAttribute("user", user);

			int usingIot = service.iotNum(user.getUser_num());
			int usingSensor = service.sensorNum(user.getUser_num());
			IoT_Sensor max;
			if (user.getPclass().equals("Free")) {
				max = new IoT_Sensor(3, 9, usingIot, usingSensor);
			} else if (user.getPclass().equals("Paid")) {
				max = new IoT_Sensor(10, 30, usingIot, usingSensor);
			} else {
				max = new IoT_Sensor(30, 150, usingIot, usingSensor);
			}
			session.setAttribute("max", max);

			System.out.println(user.getUser_num());

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

	@GetMapping("/mydata")
	public String mydata(HttpSession session, Model model, @ModelAttribute TestMember m) {
		TestMember user = (TestMember) session.getAttribute("user");

		List<Useriot_Info> list = service.user_iot(user.getUser_num());
		
		model.addAttribute("iotList", list);
		return "mydata";
	}

	@PostMapping("mydata/iotadd")
	public String iotadd(HttpSession session, @RequestParam("iotName") String iotName) {
		TestMember user = (TestMember) session.getAttribute("user");
		int cnt = service.iotadd(iotName, user.getUser_num());
		if (cnt > 0) {
			return "redirect:/mydata";
		} else {
			return "fail";
		}
	}

	@GetMapping("/pwfind2")
	public String pwfind2() {
		return "pwfind2";
	}

	@GetMapping("/pwfind3")
	public String pwfind3() {
		return "pwfind3";
	}

	@GetMapping("mydata/sensoradd/{idx}")
	public String sensoradd(HttpSession session, @RequestParam("sensorName") String sensorName,
			@RequestParam("sensorType") int sensorType, @PathVariable String idx) {
		TestMember user = (TestMember) session.getAttribute("user");
		
		int cnt = service.sensoradd(idx,sensorName, user.getUser_num(), sensorType);
		if (cnt > 0) {
			System.out.println(sensorName);
			return "redirect:/mydata";
		} else {
			System.out.println(sensorName+"fail");
			return "redirect:/mydata";
		}
	}

}