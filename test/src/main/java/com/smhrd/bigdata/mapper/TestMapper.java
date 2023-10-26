package com.smhrd.bigdata.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.smhrd.bigdata.model.TestMember;

@Mapper
public interface TestMapper {

	//회원가입
    public void join(TestMember m);
	
	//로그인
	public TestMember login(TestMember m);
	
	//id 중복체크
	@Select("select count(*) from user_info where id=#{id}")
	public int idCheck(String id);

	@Update("update user_info set p_img=#{img} where id=#{id}")
	public int updateImg(String id, String img);
}
