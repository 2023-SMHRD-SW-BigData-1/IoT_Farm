package com.smhrd.bigdata.model;

import java.util.Date;

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
	
	public TestMember(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

}
