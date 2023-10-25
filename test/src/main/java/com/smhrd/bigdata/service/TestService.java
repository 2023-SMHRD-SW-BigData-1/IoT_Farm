package com.smhrd.bigdata.service;

import org.apache.catalina.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.bigdata.mapper.TestMapper;
import com.smhrd.bigdata.model.TestMember;

@Service
public class TestService {
		
	@Autowired
	private TestMapper mapper;
	
	@Autowired
	private EmailService emails;

	@Transactional
	public void join(TestMember m) {
		mapper.join(m);
		String email = m.getEmail();
		String subject = "회원 가입 완료";
		String text = "회원 가입 완료";
		System.out.println(1);
		emails.sendSimpleMessage(email, subject, text);
	}

	public TestMember login(TestMember m) {
		return mapper.login(m);		
	}
	public int idCheck(String id) {
	    return mapper.idCheck(id);
	}
	
	
}
	
