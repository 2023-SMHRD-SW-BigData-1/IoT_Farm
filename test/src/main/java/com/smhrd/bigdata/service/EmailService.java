package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.bigdata.mapper.TestMapper;
import com.smhrd.bigdata.model.TestMember;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

@Service
public class EmailService {

   @Autowired
   private JavaMailSender emailSender;
   
   @Autowired
   private TestMapper mapper;
   
   public String makeRandomNumber() {
	   // 난수의 범위 111111 ~ 999999 (6자리 난수)
	   Random r = new Random();
	   int checkNum = r.nextInt(888888) + 111111;
	return String.valueOf(checkNum);
   }
   
   public String joinEmail(String email) {
	    String checkNum = makeRandomNumber(); // makeRandomNumber()의 반환 값을 변수에 저장
	    String setFrom = "aofarmad@gmail.com"; // email-config에 설정한 자신의 이메일 주소를 입력 
	    String toMail = email;
	    String title = "회원 가입 인증 이메일 입니다."; // 이메일 제목 
	    String content = 
	            "홈페이지를 방문해주셔서 감사합니다." +  
	            "<br><br>" + 
	            "인증 번호는 " + checkNum + "입니다." + 
	            "<br>" + 
	            "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
	    mailSend(setFrom, toMail, title, content);
	    return checkNum; // 반환 값 변경
	}
   
   public String pwfEmail(String email) {
	   String checkNum = makeRandomNumber(); // makeRandomNumber()의 반환 값을 변수에 저장
	    String setFrom = "aofarmad@gmail.com"; // email-config에 설정한 자신의 이메일 주소를 입력 
	    String toMail = email;
	    String title = "비밀번호 찾기 이메일 입니다."; // 이메일 제목 
	    String content = 
	            "인증 번호는 " + checkNum + "입니다." + 
	            "<br>" + 
	            "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
	    mailSend(setFrom, toMail, title, content);
	    return checkNum;
   }
   
   public void sendQnaEmail(String qnaTitle, String qnaContent, String email) {

       String setFrom = "aofarmad@gmail.com"; // 발신자 이메일 주소
       String toMail = "aofarmad@gmail.com"; // 관리자 이메일 주소
       String title = "새로운 문의사항이 등록되었습니다"; // 이메일 제목
       String content = "문의 회원 : "+ email + "<br>" + "문의 제목 : " + qnaTitle + "<br>" + "문의 내용: " + qnaContent ; // 이메일 내용

       mailSend(setFrom, toMail, title, content);
   }
   
   
	public void mailSend(String setFrom, String toMail, String title, String content) { 
		MimeMessage message = emailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content,true);
			emailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
    public boolean updatePasswordByEmail(String email, String newPassword) {
        // 여기에 비밀번호 업데이트 로직을 작성합니다.
        // 예를 들어, DB 업데이트 등의 작업을 수행하고, 성공 시 true를 반환하고 실패 시 false를 반환합니다.
        // 업데이트에 성공하면 true를 반환하고, 실패하면 false를 반환합니다.
        try {
            mapper.updatePasswordByEmail(email, newPassword);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        
    }
}