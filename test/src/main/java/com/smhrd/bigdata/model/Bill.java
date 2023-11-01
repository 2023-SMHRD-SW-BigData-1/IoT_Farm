package com.smhrd.bigdata.model;



import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Bill {
 private String deal_num;
 private String user_num;
 private String product;
 private String price;
 private Date start_date;
 private Date end_date;
}
