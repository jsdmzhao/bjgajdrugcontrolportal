package com.unis.core.util;

import javax.servlet.http.*;
import javax.servlet.*;
import java.util.*;

public class OnLineUser implements HttpSessionBindingListener {
	public OnLineUser() {
	}

	private Vector users = new Vector();

	public int getCount() {
		users.trimToSize();
		return users.capacity();
	}

	public boolean existUser(String userName) {
		users.trimToSize();
		boolean existUser = false;
		for (int i = 0; i < users.capacity(); i++) {
			if (userName.equals((String) users.get(i))) {
				existUser = true;
				break;
			}
		}
		return existUser;
	}

	public boolean deleteUser(String userName) {
		users.trimToSize();
		if (existUser(userName)) {
			int currUserIndex = -1;
			for (int i = 0; i < users.capacity(); i++) {
				if (userName.equals((String) users.get(i))) {
					currUserIndex = i;
					break;
				}
			}
			if (currUserIndex != -1) {
				users.remove(currUserIndex);
				users.trimToSize();
				return true;
			}
		}
		return false;
	}

	public Vector getOnLineUser() {
		return users;
	}

	public void valueBound(HttpSessionBindingEvent e) {
		users.trimToSize();
		if (!existUser(e.getName())) {
			users.add(e.getName());
			System.out.print(e.getName() + "\t  登入到系统\t" + (new Date()));
			System.out.println("     在线用户数为：" + getCount());
		} else
			System.out.println(e.getName() + "已经存在");
	}

	public void valueUnbound(HttpSessionBindingEvent e) {
		users.trimToSize();
		String userName = e.getName();
		deleteUser(userName);
		System.out.print(userName + "\t  退出系统\t" + (new Date()));
		System.out.println("     在线用户数为：" + getCount());
	}
}
