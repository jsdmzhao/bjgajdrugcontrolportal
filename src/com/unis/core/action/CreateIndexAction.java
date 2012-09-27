package com.unis.core.action;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


@Controller
@Scope(value="prototype")
public class CreateIndexAction {

	public void createIndexHtml(String urlStr) throws IOException {

		String filDir = "";

		String sysDir = System.getProperty("user.dir");

		URL url = new URL(urlStr);
		URLConnection connection = url.openConnection();

		// 获得该网页的编码
		String encode = connection.getContentType();
		
		String ENCODING = encode.substring(encode.indexOf("charset=") + 8, encode.length());

		// 查InputStreamReader的构造方法，ENCODING为该页面的编码
		BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream(), ENCODING));
		filDir = sysDir.substring(0, sysDir.indexOf("bin"));
		System.out.println(filDir+"webapps\\dcp\\");
		File file = new File(filDir+"webapps\\dcp\\index.html");
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
		if (br != null) {
			String s = null;
			while ((s = br.readLine()) != null) {
				// String sss = new String(s.getBytes("gb2312"),"windows-31J");

				//if (s.indexOf("text/html; charset=") > -1) {
				//	s = "<meta http-equiv=\"Content-Type\" content=\"text/html; charset="
				//			+ ENCODING + "\" />";
				//}
				bw.write(s+"\n");
				bw.flush();
			}
			bw.close();
			br.close();
		}

		System.out.println("生成index.html成功！");
	}

	public static void main(String[] args) throws IOException {
		CreateIndexAction idx = new CreateIndexAction();
		idx.createIndexHtml("http://localhost:8080/dcp");
		
	}
}
