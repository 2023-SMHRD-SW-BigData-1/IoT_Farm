package com.smhrd.bigdata.service;

import java.util.List;

import org.apache.catalina.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smhrd.bigdata.mapper.TestMapper;
import com.smhrd.bigdata.model.Bill;
import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.model.Useriot_Info;

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

	public int updateImg(String id, String img) {
		// TODO Auto-generated method stub
		return mapper.updateImg(id, img);
	}

	public int updateName(String id, String name) {
		return mapper.updateName(id, name);
	}

	public int changePw(String id, String newPassword) {
		// TODO Auto-generated method stub
		return mapper.updatePw(id, newPassword);
	}

	public void delete(String id) {
		mapper.delete(id);
	}

	public int iotadd(String iotName, int user_num) {
		return mapper.iotadd(iotName, user_num);
	}

	public List<Useriot_Info> user_iot(int user_num) {
		return mapper.user_iot(user_num);
	}

	public int changeEmail(String id, String email) {
		return mapper.updateEmail(id, email);
	}

	public int updateSelect_noti(String id, String select_noti) {
		// TODO Auto-generated method stub
		return mapper.updateSelect_noti(id, select_noti);
	}

	public int updateEmail_noti(String id, String checknoti) {
		// TODO Auto-generated method stub
		return mapper.updateEmail_noti(id, checknoti);
	}

	public int updateWeb_noti(String id, String checknoti) {
		// TODO Auto-generated method stub
		return mapper.updateWeb_noti(id, checknoti);
	}

	public int iotNum(int user_num) {
		// TODO Auto-generated method stub
		return mapper.iotNum(user_num);
	}

	public int sensorNum(int user_num) {
		// TODO Auto-generated method stub
		return mapper.sensorNum(user_num);
	}

	public List<Bill> billList(int i) {
		// TODO Auto-generated method stub
		return mapper.billList(i);
	}
	public int sensoradd(String iot_num, String sensorName, int user_num, int sensorType) {
		System.out.println("서비스 진입");
		return mapper.sensoradd(iot_num, sensorName, user_num, sensorType);
	}
}
public Bill last_payment(int user_num) {
	// TODO Auto-generated method stub
	return mapper.last_payment(user_num);
}
}
