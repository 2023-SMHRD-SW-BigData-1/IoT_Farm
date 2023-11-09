package com.smhrd.bigdata.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smhrd.bigdata.model.Dashboard_Chart;
import com.smhrd.bigdata.model.Dashboard_Info;
import com.smhrd.bigdata.model.IoT_Sensor;
import com.smhrd.bigdata.model.Iotsensor_Info;
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
	
	
	
	
	@GetMapping("mydata/{dashboardNum}")
	@ResponseBody
	public Map<String, Object> sensorData(@PathVariable int dashboardNum, Model model) {
	    Map<String, Object> response = new HashMap<>();

	    List<Sensor_Re> sensorNumList = service.select_sensorNum(dashboardNum);
	    List<Dashboard_Chart> chartTypeList = service.select_chartType(dashboardNum);
	    List<List<Sensor_Re>> reselect = new ArrayList<>();
	    List<Dashboard_Info> dashboardInfo = service.select_dashboardInfo(dashboardNum);
	    
	    
	    for (Sensor_Re element : sensorNumList) {
	        reselect.add(service.sensor_re(element.getSensor_num()));
	    }
	    
	    response.put("dashboardInfo",dashboardInfo);
	    response.put("reselect", reselect);
	    response.put("chartTypeList", chartTypeList);
	    
	    
	    System.out.println(reselect);
	    System.out.println(chartTypeList);
	    System.out.println(dashboardInfo);

	    return response;
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
			break;
		}
		int cnt = service.iotadd(user.getUser_num(),iotName,api);

		if (cnt > 0) {
			max.setMyIot(max.getMyIot() + 1);
			session.setAttribute("max", max);
			return api;
		} else {
			return "fail";
		}
	}
	
	@GetMapping("mydata/dashboard_delete/{dashboardNum}")
	public void delete_dashboard(@PathVariable("dashboardNum") int dashboardNum) {
		service.delete_dashboard(dashboardNum);
	}

	@GetMapping("mydata/sensor_delete/{sensorNum}")
	public void delete_sensor(@PathVariable("sensorNum") int sensorNum, HttpSession session) {
		IoT_Sensor max = (IoT_Sensor) session.getAttribute("max");
		max.setMySensor(max.getMySensor() - 1);
		session.setAttribute("max", max);
		
		service.delete_sensor(sensorNum);
	}
	
	@GetMapping("mydata/iot_delete/{iotNum}")
	public void delete_iot(@PathVariable("iotNum") int iotNum, HttpSession session) {
		IoT_Sensor max = (IoT_Sensor) session.getAttribute("max");
		max.setMyIot(max.getMyIot() - 1);
		session.setAttribute("max", max);
		
		service.delete_iot(iotNum);
	}
	
	@GetMapping("mydata/sensor/{sensorNum}")
	public List<Sensor_Re> sensorContent(@PathVariable("sensorNum") int sensorNum){
		return service.sensorContent(sensorNum);
	}
	
}
