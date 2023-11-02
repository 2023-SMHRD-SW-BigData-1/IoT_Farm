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
   
   public String makeRandomNumber() {
	   // 난수의 범위 111111 ~ 999999 (6자리 난수)
	   Random r = new Random();
	   int checkNum = r.nextInt(888888) + 111111;
	return String.valueOf(checkNum);
   }
   
   public void sendSimpleMessage(String to, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        emailSender.send(message);
        System.out.println(2);
    }
   
}