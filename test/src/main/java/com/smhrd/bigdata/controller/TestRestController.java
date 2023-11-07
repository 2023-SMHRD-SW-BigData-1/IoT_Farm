package com.smhrd.bigdata.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.bigdata.model.IoT_Sensor;
import com.smhrd.bigdata.model.Sensor_Re;
import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.EmailService;
import com.smhrd.bigdata.service.TestService;

@RestController
public class TestRestController {

	@Autowired
	private TestService service;

	@Autowired
	private EmailService emailservice;

	@GetMapping("join/idcheck")
	public @ResponseBody String idCheck(@RequestParam("input") String input) {
		int cnt = service.idCheck(input);

		if (cnt > 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	@GetMapping("join/emailSend")
	@ResponseBody
	public String mailCheck(String email) {
		return emailservice.joinEmail(email);

	}

	@GetMapping("/pwfemailSend")
	@ResponseBody
	public String pwfmailCheck(String email, HttpSession session) {
		String authCode = emailservice.pwfEmail(email); // emailservice에서 이메일을 보내고 인증번호를 받아온다.
		session.setAttribute("authCode", authCode); // 세션에 인증번호를 저장한다.
		return authCode; // 클라이언트에게 인증번호를 반환한다.
	}

	@GetMapping("updateImg")
	public String updateUser(HttpSession session, @RequestParam("img") String img) {
		TestMember user = (TestMember) session.getAttribute("user");
		user.setP_img(img);
		int cnt = service.updateImg(user.getId(), user.getP_img());
		if (cnt > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@PostMapping("mydata/dashboardadd1")
	public String dashboardadd1(HttpSession session, @RequestParam("dbName") String dbName) {
		TestMember user = (TestMember) session.getAttribute("user");
		int cnt = service.dashboardadd(dbName, user.getUser_num());
		session.setAttribute("dashboardNum", service.dashboardNum(dbName));
		if (cnt > 0) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	@PostMapping("mydata/iotadd")
	public String iotadd(HttpSession session, @RequestParam("iotName") String iotName) {
		TestMember user = (TestMember) session.getAttribute("user");
		IoT_Sensor max = (IoT_Sensor) session.getAttribute("max");
		String api;
		while(true) {
			api=emailservice.makeRandomNumber();
			if(service.apiSearch(api)!=null) {
				continue;
			}
			System.out.println("api:"+api);
			break;
		}
		int cnt = service.iotadd(user.getUser_num(),iotName,api);

		if (cnt > 0) {
			int x = max.getMyIot() + 1;
			System.out.println(max.getMyIot());
			System.out.println(max.getMaxIot());
			max.setMyIot(x);
			session.setAttribute("max", max);
			
			return api;
		} else {
			return "fail";
		}
	}
	

	@GetMapping("mydata/{idx}")
	@ResponseBody
	public List<Sensor_Re> sensor_re(@PathVariable int idx) {
	    List<Sensor_Re> reselect = service.sensor_re(idx);
	    return reselect;
	    
//	@GetMapping("mydata/{idx}")
//	@ResponseBody
//	public String sensor_re(@PathVariable int idx, Model model) {
//		List<Sensor_Re> reselect = service.sensor_re(idx);
//		System.out.println(reselect);
//		model.addAttribute("reselect", reselect);
//		return "success";
	}

}
