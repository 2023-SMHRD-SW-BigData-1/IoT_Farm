package com.smhrd.bigdata.model;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class TestMember {
	private int user_num;
	private String id;
	private String pw;
	private String name;
	private String pclass;
	private Date joindate;
	private String email;
	private String p_img;
	private String select_noti;
	private String email_noti;
	private String web_noti;
	
	public TestMember(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	

}
