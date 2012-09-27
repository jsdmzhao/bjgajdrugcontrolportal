package com.unis.core.action;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;

public class URLDemo {
	public static void main(String[] args) {

		System.out.println("starting... ");
		int c;

		HttpURLConnection urlcon = null;
		try {
			URL url = new URL("http://www.csdn.net ");
			try {
				urlcon = (HttpURLConnection) url.openConnection();
			} catch (IOException e) {

			}
			System.out.println("the   date   is   : " + new Date(urlcon.getDate()));
			System.out.println("content_type   : " + urlcon.getContentType());
			try {
				InputStream in = urlcon.getInputStream();
				int all = in.available();
				byte[] b = new byte[all];
				// while (((c = in.read()) != -1)) {
				// system.out.print((char) c);
				// }
				in.read(b);
				String webpage = new String(b, "utf-8");

				in.read(b);
				in.close();
				System.out.println(webpage);
			} catch (IOException e) {
				System.out.println(" " + e);
			}

		} catch (MalformedURLException e) {
			System.out.println(" " + e);
		}

	}
}
