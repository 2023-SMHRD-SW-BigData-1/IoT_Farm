package com.smhrd.bigdata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.smhrd.bigdata.model.Bill;
import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.model.Useriot_Info;

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
	
	@Select("select * from useriot_info where user_num=#{user_num}")
	public List<Useriot_Info> user_iot(int user_num);


	@Update("update user_info set email=#{email} where id=#{id}")
	public int updateEmail(String id, String email);

	@Update("update user_info set select_noti=#{select_noti} where id=#{id}")
	public int updateSelect_noti(String id, String select_noti);

	@Update("update user_info set email_noti=#{checknoti} where id=#{id}")
	public int updateEmail_noti(String id, String checknoti);

	@Update("update user_info set web_noti=#{checknoti} where id=#{id}")
	public int updateWeb_noti(String id, String checknoti);

	@Select("select count(*) from useriot_info where user_num=#{user_num}")
	public int iotNum(int user_num);

	@Select("select count(*) from iotsensor_info where user_num=#{user_num}")
	public int sensorNum(int user_num);

	@Select("select * from deal where user_num=#{i}")
	public List<Bill> billList(int i);
	
	//sensor 등록
	@Insert("insert into iotsensor_info (iot_num,sensor_name, user_num, sensor_type) VALUES (#{iot_num} ,#{sensor_name}, #{user_num}, #{sensor_type})")
	public int sensoradd(String iot_num ,String sensor_name, int user_num, int sensor_type);
}
