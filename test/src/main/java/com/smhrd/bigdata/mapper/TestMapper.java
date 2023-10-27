package com.smhrd.bigdata.mapper;

import org.apache.ibatis.annotations.Delete;
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

	@Update("update user_info set name=#{name} where id=#{id}")
	public int updateName(String id, String name);

	@Update("update user_info set pw=#{newPassword} where id=#{id}")
	public int updatePw(String id, String newPassword);

	@Delete("delete from user_info where id=#{id}")
	public void delete(String id);

	@Update("update user_info set email=#{email} where id=#{id}")
	public int updateEmail(String id, String email);
}
