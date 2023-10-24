package com.smhrd.bigdata.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smhrd.bigdata.mapper.TestMapper;
import com.smhrd.bigdata.model.TestMember;

@Service
public class TestService {
	
	private static final Logger logger = LoggerFactory.getLogger(TestService.class);
	
	@Autowired
	private TestMapper mapper;
	
	@Transactional
	public void join(TestMember m) {
	    try {
	        mapper.join(m);
	        logger.info("회원가입이 성공적으로 처리되었습니다.");
	    } catch (Exception e) {
	        logger.error("회원가입 중 오류 발생: " + e.getMessage(), e);
	    }
	}
}
	
