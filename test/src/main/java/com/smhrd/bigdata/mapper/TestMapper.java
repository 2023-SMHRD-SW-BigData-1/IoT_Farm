package com.smhrd.bigdata.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.bigdata.model.TestMember;

@Mapper
public interface TestMapper {

	//회원가입
	public int join(TestMember m);
	
	//로그인
	public TestMember login(TestMember m);
	
	//이메일 중복체크
	@Select("select count(*) from user_info where id=#{id}")
	public int idCheck(String id);
}
