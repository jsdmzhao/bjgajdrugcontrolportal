package com.unis.app.message.model;

public class Message {

	private String n_xh;
	
	private String c_bt;
	
	private String c_yhid;
	
	private String c_yhzid;
	
	private String c_nr;

	private String d_dj;
	
	private String c_ip;
	
	private String c_sfsc;
	
	private String c_jsr;  
	
	private String c_zt; //  recieve中的默认是1，2是已签收，0是删除

	public String getN_xh() {
		return n_xh;
	}

	public void setN_xh(String nXh) {
		n_xh = nXh;
	}

	public String getC_bt() {
		return c_bt;
	}

	public void setC_bt(String cBt) {
		c_bt = cBt;
	}

	public String getC_yhid() {
		return c_yhid;
	}

	public void setC_yhid(String cYhid) {
		c_yhid = cYhid;
	}

	public String getC_yhzid() {
		return c_yhzid;
	}

	public void setC_yhzid(String cYhzid) {
		c_yhzid = cYhzid;
	}

	public String getC_nr() {
		return c_nr;
	}

	public void setC_nr(String cNr) {
		c_nr = cNr;
	}

	public String getD_dj() {
		return d_dj;
	}

	public void setD_dj(String dDj) {
		d_dj = dDj;
	}

	public String getC_ip() {
		return c_ip;
	}

	public void setC_ip(String c_ip) {
		this.c_ip = c_ip;
	}

	public String getC_sfsc() {
		return c_sfsc;
	}

	public void setC_sfsc(String c_sfsc) {
		this.c_sfsc = c_sfsc;
	}

	public String getC_jsr() {
		return c_jsr;
	}

	public void setC_jsr(String c_jsr) {
		this.c_jsr = c_jsr;
	}

	public String getC_zt() {
		return c_zt;
	}

	public void setC_zt(String c_zt) {
		this.c_zt = c_zt;
	}
}
