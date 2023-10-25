package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import java.util.Random;

@Service
public class EmailService {

	@Autowired
	private JavaMailSender emailSender;
	
	public void sendSimpleMessage(String to, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        emailSender.send(message);
        System.out.println(2);
    }
	
	@Service
	public class VerificationService {

	    public String generateVerificationCode() {
	        // 랜덤한 6자리 숫자를 생성합니다.
	        Random random = new Random();
	        int verificationCode = 100000 + random.nextInt(900000);
	        return String.valueOf(verificationCode);
	    }
	}
}
