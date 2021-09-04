package com.ecar.beans;

import java.sql.Date;

public class IssueCarBean {
	private String carName,carNo, customerid, customername;
	private long customermobile;
	private Date issueddate;
	private String returnstatus;

	public IssueCarBean() {
	}

	public IssueCarBean(String carName,String carNo, String customerid, String customername, long customermobile) {
		super();
		this.carName=carName;
		this.carNo = carNo;
		this.customerid = customerid;
		this.customername = customername;
		this.customermobile = customermobile;
	}

	
	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarNo() {
		return carNo;
	}

	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public long getCustomermobile() {
		return customermobile;
	}

	public void setCustomermobile(long customermobile) {
		this.customermobile = customermobile;
	}

	public Date getIssueddate() {
		return issueddate;
	}

	public void setIssueddate(Date issueddate) {
		this.issueddate = issueddate;
	}

	public String getReturnstatus() {
		return returnstatus;
	}

	public void setReturnstatus(String returnstatus) {
		this.returnstatus = returnstatus;
	}



}
