package com.smhrd.bigdata.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Useriot_Info {
	private int iot_num;
	private int user_num;
	private String iot_name;
	private int api_key;
	
	
	public Useriot_Info(int iot_num){
		this.iot_num = iot_num;
	}
	
}
