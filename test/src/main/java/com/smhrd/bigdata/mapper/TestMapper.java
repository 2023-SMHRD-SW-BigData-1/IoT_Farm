package com.smhrd.bigdata.mapper;

import java.util.List;

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
	
	//iot 기기등록
	@Insert("insert into useriot_info (iot_name, user_num) VALUES (#{iot_name}, #{user_num})")
	public int iotadd(String iot_name, int user_num);
	
	@Select("select iot_name from useriot_info where user_num=#{user_num}")
	public List<String> user_iot(int user_num);

	
}
