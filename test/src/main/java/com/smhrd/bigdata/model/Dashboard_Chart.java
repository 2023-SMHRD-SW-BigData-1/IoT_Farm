package com.smhrd.bigdata.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Dashboard_Chart {
		private int chart_num;
		private int dashboard_num;
		private String chart_type;
		private String chart_name;
		private int sensor_num;
}
