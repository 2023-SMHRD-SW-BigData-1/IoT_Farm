package com.smhrd.bigdata.service;

import java.time.LocalDate;
import java.util.List;

import org.apache.catalina.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smhrd.bigdata.mapper.TestMapper;
import com.smhrd.bigdata.model.Bill;
import com.smhrd.bigdata.model.Dashboard_Chart;
import com.smhrd.bigdata.model.Dashboard_Info;
import com.smhrd.bigdata.model.Iotsensor_Info;
import com.smhrd.bigdata.model.Sensor_Re;
import com.smhrd.bigdata.model.TestMember;
import com.smhrd.bigdata.model.Useriot_Info;

@Service
public class TestService {

	@Autowired
	private TestMapper mapper;

	@Transactional
	public void join(TestMember m) {
		mapper.join(m);
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

	public int dashboardadd(String dashboardName, int user_num) {
		return mapper.dashboardadd(dashboardName, user_num);
	}

	public int changeEmail(String id, String email) {
		return mapper.updateEmail(id, email);
	}

	public void updateSelect_noti(String id, String select_noti) {
		mapper.updateSelect_noti(id, select_noti);
	}

	public int updateEmail_noti(String id, String checknoti) {
		// TODO Auto-generated method stub
		return mapper.updateEmail_noti(id, checknoti);
	}

	public int sensorNum(int user_num) {
		// TODO Auto-generated method stub
		return mapper.sensorNum(user_num);
	}

	public int sensoradd(String iot_num, String sensorName, int user_num, int sensorType) {
		System.out.println("서비스 진입");
		return mapper.sensoradd(iot_num, sensorName, user_num, sensorType);
	}

	public int chartadd(String dashboard_num, String chartTypeList, String chartNameList, String sensorNumList) {
		return mapper.chartadd(dashboard_num, chartTypeList, chartNameList, sensorNumList);
	}

	public int changePw(String id, String newPassword) {
		// TODO Auto-generated method stub
		return mapper.updatePw(id, newPassword);
	}

	public void delete(String id) {
		mapper.delete(id);
	}

	public List<Useriot_Info> user_iot(int user_num) {
		return mapper.user_iot(user_num);
	}

	public List<Iotsensor_Info> Iotsensor(int iot_num) {
		return mapper.Iotsensor(iot_num);
	}

	public List<Iotsensor_Info> sensorSelect(int user_num) {
		return mapper.sensorSelect(user_num);
	}

	public List<Dashboard_Info> dashboard(int user_num) {
		return mapper.dashboard(user_num);
	}

	public int iotNum(int user_num) {
		// TODO Auto-generated method stub
		return mapper.iotNum(user_num);
	}

	public List<Bill> billList(int i) {
		// TODO Auto-generated method stub
		return mapper.billList(i);
	}

	public void addPayment(String[] data) {
		mapper.addPayment(data);

	}

	public Bill last_payment(int user_num) {
		// TODO Auto-generated method stub
		return mapper.last_payment(user_num);
	}

	public String dashboardNum(String dbName) {
		// TODO Auto-generated method stub
		return mapper.dashboardNum(dbName);
	}

	public void setPclass(String user_num, String product) {
		mapper.setPclass(user_num, product);

	}

	public List<String> classUpUserList(LocalDate currentDate) {
		return mapper.classUpUserList(currentDate);
	}

	public TestMember userInfo(String userNum) {
		// TODO Auto-generated method stub
		return mapper.userInfo(userNum);
	}

	public List<Sensor_Re> sensor_re(int sensor_num) {
		return mapper.sensor_re(sensor_num);
	}

	public List<TestMember> userAll() {
		// TODO Auto-generated method stub
		return mapper.userAll();
	}

	public String apiSearch(String api) {
		// TODO Auto-generated method stub
		return mapper.apiSearch(api);
	}

	public int iotadd(int user_num, String iotName, String api) {
		return mapper.iotadd(user_num,iotName, api);
	}
	
	public List<Sensor_Re> select_sensorNum(int dashboardNum) {
		return mapper.select_sensorNum(dashboardNum);
	}

	public List<Dashboard_Chart> select_chartType(int dashboardNum) {
		// TODO Auto-generated method stub
		return mapper.select_chartType(dashboardNum);
	}

	public List<Dashboard_Info> select_dashboardInfo(int dashboardNum) {
		// TODO Auto-generated method stub
		return mapper.select_dashboardInfo(dashboardNum);
	}

	public void delete_dashboard(int dashboardNum) {
		// TODO Auto-generated method stub
		mapper.delete_dashboard(dashboardNum);
		
	}

}
