package com.smhrd.bigdata.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.smhrd.bigdata.model.Bill;
import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.service.EmailService;
import com.smhrd.bigdata.service.TestService;

@Component
public class EventScheduler {

	@Autowired
	TestService service;

	@Autowired
	EmailService emailservice;

	@Scheduled(cron = "0 0 9 * * ?") // 매일 오전 9시에 실행
	public void handleEvent() {
		LocalDate currentDate = LocalDate.now();
		List<String> list = service.classUpUserList(currentDate);
		for (String userNum : list) {
			TestMember user = service.userInfo(userNum);
			if (!user.getPclass().equals("Free")) {
				if (user.getSelect_noti().equals("1")) {
					if (user.getEmail_noti().charAt(1)=='1') {
						emailservice.mailSend("kimhasin@gmail.com", user.getEmail(), "결제일 알림",
								user.getPclass() + "버전의 사용기간이 끝났습니다.");
					}
				}
			}
			service.setPclass(userNum, "Free");

		}
	}
}
