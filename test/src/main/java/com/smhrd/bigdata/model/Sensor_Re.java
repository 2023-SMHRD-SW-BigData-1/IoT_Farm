package com.smhrd.bigdata.model;

import java.security.Timestamp;
import java.sql.Time;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Sensor_Re {
	private int sensor_re_num;
	private int iot_num;
	private int sensor_num;
	private String sensor_value;
	private Timestamp re_date;
	private Time re_time;
}
