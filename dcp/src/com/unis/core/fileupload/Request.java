package com.unis.core.fileupload;

import java.util.Enumeration;
import java.util.Hashtable;

public class Request {
	private Hashtable m_parameters;
	private int m_counter;

	Request() {
		this.m_parameters = new Hashtable();
		this.m_counter = 0;
	}

	protected void putParameter(String s, String s1) {
		if (s == null)
			throw new IllegalArgumentException(
					"The name of an element cannot be null.");
		if (this.m_parameters.containsKey(s)) {
			Hashtable hashtable = (Hashtable) (Hashtable) this.m_parameters
					.get(s);
			hashtable.put(new Integer(hashtable.size()), s1);
		} else {
			Hashtable hashtable1 = new Hashtable();
			hashtable1.put(new Integer(0), s1);
			this.m_parameters.put(s, hashtable1);
			this.m_counter += 1;
		}
	}

	public String getParameter(String s) {
		if (s == null)
			throw new IllegalArgumentException(
					"Form's name is invalid or does not exist (1305).");
		Hashtable hashtable = (Hashtable) (Hashtable) this.m_parameters.get(s);
		if (hashtable == null)
			return null;

		return ((String) hashtable.get(new Integer(0)));
	}

	public Enumeration getParameterNames() {
		return this.m_parameters.keys();
	}

	public String[] getParameterValues(String s) {
		if (s == null)
			throw new IllegalArgumentException(
					"Form's name is invalid or does not exist (1305).");
		Hashtable hashtable = (Hashtable) (Hashtable) this.m_parameters.get(s);
		if (hashtable == null)
			return null;
		String[] as = new String[hashtable.size()];
		for (int i = 0; i < hashtable.size(); ++i)
			as[i] = ((String) hashtable.get(new Integer(i)));

		return as;
	}
}