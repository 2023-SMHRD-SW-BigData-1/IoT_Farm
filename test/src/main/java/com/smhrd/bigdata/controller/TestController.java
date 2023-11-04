package com.smhrd.bigdata.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.bigdata.model.Bill;
import com.smhrd.bigdata.model.Dashboard_Info;
import com.smhrd.bigdata.model.IoT_Sensor;
import com.smhrd.bigdata.model.Iotsensor_Info;
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

	@PostMapping("/submitQna")
	public String submitQna(Model model, @RequestParam("qnaTitle") String qnaTitle,
			@RequestParam("qnaContent") String qnaContent, HttpSession session) {
		TestMember user = (TestMember) session.getAttribute("user");
		emailservice.sendQnaEmail(qnaTitle, qnaContent, user.getEmail());
		model.addAttribute("alertMessage", "문의사항이 정상적으로 등록되었습니다");
		return "question";
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
		Bill last = service.last_payment(user.getUser_num());
		Bill test = new Bill("null", " ", " ", " ", new Date(1, 1, 1), new Date(1, 1, 1));
		if (last != null) {
			model.addAttribute("last", last);
		} else {
			model.addAttribute("last", test);
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
			
			if (!user.getPclass().equals("Free")) {
				if (user.getSelect_noti().equals("1")) {
					if (user.getEmail_noti().charAt(0)=='1') {
						emailservice.mailSend("aofarmad@gmail.com", user.getEmail(), "아오팜 개인정보 변경 알림",
								"비밀번호가 변경되었음을 알립니다.");
					}
				}
			}
			
			return "security";
		} else {
			model.addAttribute("alertMessage", "비밀번호 변경을 실패하였습니다.");
			return "security";
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
			
			if (!user.getPclass().equals("Free")) {
				if (user.getSelect_noti().equals("1")) {
					if (user.getEmail_noti().charAt(0)=='1') {
						emailservice.mailSend("aofarmad@gmail.com", user.getEmail(), "아오팜 개인정보 변경 알림",
								"이메일이 변경되었음을 알립니다.");
					}
				}
			}
			
			return "notifications";
		} else {
			model.addAttribute("alertMessage", "이메일 변경을 실패하였습니다.");
			return "notifications";
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
	public String noti(@RequestParam(value = "select_noti", defaultValue = "0") String check, HttpSession session,
			Model model) {
		String checknoti = "0";
		if (check.equals("email")) {
			checknoti = "1";
		}
		TestMember user = (TestMember) session.getAttribute("user");
		service.updateSelect_noti(user.getId(), checknoti);
		user.setSelect_noti(checknoti);
		model.addAttribute("alertMessage", "설정이 저장되었습니다."); // 알림 메시지를 모델에 추가
		return "notifications";
	}

	@PostMapping("/noti_email")
	public String noti_email(@RequestParam(value = "email_noti") String[] check, HttpSession session, Model model) {
		String[] check_num = { "1", "0", "0" };
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

	@GetMapping("/pricing")
	public String pricing(Model model, HttpSession session) {
		return "pricing";
	}

	@PostMapping("/pay_success")
	public String pay_success(@RequestParam(value = "paymentData") String[] data, HttpSession session) {
		// 받은 값들을 활용하여 원하는 로직을 수행하고 결과를 반환하거나 다른 처리를 수행할 수 있습니다.
		// 예시: 받은 값들을 로그로 출력
		TestMember user = (TestMember) session.getAttribute("user");

		// 환불요청
		if (user.getPclass().equals("Paid")) {
			Bill last = service.last_payment(user.getUser_num());
			emailservice.mailSend("aofarmad@gmail.com", user.getEmail(), "업그레이드로 인한 환불요청",
					last.getDeal_num() + "확인 요청");
		}

		service.addPayment(data);
		service.setPclass(data[0], data[1]);

		user.setPclass(data[1]);
		session.setAttribute("user", user);
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
			if (user.getPclass().equals("Admin")) {
				return "admin/user_mng";
			}
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

	@GetMapping("/mydata")
	public String mydata(HttpSession session, Model model, @ModelAttribute TestMember m) {
		TestMember user = (TestMember) session.getAttribute("user");

		List<Dashboard_Info> dashboardList = service.dashboard(user.getUser_num());
		service.dashboard(user.getUser_num());

	      List<Iotsensor_Info> snList = service.sensorSelect(user.getUser_num());

	      List<Useriot_Info> list = service.user_iot(user.getUser_num());

	      List<List<Iotsensor_Info>> sensorList = new ArrayList<>();

		for (Useriot_Info element : list) {
			sensorList.add(service.Iotsensor(element.getIot_num()));
		}
		model.addAttribute("dashboardList", dashboardList);

		model.addAttribute("iotList", list);

		model.addAttribute("sensorList", sensorList);

		model.addAttribute("snList", snList);
		return "mydata";

		/*
		 * List<List<String>> outerList = new ArrayList<>();
		 * 
		 * List<String> innerList1 = new ArrayList<>();
		 * innerList1.add("Inner List 1 - Element 1");
		 * innerList1.add("Inner List 1 - Element 2"); outerList.add(innerList1);
		 */
	}

	@GetMapping("/pwfind")
	public String pwfind() {
		return "pwfind";
	}

	@GetMapping("/pwfind2")
	public String pwfind2(HttpSession session) {
		return "pwfind2";
	}

	@GetMapping("/pwfind3")
	public String pwfind3() {
		return "pwfind3";
	}

	@PostMapping("/updatePassword")
	@ResponseBody
	public String updatePassword(@RequestParam String email, @RequestParam String newPassword) {
		// 이메일과 새 비밀번호를 받아서 업데이트 로직을 작성합니다.
		boolean success = emailservice.updatePasswordByEmail(email, newPassword);
		if (success) {
			return "success";
		} else {
			return "error";
		}
	}

	@GetMapping("/redirect-pwfind2")
	public String redirectToPwfind2() {
		return "redirect:/bigdata/pwfind2";
	}

	@GetMapping("mydata/sensoradd/{idx}")
	public String sensoradd(HttpSession session, @RequestParam("sensorName") String sensorName,
			@RequestParam("sensorType") int sensorType, @PathVariable String idx) {
		TestMember user = (TestMember) session.getAttribute("user");

		int cnt = service.sensoradd(idx, sensorName, user.getUser_num(), sensorType);
		if (cnt > 0) {
			// service.sensoradd(idx, sensorName, user.getUser_num(), sensorType);
			return "redirect:/mydata";
		} else {
			return "redirect:/mydata";
		}
	}


	@PostMapping("mydata/iotadd")
	public String iotadd(HttpSession session, @RequestParam("iotName") String iotName) {
		TestMember user = (TestMember) session.getAttribute("user");
		IoT_Sensor max=(IoT_Sensor)session.getAttribute("max");
		int cnt = service.iotadd(iotName, user.getUser_num());
		if (cnt > 0) {
			
			int x=max.getMyIot()+1;
			max.setMyIot(x);
			session.setAttribute("max", max);
			
			return "redirect:/mydata";
		} else {
			return "fail";
		}
	}
	@PostMapping("mydata/chartadd")
	public String chartadd(HttpSession session, @RequestParam("chartName") String chartName,
			@RequestParam("chartType") String chartType, @RequestParam("sensorNum") String sensorNum) {
		TestMember user = (TestMember) session.getAttribute("user");
		
		String[] sensorNumList = sensorNum.split(","); 
		String[] chartTypeList = chartType.split(","); 
		String [] chartNameList = chartName.split(",");
		for(int i = 0; i<chartNameList.length; i++) {
			String dashboardNum = (String) session.getAttribute("dashboardNum");
			
			System.out.println(chartNameList[i]);
			System.out.println(chartTypeList[i]);
			System.out.println(sensorNumList[i]);
			service.chartadd(dashboardNum, chartNameList[i], chartTypeList[i], sensorNumList[i]);
		}
		
		return "redirect:/mydata";
		
	}

	@GetMapping("/user_mng")
	public String user_mng() {
		return "admin/user_mng";
	}
	
	@GetMapping("/update_send")
	public String update_send() {
		return "admin/update_send";
	}
}