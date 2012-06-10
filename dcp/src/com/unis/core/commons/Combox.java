package com.unis.core.commons;

public class Combox {

	private String text;
	
	private String value;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "{text:'" + text + "',value:'" + value + "'}";
	}
	
}
