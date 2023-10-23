package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smhrd.bigdata.mapper.TestMapper;
import com.smhrd.bigdata.model.TestMember;

@Service
public class TestService {
	
	@Autowired
	private TestMapper mapper;
	
	@Transactional
	public void join(TestMember m) {
		mapper.join(m);
	}

	
}
