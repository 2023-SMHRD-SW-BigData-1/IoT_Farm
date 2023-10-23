package com.smhrd.bigdata.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class TestMember {
	
	private String id;
	private String pw;
	private String name;
	private String email;
	
	public TestMember(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

}
