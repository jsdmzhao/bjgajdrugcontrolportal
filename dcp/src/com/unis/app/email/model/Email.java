package com.unis.app.email.model;

public class Email {

	private String n_xh;
	
	private String c_bt;
	
	private String c_yhid;
	
	private String c_yhzid;
	
	private String c_nr;

	private String d_dj;
	
	private String c_ip;
	
	private String c_sfsc;
	
	private String c_sfbc;
	
	private String c_zt;  //1或者空为默认、发送，2是保存草稿箱，0是放入垃圾箱, recieve中的默认是1，2是已签收，0是放入垃圾箱
	
	private String c_fj;
	
	private String c_jsr;
	
	private String c_csr;
	
	private String c_msr;
	
	private String c_jsr_;
	
	private String c_csr_;
	
	private String c_msr_;
	
	private String c_lx;  //1为普通发送，2为抄送，3为秘密发送

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

	public String getC_zt() {
		return c_zt;
	}

	public void setC_zt(String c_zt) {
		this.c_zt = c_zt;
	}

	public String getC_fj() {
		return c_fj;
	}

	public void setC_fj(String c_fj) {
		this.c_fj = c_fj;
	}

	public String getC_jsr() {
		return c_jsr;
	}

	public void setC_jsr(String c_jsr) {
		this.c_jsr = c_jsr;
	}

	public String getC_csr() {
		return c_csr;
	}

	public void setC_csr(String c_csr) {
		this.c_csr = c_csr;
	}

	public String getC_sfbc() {
		return c_sfbc;
	}

	public void setC_sfbc(String c_sfbc) {
		this.c_sfbc = c_sfbc;
	}

	public String getC_lx() {
		return c_lx;
	}

	public void setC_lx(String c_lx) {
		this.c_lx = c_lx;
	}

	public String getC_msr() {
		return c_msr;
	}

	public void setC_msr(String c_msr) {
		this.c_msr = c_msr;
	}

	public String getC_jsr_() {
		return c_jsr_;
	}

	public void setC_jsr_(String c_jsr_) {
		this.c_jsr_ = c_jsr_;
	}

	public String getC_csr_() {
		return c_csr_;
	}

	public void setC_csr_(String c_csr_) {
		this.c_csr_ = c_csr_;
	}

	public String getC_msr_() {
		return c_msr_;
	}

	public void setC_msr_(String c_msr_) {
		this.c_msr_ = c_msr_;
	}
}
