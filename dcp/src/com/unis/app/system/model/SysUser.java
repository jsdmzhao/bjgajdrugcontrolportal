package com.unis.app.system.model;

public class SysUser  {

	private  Long userId;

	private  String userName;

	private  String userPassword;

	private  String userLock;

	public Long getUserId(){
		return userId;
	} 

	public void setUserId(Long userId){
		this.userId = userId;
	} 

	public String getUserName(){
		return userName;
	} 

	public void setUserName(String userName){
		this.userName = userName;
	} 

	public String getUserPassword(){
		return userPassword;
	} 

	public void setUserPassword(String userPassword){
		this.userPassword = userPassword;
	} 

	public String getUserLock(){
		return userLock;
	} 

	public void setUserLock(String userLock){
		this.userLock = userLock;
	} 

}